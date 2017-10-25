//
//  GLOBALMETHODS.h
//  Nurse Near Me
//
//  Created by Rameshwar on 02/03/17.
//  Copyright © 2017 RG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface RCGLOBAL : NSObject

#pragma mark - Alert Controller
+(void)alertControllerTitle:(NSString *)title msg:(NSString*)msg ok:(NSString *)ok controller:(UINavigationController *)contoller;
+(void)alertControllerONViewWithTitle:(NSString *)title msg:(NSString*)msg ok:(NSString *)ok controller:(UIViewController *)contoller;
+ (BOOL)validationEmail:(NSString *)checkString;
+ (BOOL)networkStatus;

@end
