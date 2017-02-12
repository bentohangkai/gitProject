//
//  BlackView.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "BlackView.h"

@interface BlackView ()

/** <#type#> */


/** <#type#> */
@property(nonatomic,strong)IBOutlet UIButton *btn11;

@end

@implementation BlackView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@",self.btn11);
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
  CGPoint point1 =  [self convertPoint:point toView:self.btn11];
    
    if( [self.btn11 pointInside:point1 withEvent:event]){
        return self.btn11;
        
    }else{
        return  [super hitTest:point withEvent:event];
    }
    
}
@end
