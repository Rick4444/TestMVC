//
//  GLOBALMETHODS.m
//  Nurse Near Me
//
//  Created by Rameshwar on 02/03/17.
//  Copyright © 2017 RG. All rights reserved.
//

#import "RCGLOBAL.h"
#import <UIKit/UIKit.h>
#include <sys/utsname.h>
#import <AVFoundation/AVFoundation.h>
#import "Reachability.h"
#import <CoreGraphics/CoreGraphics.h>
#import "AppConstants.h"


@implementation RCGLOBAL

#pragma mark - ALERT CONTROLLERS

#pragma mark - Alert Contoller
+(void)alertControllerTitle:(NSString *)title msg:(NSString*)msg ok:(NSString *)ok controller:(UINavigationController *)contoller
{
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:ok style:UIAlertActionStyleDefault handler:nil];
    
    [alertController addAction:actionOk];
    
    
    [contoller presentViewController:alertController animated:YES completion:nil];
}



#pragma mark - Alert Contoller ON View
+(void)alertControllerONViewWithTitle:(NSString *)title msg:(NSString*)msg ok:(NSString *)ok controller:(UIViewController *)contoller
{
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:ok style:UIAlertActionStyleDefault handler:nil];
    
    [alertController addAction:actionOk];
    
    
    [contoller presentViewController:alertController animated:YES completion:nil];
}


#pragma mark - validationEmail
+(BOOL)validationEmail:(NSString *)checkString{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}
#pragma mark - validateMobileNumber
+(BOOL)validateMobileNumber:(NSString*)number{
    NSString *numberRegEx = @"[0-9]{10}";
    NSPredicate *numberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numberRegEx];
    if ([numberTest evaluateWithObject:number] == YES)
        return TRUE;
    else
        return FALSE;
}
#pragma mark - validatePinCode


#pragma mark - reachability .......
+(BOOL)networkStatus
{
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    
    return networkStatus;
}


@end
