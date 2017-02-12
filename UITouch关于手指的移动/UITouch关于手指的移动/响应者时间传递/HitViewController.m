//
//  HitViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//事件传递--首先由application---window ：hitTest 查找最合适的view（userinterface alpha hide）---子view：hitTest---查找最合适的view
//响应者链条-----从最合适的view 响应 touchBegin   ---》 父控件的   ----》传下去-----
//

#import "HitViewController.h"

@interface HitViewController ()

@end

@implementation HitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
