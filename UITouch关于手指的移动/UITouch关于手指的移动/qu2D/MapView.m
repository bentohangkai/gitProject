//
//  MapView.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "MapView.h"

@interface MapView ()
/** pre */
@property(nonatomic,assign)CGPoint prePoint ;
/** <#type#> */
@property(nonatomic,assign)CGPoint nexPoint ;

/** <#type#> */
@property(nonatomic,strong)UIBezierPath *besize;

/** <#type#> */
@property(nonatomic,strong)NSMutableArray<UIBezierPath *> *datas;
@end


@implementation MapView
-(NSMutableArray *)datas{
    if (_datas == nil) {
        _datas = [NSMutableArray array];
    }
    return _datas;
}
-(void)setProgressValue:(CGFloat)progressValue{
    _progressValue = progressValue;
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect{
    
    //方式一  uicontextRef
//    [self Draw1Style1];
    
    //方式二
//    [self Draw2Style2];
    //方式三 Bese曲线
//    [self DrawBese];
//    [self drawPrgressView];
    
//    [self drawArc4];
   
    
    
}
-(void)drawArc4{
    [_besize stroke];
    [self.datas enumerateObjectsUsingBlock:^(UIBezierPath * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj stroke];
    }];
}
-(void)drawArc4:(CGPoint )prePoint withPoint:(CGPoint)nextPoint{
    [self setNeedsDisplay];
}
-(void)drawPrgressView{
    UIBezierPath *path = [UIBezierPath bezierPath];
    NSLog(@"%lf",_progressValue);
    [path addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:_progressValue*M_PI*2  clockwise:YES];
    [[UIColor redColor]set];
    [path stroke];
}


-(void)DrawBese{
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(100, 100)];
    [path1 setLineWidth:10];
    [[UIColor blueColor]set];
    [path1 addLineToPoint:CGPointMake(10, 10)];
    
   
    [path1 stroke];
    
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    
         [path2 addArcWithCenter:CGPointMake(100, 100) radius:50 startAngle:0 endAngle:M_2_PI clockwise:YES];
    [path2 stroke];
    
    
    

}
-(void)Draw1Style1{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, 10, 10);

    CGContextAddLineToPoint(ctx, 50, 50);
    [[UIColor redColor] set];
    CGContextSetLineWidth(ctx, 2);
    
    
    CGContextStrokePath(ctx);

    
    //画圆弧
    CGContextAddArc(ctx, 100, 100, 20, 0, M_2_PI, 1);
    
    CGContextStrokePath(ctx);
    
}
-(void)Draw2Style2{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 10, 10);
    CGPathAddLineToPoint(path, NULL, 100, 100);
     CGContextAddPath(ctx, path);
    CGContextStrokePath(ctx);
    CFRelease(path);
    
    
    CGMutablePathRef path1 = CGPathCreateMutable();

    CGPathAddArc(path1, NULL, 100, 100, 20, 0, M_2_PI, 1);

    CGContextAddPath(ctx, path1);
    
        CGContextStrokePath(ctx);
    CFRelease(path1);
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
  
    [_besize addLineToPoint:[touch locationInView:touch.view]];
    
    [self setNeedsDisplay];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];

    _besize= [UIBezierPath bezierPath];
    [_besize moveToPoint:[touch locationInView:touch.view]];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.datas addObject:_besize];

}
@end
