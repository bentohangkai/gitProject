//
//  ViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//总结 UITouch 手指的在试图上面的移动
//

#import "ViewController.h"
#import "HitViewController.h"
#import "AnViewController.h"
#import "Q2DViewController.h"

@interface ViewController ()

/** <#type#> */
@property(nonatomic,strong)UIView *redView;
/** uibutton */
@property(nonatomic,strong)UIButton *hitBtn;

/** 动画 */
@property(nonatomic,strong)UIButton *anBtn;
/** qu2D */
@property(nonatomic,strong)UIButton *qu2D;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.redView];
    self.automaticallyAdjustsScrollViewInsets = YES;
    [self.view addSubview:self.hitBtn];
    [self.view addSubview:self.anBtn];
    [self.view addSubview:self.qu2D];
    
}

-(UIButton *)hitBtn{
    if (_hitBtn == nil) {
        _hitBtn = [[UIButton alloc]initWithFrame:CGRectMake(200, 100, 100, 50)];
        [_hitBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_hitBtn setTitle:@"响应者时间传递" forState:UIControlStateNormal];
        [_hitBtn addTarget:self action:@selector(hitBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _hitBtn;
}
-(UIButton *)qu2D{
    if (_qu2D == nil) {
        _qu2D = [[UIButton alloc]initWithFrame:CGRectMake(200 , 200, 100, 50)];
        [_qu2D setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_qu2D setTitle:@"qu2D" forState:UIControlStateNormal];
        [_qu2D addTarget:self action:@selector(qu2DClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _qu2D;
}



-(void)qu2DClick{

    Q2DViewController *q2dVc = [Q2DViewController new];
    
    [self.navigationController pushViewController:q2dVc animated:YES];
}

-(UIButton *)anBtn{
    if (_anBtn == nil) {
        _anBtn = [[UIButton alloc]initWithFrame:CGRectMake(300, 100, 100, 50)];
        [_anBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_anBtn setTitle:@"动画按钮" forState:UIControlStateNormal];
        [_anBtn addTarget:self action:@selector(anBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _anBtn;
}


-(UIView *)redView{
    if (_redView == nil) {
        _redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        _redView.backgroundColor = [UIColor blueColor];
    }
    return _redView;
}

-(void)anBtnClick{
    
    [self.navigationController pushViewController:[AnViewController new] animated:YES];
    
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint prepoint = [touch previousLocationInView:self.redView];
    CGPoint point = [touch locationInView:self.redView];
   
    self.redView.transform = CGAffineTransformTranslate(self.redView.transform, point.x-prepoint.x, point.y-prepoint.y);
}


-(void)hitBtnClick{
    [self.navigationController pushViewController:[HitViewController new] animated:YES];
}
@end
