//
//  LHDataManager.h
//  EventHang
//
//  Created by Rameshwar Gupta on 21/08/15.
//  Copyright (c) 2015 123. All rights reserved.
//

#import <Foundation/Foundation.h>

@class userModal;

@interface LHDataManager : NSObject{
    
    userModal *_user;
}

+(LHDataManager*) sharedObject;

// Code to create singleton object for GO2User

-(userModal*)userObject;


@end
