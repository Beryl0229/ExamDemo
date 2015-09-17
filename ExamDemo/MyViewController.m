//
//  MyViewController.m
//  ExamDemo
//
//  Created by qianfeng on 15/8/17.
//  Copyright (c) 2015年 autonavi. All rights reserved.
//

#import "MyViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FirstViewController *first = [[FirstViewController alloc]init];
    first.tabBarItem.title = @"第一页";
    SecondViewController *second = [[SecondViewController alloc]init];
    second.tabBarItem.title = @"第二页";
    ThirdViewController *third = [[ThirdViewController alloc]init];
    third.tabBarItem.title = @"第三页";
    FourViewController *four = [[FourViewController alloc]init];
    UINavigationController *nvvc = [[UINavigationController alloc]initWithRootViewController:four];
    nvvc.tabBarItem.title = @"第四页";
    Release_Safe(four)
    FiveViewController *five = [[FiveViewController alloc]init];
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:five];
    nvc.tabBarItem.title = @"第五页";
    self.viewControllers = @[first,second,third,nvvc,nvc];
    Release_Safe(five)
    Release_Safe(first)
    Release_Safe(second)
    Release_Safe(third)
    Release_Safe(nvvc)
    Release_Safe(nvc)
                     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
