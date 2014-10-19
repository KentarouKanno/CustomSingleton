//
//  CustomSingleton.h
//  CustomSingleton
//
//  Created by KentarOu on 2014/10/18.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomSingleton : NSObject

+ (CustomSingleton*)sharedManager;
+ (CustomSingleton*)sharedManager_upDate:(CustomSingleton *)newSingleton;

@property (readwrite,nonatomic) NSString *name;

@end
