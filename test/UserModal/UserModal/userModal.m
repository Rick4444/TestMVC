//
//  userModal.m
//  test
//
//  Created by Rameshwar Gupta on 25/10/17.
//  Copyright © 2017 Rameshwar Gupta. All rights reserved.
//

#import "userModal.h"
#import "AppConstants.h"

@implementation userModal

-(id) init{
    
    if (self==[super init]) {
        
        
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        
        _strUserId                   =       [defaults objectForKey:kUSER_ID];
        _strEmailId                 =       [defaults objectForKey:kUSER_EMAIL];
        _strPassword               =       [defaults objectForKey:kUSER_PASSWORD];
        
        [defaults synchronize];
        
    }
    
    return  self;
}


-(void)setuserData:(NSDictionary *)dict{
    
    
    _strUserId                   =       [dict objectForKey:kUSER_ID];
    _strEmailId                 =       [dict objectForKey:kUSER_EMAIL];
    _strPassword               =       [dict objectForKey:kUSER_PASSWORD];
    
    DLog(@"user first name is:-%@",_strUserId);
    [self savePreferences];
    
}

-(void)savePreferences{
    
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    
    [defaults setObject:self.strUserId                     forKey:kUSER_ID];
    [defaults setObject:self.strEmailId                   forKey:kUSER_EMAIL];
    [defaults setObject:self.strPassword                  forKey:kUSER_PASSWORD];
   
    [defaults synchronize];
    
}



// destroy the preferences of user

-(void)destroyPreferences{
    
    self.strUserId=nil;
    self.strEmailId=nil;
    self.strPassword=nil;
   
    
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    
    [defaults removeObjectForKey:kUSER_ID];
    [defaults removeObjectForKey:kUSER_EMAIL];
    [defaults removeObjectForKey:kUSER_PASSWORD];
 
    
    [defaults synchronize];
    
    
}


@end
