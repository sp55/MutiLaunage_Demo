//
//  AppDelegate.h
//  MutiLaunage_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//


//封装了一个宏 用来方便输入文字--实际是文字对应的key
#define CustomStr(key) [(AppDelegate *)[[UIApplication sharedApplication] delegate] showText:(key)];



#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property(strong,nonatomic) NSString *lan; //用来保存选择的语言

-(NSString *)showText:(NSString *)key;  //用来替代以往的 NSString 方法

@end

