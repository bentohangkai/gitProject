//
//  NSMutableArray+Extension.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/25.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "NSMutableArray+Extension.h"
#import "ObjcRuntime.h"
#import "MBProgressHUD+MJ.h"

@implementation NSMutableArray (Extension)
+(void)load{
    
    Swizzle(objc_getClass("__NSArrayM"), @selector(lhk_addObject:), @selector(addObject:));
    
    
    Method fromMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(objectAtIndex:));
    Method toMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"), @selector(lxz_objectAtIndex:));
    method_exchangeImplementations(fromMethod, toMethod);

    
}

-(void)lhk_addObject:(id)anObject{
    
    if (anObject == nil) {
        [MBProgressHUD showError:@"数组添加的元素为nil"];
        return;
    }
    [self lhk_addObject:anObject];
}

- (id)lxz_objectAtIndex:(NSUInteger)index {
    if (self.count-1 < index) {
        // 这里做一下异常处理，不然都不知道出错了。
        [MBProgressHUD showError:@"数组越界访问"];
        return @"1234";
        @try {
            return [self lxz_objectAtIndex:index];
        }
        @catch (NSException *exception) {
            // 在崩溃后会打印崩溃信息，方便我们调试。
            NSLog(@"---------- %s Crash Because Method %s  ----------\n", class_getName(self.class), __func__);
            NSLog(@"%@", [exception callStackSymbols]);
            return nil;
        }
        @finally {}
    } else {
        return [self lxz_objectAtIndex:index];
    }
}
@end
