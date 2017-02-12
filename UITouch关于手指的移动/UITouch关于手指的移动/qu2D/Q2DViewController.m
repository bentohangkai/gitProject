//
//  Q2DViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "Q2DViewController.h"
#import "MapView.h"
#import "LHKButton.h"

@interface Q2DViewController ()
/** mapView */
@property(nonatomic,strong)MapView *mapView;
/**  */
@property(nonatomic,strong)LHKButton *lhkBtn;

@end

@implementation Q2DViewController
- (IBAction)ProgressViewClick:(UISlider *)sender {
    self.mapView.progressValue = sender.value;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.mapView = [[MapView alloc]initWithFrame:CGRectMake(0, 60, 300, 300)];
    self.mapView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.mapView];
    self.hidesBottomBarWhenPushed = YES;
    [self.view addSubview:self.lhkBtn];
}

- (LHKButton *)lhkBtn{
    if (!_lhkBtn) {
        _lhkBtn = [[LHKButton alloc]initWithFrame:CGRectMake(100, 350, 100, 50)];
        
        [_lhkBtn setTitle:@"ok" forState:UIControlStateNormal];
    }
    return _lhkBtn;
}

@end
