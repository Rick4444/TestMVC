//
//  ViewController.m
//  test
//
//  Created by Rameshwar Gupta on 25/10/17.
//  Copyright © 2017 Rameshwar Gupta. All rights reserved.
//

#import "ViewController.h"
#import "AppConstants.h"
#import "RCGLOBAL.h"
#import "userModal.h"
#import "HomePageVC.h"


@interface ViewController ()<UITextFieldDelegate>{
    
    UITextField *txtPassword;
    UITextField *txtEmailId ;
    
    UIButton *btnLogin;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Load UI
    
    [self loadConfigUI];
}

#pragma mark - loadConfigUI

-(void)loadConfigUI{
    
     txtEmailId = [[UITextField alloc]initWithFrame:CGRectMake(20, 120, kSCREEN_WIDTH-40, 40)];
    txtEmailId.placeholder = @"Username";
  //  txtEmailId.textAlignment = NSTextAlignmentCenter;
    txtEmailId.textColor = kCOLOR_BLACK;
    txtEmailId.font = [UIFont fontWithName:kFONT_REGULAR size:18];
    txtEmailId.layer.cornerRadius = 4.0;
    txtEmailId.clipsToBounds = TRUE;
    txtEmailId.layer.borderColor =kCOLOR_GRAY.CGColor;
    txtEmailId.layer.borderWidth = 1.0;
    txtEmailId.keyboardAppearance = UIKeyboardAppearanceDark;
    txtEmailId.delegate = self;
    txtEmailId.autocorrectionType = UITextAutocorrectionTypeNo;
    txtEmailId.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:txtEmailId];
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    txtEmailId.leftView = paddingView;
    txtEmailId.leftViewMode = UITextFieldViewModeAlways;
    
    
    txtPassword = [[UITextField alloc]initWithFrame:CGRectMake(20, txtEmailId.frame.size.height+txtEmailId.frame.origin.y+15, kSCREEN_WIDTH-40, 40)];
    txtPassword.placeholder = @"Password";
    txtPassword.textColor = kCOLOR_BLACK;
    txtPassword.font = [UIFont fontWithName:kFONT_REGULAR size:18];
    txtPassword.layer.cornerRadius = 4.0;
    txtPassword.clipsToBounds = TRUE;
    txtPassword.layer.borderColor =kCOLOR_GRAY.CGColor;
    txtPassword.layer.borderWidth = 1.0;
    txtPassword.secureTextEntry = TRUE;
    txtPassword.keyboardAppearance = UIKeyboardAppearanceDark;
    txtPassword.delegate = self;
    [self.view addSubview:txtPassword];
    
    UIView *paddingPasswordView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    txtPassword.leftView = paddingPasswordView;
    txtPassword.leftViewMode = UITextFieldViewModeAlways;
    
    
    btnLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    btnLogin.frame =CGRectMake(20, txtPassword.frame.size.height+txtPassword.frame.origin.y+25, kSCREEN_WIDTH-40, 40);
    [btnLogin setBackgroundColor:kCOLOR_BLACK];
    [btnLogin setTitle:@"LOGIN" forState:UIControlStateNormal];
    [btnLogin setTitleColor:kCOLOR_WHITE forState:UIControlStateNormal];
    btnLogin.titleLabel.font = [UIFont fontWithName:kFONT_MEDIUM size:18];
    btnLogin.layer.cornerRadius = 4.0;
    btnLogin.clipsToBounds = TRUE;
    [btnLogin addTarget:self action:@selector(hitLogin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Text Field Delegates

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return TRUE;
}

#pragma mark - hitLogin

-(IBAction)hitLogin:(id)sender{
    
    if ([txtEmailId.text containsString:@" "] == TRUE) {
        
        [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:@"Username should not contain whitespaces." ok:kOK controller:self.navigationController];
        return;
    }
    
    if ([txtPassword.text containsString:@" "] == TRUE) {
        
        [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:@"Password should not contain whitespaces." ok:kOK controller:self.navigationController];
        return;
    }
    
    if (txtEmailId.text.length>3 && txtPassword.text.length>3) {
        
//         BOOL validMail = [RCGLOBAL validationEmail:txtEmailId.text];
//
//        if (validMail) {
        
            BOOL network = [RCGLOBAL networkStatus];
            
            if (network) {
                
                [self hitLogin];
                
            }
            else
            {
                kNETWORK_PROBLEM;
            }
//        }
//        else{
//
//            [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:kEmail_Validate ok:kOK controller:self.navigationController];
//            return;
//        }
        
    }
    else{
        
        if (txtEmailId.text.length <4) {
            
            [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:@"Username should be of atleast 4 characters." ok:kOK controller:self.navigationController];
            return;
            
        }
        else
        if (txtPassword.text.length <4){
            
            [RCGLOBAL alertControllerTitle:kAPPICATION_TITLE msg:@"Password should be of atleast 4 characters." ok:kOK controller:self.navigationController];
            return;
            
        }
    }
    
}

-(void)hitLogin{
    
    NSMutableDictionary *dict  = [[NSMutableDictionary alloc]init];
    
    [dict setValue:txtEmailId.text forKey:kUSER_EMAIL];
    [dict setValue:txtPassword.text forKey:kUSER_PASSWORD];
    [dict setValue:@"24" forKey:kUSER_ID];
    
    userModal* user_detail = [[userModal alloc] init];
    
    [user_detail setuserData:dict];
    
    txtEmailId.text = @"";
    txtPassword.text = @"";
    [self.view endEditing:TRUE];
    
    HomePageVC *HPVC = [[HomePageVC alloc]init];
    [self.navigationController pushViewController:HPVC animated:YES];
}
@end
