//
//  ViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//总结 UITouch 手指的在试图上面的移动
//

#import "ViewController.h"

@interface ViewController ()
/** <#type#> */
@property(nonatomic,strong)UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.redView];
    self.automaticallyAdjustsScrollViewInsets = YES;
    
}

-(UIView *)redView{
    if (_redView == nil) {
        _redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        _redView.backgroundColor = [UIColor blueColor];
    }
    return _redView;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    

    
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint prepoint = [touch previousLocationInView:touch.view];
    CGPoint point = [touch locationInView:touch.view];
    NSLog(@"%lf",point.x);
    self.redView.transform = CGAffineTransformTranslate(self.redView.transform, point.x-prepoint.x, point.y-prepoint.y);
}

@end
