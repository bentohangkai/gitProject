//
//  NSString+MD5.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/14.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "NSString+MD5.h"

@implementation NSString (MD5)

- (NSString *)md5
{
    const char* character = [self UTF8String];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(character, strlen(character), result);
    
    NSMutableString *md5String = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
    {
        [md5String appendFormat:@"%02x",result[i]];
    }
    
    return md5String;
}

@end
