//
//  SecondViewController.m
//  ExamDemo
//
//  Created by qianfeng on 15/8/17.
//  Copyright (c) 2015年 autonavi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}
-(void)createView
{
    UIView *bigView = [Factory createViewWithBackgroundColor:[UIColor orangeColor] frame:CGRectMake(LeftDistance, 100, 100, 100)];
    bigView.tag = 1;
//    bigView.frame = _frame;
    bigView.center = self.view.center;
    bigView.autoresizesSubviews = YES;
    UIView *small = [Factory createViewWithBackgroundColor:[UIColor redColor] frame:CGRectMake( 10, 10, 80, 80)];
//    small.center = bigView.center;
    small.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    [bigView addSubview:small];
    [self.view addSubview:bigView];
    
}
-(void)addTouchAction
{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changViewframe:) name:@"changViewframe" object:nil];
}
-(void)changViewframe:(NSNotification *)sender

{
    UIView *view = [self.view viewWithTag:1];
//    view.width += [[sender.object objectForKey:@"size"]floatValue];
//    view.height+= [[sender.object objectForKey:@"size"]floatValue];
//    [self.view addSubview:view];
    [view setSize:CGSizeMake(100 +10 *[[sender.object objectForKey:@"size"]floatValue], 100 +10*[[sender.object objectForKey:@"size"] floatValue])];
    view.center = self.view.center;
    
    
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
