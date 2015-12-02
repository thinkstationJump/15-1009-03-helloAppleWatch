//
//  ViewController.m
//  helloAppleWatch
//
//  Created by xiaomage on 15/10/9.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
#warning 生命周期的方法调用顺序是从1到10

// 1
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
    }
    return self;
}
// 2
- (void)loadView
{
    [super loadView];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 3
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 4
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 5
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 6
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 7
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
// 8
- (void)viewWillUnload
{
    [super viewWillUnload];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 9
- (void)viewDidUnload
{
    [super viewDidUnload];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}
// 10
- (void)dealloc
{
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}

@end
