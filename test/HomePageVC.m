//
//  HomePageVC.m
//  test
//
//  Created by Rameshwar Gupta on 25/10/17.
//  Copyright © 2017 Rameshwar Gupta. All rights reserved.
//

#import "HomePageVC.h"
#import "AppConstants.h"
#import "RCGLOBAL.h"
#import "userModal.h"
#import "LHDataManager.h"

@interface HomePageVC (){
    
    UIButton *btnLogout;
    UILabel *lblLoggedIn;
}

@end

@implementation HomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = TRUE;
    self.view.backgroundColor = kCOLOR_WHITE;
    [self  loadHomeConfigView];
    
}

-(void)loadHomeConfigView{
    
     userModal *user=[[LHDataManager sharedObject] userObject];

    lblLoggedIn = [[UILabel alloc]initWithFrame:CGRectMake(20, 120, kSCREEN_WIDTH-40, 60)];
    lblLoggedIn.numberOfLines = 0;
    lblLoggedIn.text= [NSString stringWithFormat:@"Hey, %@ you are successfully logged in the application.", user.strEmailId];
    lblLoggedIn.textColor = kCOLOR_BLACK;
    lblLoggedIn.font = [UIFont fontWithName:kFONT_REGULAR size:17];
    lblLoggedIn.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lblLoggedIn];
    
    btnLogout = [UIButton buttonWithType:UIButtonTypeCustom];
    btnLogout.frame =CGRectMake(20, lblLoggedIn.frame.size.height+lblLoggedIn.frame.origin.y+25, kSCREEN_WIDTH-40, 40);
    [btnLogout setBackgroundColor:kCOLOR_BLACK];
    [btnLogout setTitle:@"Log Out" forState:UIControlStateNormal];
    [btnLogout setTitleColor:kCOLOR_WHITE forState:UIControlStateNormal];
    btnLogout.titleLabel.font = [UIFont fontWithName:kFONT_MEDIUM size:18];
    btnLogout.layer.cornerRadius = 4.0;
    btnLogout.clipsToBounds = TRUE;
    [btnLogout addTarget:self action:@selector(hitLogOut:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - hitLogOut

-(IBAction)hitLogOut:(id)sender{
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:kAPPICATION_TITLE
                                 message:@"Are You Sure Want to Logout!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Yes"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    [self clearAllData];
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    //Add your buttons to alert controller
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}

-(void)clearAllData{
    
    userModal *user=[[LHDataManager sharedObject] userObject];
    [user destroyPreferences];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
