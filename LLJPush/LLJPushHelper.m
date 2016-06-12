//
//  LLJPushHelper.m
//  LLJPush
//
//  Created by Candice on 16/6/12.
//  Copyright © 2016年 Candice. All rights reserved.
//

#import "LLJPushHelper.h"
#import "JPUSHService.h"

@implementation LLJPushHelper

+ (void)setupWithOptinos:(NSDictionary *)launchOptions{
   
    [JPUSHService registerForRemoteNotificationTypes:(UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert) categories:nil];
    
    [JPUSHService setupWithOption:launchOptions appKey:@"88e918f84d64d18a56320312" channel:@"Publish channel" apsForProduction:NO];
}

+ (void)registerDeviceToken:(NSData *)deviceToken{
   
    [JPUSHService registerDeviceToken:deviceToken];
}

+ (void)handleRemoteNotification:(NSDictionary *)userInfo completion:(void (^)(UIBackgroundFetchResult))completion{
   
    [JPUSHService handleRemoteNotification:userInfo];
}

+ (void)showLocalNotificationAtFront:(UILocalNotification *)localNotification{
   
    [JPUSHService showLocalNotificationAtFront:localNotification identifierKey:nil];
}
@end
