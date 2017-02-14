//
//  ViewController.m
//  标签自动换行
//
//  Created by 我是五高你敢信 on 2017/2/14.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import "ViewController.h"
#import "LHCTagsView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[@"Java",@"swift",@"objective-C",@"Php",@"C++",@"c",@"basic",@"Debug",@"SourceControl",@"Navigate",@"Window"];
    LHCTagsView *view = [[LHCTagsView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 300) tags:array];
    [self.view addSubview:view];
}



@end
