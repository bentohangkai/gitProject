//
//  LHKButton.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/12.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "LHKButton.h"

@implementation LHKButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(ctx, 30, -40);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(0, 0) radius:30 startAngle:0 endAngle:M_PI*2 clockwise:0];
    
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
}


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
        self.layer.borderColor = [UIColor redColor].CGColor;
        self.layer.borderWidth = 2;
        
    
    }
    return self;
}

@end
