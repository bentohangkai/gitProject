//
//  ThreeView.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/20.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "ThreeView.h"

@implementation ThreeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor redColor];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
   
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(100, 20)];
    [path addLineToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(20, 100)];
    [path closePath];
    
    
    
//    CAShapeLayer *shape = [CAShapeLayer layer];
//    shape.path = path.CGPath;
//    self.layer.mask = shape;
//    
    
}

-(void)drawRect:(CGRect)rect{
//    UIBezierPath *mPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 15, 200, 200) cornerRadius:30];
//    [mPath4 fill];
    
//    UIBezierPath *mPath5 =[UIBezierPath bezierPathWithRoundedRect:CGRectMake(250, 45, 40, 40)
//                                                byRoundingCorners:UIRectCornerTopLeft
//                                                      cornerRadii:CGSizeMake(10, 10)];
//    
//    [mPath5 stroke];
    
    
//    UIBezierPath *mPath6 = [UIBezierPath bezierPath];
//    [mPath6 moveToPoint:CGPointMake(10,260)];
//    [mPath6 addQuadCurveToPoint:CGPointMake(200,260) controlPoint:CGPointMake(85, 240)];
//    [mPath6 setLineWidth:3];
//    [mPath6 stroke];

    UIBezierPath *mPath7 = [UIBezierPath bezierPath];
    [mPath7 moveToPoint:CGPointMake(10,290)];
    [mPath7 addCurveToPoint:CGPointMake(300, 290)
              controlPoint1:CGPointMake(50, 270)
              controlPoint2:CGPointMake(140, 340)];
    [mPath7 stroke];
}

@end
