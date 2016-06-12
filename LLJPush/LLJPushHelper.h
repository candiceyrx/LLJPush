//
//  LLJPushHelper.h
//  LLJPush
//
//  Created by Candice on 16/6/12.
//  Copyright © 2016年 Candice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LLJPushHelper : NSObject

//在应用启动的时候调用
+ (void)setupWithOptinos:(NSDictionary *)launchOptions;

//在appdelegate注册设备处调用
+ (void)registerDeviceToken:(NSData *)deviceToken;

//iOS7以后，才有completion，否则传nil
+ (void)handleRemoteNotification:(NSDictionary *)userInfo completion:(void(^)(UIBackgroundFetchResult))completion;

//显示本地通知在最前面
+ (void)showLocalNotificationAtFront:(UILocalNotification *)localNotification;

@end
