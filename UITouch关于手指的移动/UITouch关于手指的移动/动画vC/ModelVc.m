//
//  ModelVc.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/20.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "ModelVc.h"
#import "ModelAn.h"

@interface ModelVc ()

@end

@implementation ModelVc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)model:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    NSLog(@"------delloc-----");
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
