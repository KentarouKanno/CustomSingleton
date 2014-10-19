//
//  CustomSingleton.m
//  CustomSingleton
//
//  Created by KentarOu on 2014/10/18.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "CustomSingleton.h"

@implementation CustomSingleton

static CustomSingleton *sharedData_ = nil;


// Simple

//+ (CustomSingleton *)sharedManager
//{
//    if (!sharedData_) {
//        sharedData_ = [CustomSingleton new];
//    }
//    return sharedData_;
//}


// @synchronized  Thread-safe

//+ (CustomSingleton *)sharedManager
//{
//    @synchronized(self){
//        if (!sharedData_) {
//            sharedData_ = [CustomSingleton new];
//        }
//    }
//    return sharedData_;
//}


// dispatch_once_t  Only once

+ (CustomSingleton *)sharedManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedData_ = [CustomSingleton new];
    });
    return sharedData_;
}


// singleton Update
+ (CustomSingleton*)sharedManager_upDate:(CustomSingleton *)newSingleton
{
    sharedData_ = newSingleton;
    return sharedData_;
}


// init
- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
