//
//  ViewController.m
//  CustomSingleton
//
//  Created by KentarOu on 2014/10/18.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "ViewController.h"
#import "CustomSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CustomSingleton sharedManager].name = @"kanno";
    NSLog(@"[CustomSingleton sharedManager].name = %@",[CustomSingleton sharedManager].name);
    
    [CustomSingleton sharedManager].name = @"kentarou";
    NSLog(@"[CustomSingleton sharedManager].name = %@",[CustomSingleton sharedManager].name);
    
    
    CustomSingleton *singleton1 = [CustomSingleton new];
    singleton1.name = @"菅野";
    NSLog(@"singleton1.name = %@",singleton1.name);
    
    
    [CustomSingleton sharedManager_upDate:singleton1];
    NSLog(@"[CustomSingleton sharedManager].name = %@",[CustomSingleton sharedManager].name);
    
    CustomSingleton *singleton2 = [CustomSingleton new];
    singleton2.name = @"健太朗";
    NSLog(@"singleton1.name = %@",singleton2.name);
    
    
    [CustomSingleton sharedManager_upDate:singleton2];
    NSLog(@"[CustomSingleton sharedManager].name = %@",[CustomSingleton sharedManager].name);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
