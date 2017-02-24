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
#import "ModelVc.h"
#import "ModelAn.h"

@interface Q2DViewController ()
/** mapView */
@property(nonatomic,strong)MapView *mapView;
/**  */
@property(nonatomic,strong)LHKButton *lhkBtn;
@property (weak, nonatomic) IBOutlet UIButton *btn;
/** <#type#> */
@property(nonatomic,strong)ModelAn *model;

@end

@implementation Q2DViewController
- (IBAction)modelClick:(id)sender {
    
    ModelVc *vc = [[ModelVc alloc]init];
//    vc.modalPresentationStyle = UIModalPresentationCustom;
    ModelAn *model = [[ModelAn alloc]init];
    vc.transitioningDelegate = model;
    self.model = model;
    [self presentViewController:vc animated:YES completion:nil];
}
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
    self.navigationItem.title = @"在吗";
    self.navigationController.navigationBar.tintColor= [UIColor blackColor];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    NSLog(@"%@",NSStringFromCGRect(self.btn.frame));
    
    CGRect rect = [self.btn.superview.superview convertRect:self.btn.frame toView:[UIApplication sharedApplication].keyWindow];
    NSLog(@"%@",NSStringFromCGRect(rect));
    
    NSLog(@"%@",self.view.backgroundColor);
}

- (LHKButton *)lhkBtn{
    if (!_lhkBtn) {
        _lhkBtn = [[LHKButton alloc]initWithFrame:CGRectMake(100, 350, 100, 50)];
        
        [_lhkBtn setTitle:@"ok" forState:UIControlStateNormal];
    }
    return _lhkBtn;
}

@end
