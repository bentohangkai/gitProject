//
//  AnViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.


// anrp  position的用法


//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "AnViewController.h"
#define SCRREN_WIDTH     [UIScreen mainScreen].bounds.size.width
#define SCRREN_HEIGHT         [UIScreen mainScreen].bounds.size.height

@interface AnViewController ()

/** <#type#> */
@property(nonatomic,strong)CALayer *secLayer;

@end

@implementation AnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.view.layer addSublayer:self.secLayer];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
    
    
    NSCalendar *cander = [NSCalendar currentCalendar];
  NSDateComponents *compents =  [cander components:NSCalendarUnitSecond | NSCalendarUnitMinute | NSCalendarUnitHour fromDate:[NSDate date]];
    
    NSLog(@"%ld--%ld---%ld",compents.second,compents.minute,compents.hour);
    
    _secLayer.transform = CATransform3DRotate(_secLayer.transform, compents.second*M_PI*1.0/30, 0, 0, 1);
    

    
    }

-(void)keyAnimal{
    
}

-(CALayer *)secLayer{
    if (_secLayer == nil) {
        _secLayer = [[CALayer alloc]init];
        _secLayer.frame = CGRectMake(SCRREN_WIDTH*0.5, SCRREN_HEIGHT *0.5, 10, 100);
        _secLayer.backgroundColor = [UIColor redColor].CGColor;
        _secLayer.cornerRadius = 5;
        _secLayer.masksToBounds = YES;
        _secLayer.anchorPoint = CGPointMake(0.5, 1);
        _secLayer.position = CGPointMake(SCRREN_WIDTH*0.5, SCRREN_HEIGHT*0.5);

    }
    return _secLayer;
}

-(void)timeChange{
    
    _secLayer.transform = CATransform3DRotate(_secLayer.transform, M_PI*1.0/30, 0, 0, 1);
    
}
@end
