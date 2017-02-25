//
//  Person+Extension.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/25.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "Person+Extension.h"
#import <objc/runtime.h>

@implementation Person (Extension)

-(void)setSex:(NSString *)sex{
    
    
    objc_setAssociatedObject(self, "sex", sex, OBJC_ASSOCIATION_RETAIN);
    
}

-(NSString *)sex{
    return objc_getAssociatedObject(self, "sex");
}


@end
