
//
//  FirstViewController.m
//  ExamDemo
//
//  Created by qianfeng on 15/8/17.
//  Copyright (c) 2015年 autonavi. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
{
    UISlider *_slider;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)createView
{
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(LeftDistance, 100,self.view.width - 2 *LeftDistance ,Default)];
    _slider.minimumValue = 1;
    _slider.maximumValue = 10;
    [_slider addTarget:self action:@selector(toNextViewController) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];

}
-(void)toNextViewController
{
//    SecondViewController *svc = [self.tabBarController.viewControllers objectAtIndex:1 ];
//    CGRect frame = svc.frame;
//    frame.size.width +=_slider.value;
//    frame.size.height += _slider.value;
////    svc.frame = frame;
////    [[svc.view viewWithTag:1]setFrame:frame];
    NSDictionary *dict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSString stringWithFormat:@"%f",_slider.value],@"size", nil];
//    [[NSNotificationCenter defaultCenter]postNotificationName:@"changViewframe"object: userInfo:];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"changViewframe" object:dict];
    
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
