//
//  InterfaceController.m
//  helloAppleWatch WatchKit 1 Extension
//
//  Created by xiaomage on 15/10/9.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "InterfaceController.h"
/*
 苹果表应用的架构分为三部分:
 1.iOS app
 2.watchKit Extension
 3.WatchKit App
 
 ----------------------
 1和2是应用扩展关联的
 2和3是通过watchKit关联的
 -----------------------
 
 1.iOS应用看起来只是一个空壳程序
 2.watchExtension里面有所有与watchapp相关的代码,但是WK控件的添加与扩展是无关的
 3.watchApp只有1个storyboard,只负责添加布局相关的控件和界面,代码与它毫无关系
 4.图片资源存储地点在3个部分中都有
 ------------------------
 出现的意义:
 1.开发规则
 很多公司:纯代码
 苹果表的应用必须使用storyboard进行开发(划时代的)
 2.核心转移
 苹果表出现前:所有的开发,都是围绕我们手机app进行的
 现在:iWatch相关的开发,手机app只是辅助作用,这是一种开发技术核心的一种转移.(OS2更加的独立)
 
 -------------------------------
 OS1时代iWatch开发总结:
 1.所有的操作都是在手机中完成(通过应用扩展),苹果表的界面跳转,信息展示都是通过手机中的应用扩展来传递信息和操作信号来完成
 2.同理:在苹果表上的所有操作,也是将信息传递给应用扩展,在手机中完成处理
 3.所有的业务逻辑处理都是在应用扩展中
 
 
 */

@interface InterfaceController()

@end


@implementation InterfaceController

/*
 InterfaceController生命周期(方法调用是从1-3)
 
 1.awakeWithContext 相当于awakeFromNib/viewDieload
 
 2.willActivate ->viewWillAppear
 
 3.didDeactivate ->viewDidDisAppear
 
 */

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
}

@end



