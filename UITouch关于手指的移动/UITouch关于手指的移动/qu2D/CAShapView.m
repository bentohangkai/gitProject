//
//  CAShapView.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/12.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "CAShapView.h"

@implementation CAShapView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)awakeFromNib{
    
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor  blueColor];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(0  , 0) radius:25 startAngle:0 endAngle:M_PI clockwise:YES];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path =path.CGPath;
    shapeLayer.lineWidth = 5;
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    self.layer.mask = shapeLayer;

}

@end
