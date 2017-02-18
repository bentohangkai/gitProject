//
//  HitButton.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/15.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "HitButton.h"

@implementation HitButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.zhanshiBtn = [[UIButton alloc]init];
        self.zhanshiBtn.backgroundColor = [UIColor redColor];
        self.zhanshiBtn.frame = CGRectMake(0, 0, 100, 100);
        
        self.zhanshiBtn.center = CGPointMake(50, -50);
        [self addSubview:self.zhanshiBtn];
    }
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.zhanshiBtn = [[UIButton alloc]init];
    self.zhanshiBtn.backgroundColor = [UIColor redColor];
    [self.zhanshiBtn addTarget:self action:@selector(zhanshiBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.zhanshiBtn.frame = CGRectMake(0, 0, 100, 100);
    self.zhanshiBtn.center = CGPointMake(50, -50);
    [self addSubview:self.zhanshiBtn];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint curP = [touch locationInView:self];
    CGPoint preP = [touch previousLocationInView:self];
    CGPoint center = self.center;
    center.x +=curP.x-preP.x;
    center.y+=curP.y-preP.y;
    self.center = center;
}
-(void)layoutSubviews{
    [super layoutSubviews];
 }
-(void)zhanshiBtnClick{
    NSLog(@"---zhanshiBtnClick-----");
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
  
    CGPoint point1 =  [self convertPoint:point toView:self.zhanshiBtn];
    NSLog(@"%@",NSStringFromCGPoint(point1));
    
    
    if ([self.zhanshiBtn pointInside:point1 withEvent:event]) {
        return self.zhanshiBtn;
    }
    else{
        return [super hitTest:point withEvent:event];
    }
}

@end
