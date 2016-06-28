//
//  ViewController.m
//  MutiLaunage_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/0ae9dca9a75d
//多语言

#import "ViewController.h"

#import "AppDelegate.h"
#define ShowText(str) [self customLocalizableStr:(str)];



@interface ViewController ()
@property (strong,nonatomic) NSString *stringPath;

@property (strong,nonatomic) AppDelegate * appDelegate;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

}
//英文
- (IBAction)englishAction:(UIButton *)sender {
    _appDelegate.lan = @"en";
    _textLabel.text = CustomStr(@"showText");
}

//简体中文
- (IBAction)simpleAction:(UIButton *)sender {
    _appDelegate.lan =@"zh-Hans";
    _textLabel.text = CustomStr(@"showText");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
