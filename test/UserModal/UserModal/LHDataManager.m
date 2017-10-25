//
//  LHDataManager.m
//  EventHang
//
//  Created by Rameshwar Gupta on 21/08/15.
//  Copyright (c) 2015 123. All rights reserved.
//

#import "LHDataManager.h"
#import "userModal.h"


static LHDataManager *gDataMgr= nil;
@implementation LHDataManager

+(LHDataManager*) sharedObject{
    
    if (!gDataMgr) {
        gDataMgr=[[LHDataManager alloc]init];
    }
    return gDataMgr;
}

#pragma mark -- Code to create the object of an object class

-(userModal*) userObject{
    
    if (_user.strUserId==nil) {
        _user=nil;
    }
    if (_user==Nil) {
        _user=[[userModal alloc]init];
    }
    
    return _user;
}



@end
