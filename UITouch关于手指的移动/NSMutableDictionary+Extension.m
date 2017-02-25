//
//  NSMutableDictionary+Extension.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/25.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "NSMutableDictionary+Extension.h"
#import "MBProgressHUD+MJ.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (Extension)

+ (void)load {
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(lhk_setValue:forKey:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSDictionaryM"), @selector(setValue:forKey:));
    method_exchangeImplementations(fromMethod, toMethod);
}

-(void)lhk_setValue:(id)value forKey:(NSString *)key{
    
    if (value == nil) {
        [MBProgressHUD showError:@"字典添加的value不能为空"];
        return ;
    }
    [self lhk_setValue:value forKey:key];
    
    
    
}


@end
