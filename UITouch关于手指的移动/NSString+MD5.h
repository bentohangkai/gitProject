//
//  NSString+MD5.h
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/14.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (MD5)
- (NSString *)md5;
@end
