//
//  AppDelegate.m
//  WP
//
//  Created by apple on 15/9/11.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import "AppDelegate.h"
#import "WPLoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window = window;
    [self.window makeKeyAndVisible];
    
    WPLoginViewController *login = [[WPLoginViewController alloc] init];
    window.rootViewController = login;
    
    
    return YES;
}


@end
