//
//  userModal.h
//  test
//
//  Created by Rameshwar Gupta on 25/10/17.
//  Copyright © 2017 Rameshwar Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface userModal : NSObject

@property(nonatomic, retain)NSString *strEmailId;
@property(nonatomic, retain)NSString *strPassword;
@property(nonatomic, retain)NSString *strUserId;

//save user preferences for automatic login

-(void)savePreferences;

// method to set user data;

-(void)setuserData:(NSDictionary *)dict;

// Destroy the data of current user

-(void) destroyPreferences;


@end
