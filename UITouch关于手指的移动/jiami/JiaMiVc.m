//
//  JiaMiVc.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/24.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "JiaMiVc.h"

@interface JiaMiVc ()

@end

@implementation JiaMiVc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //[self jiami1];
//    [self jiami2];
    
    //模拟服务器的交互
    [self serverJiMi];
}

- (void)serverJiMi {
    
    //原始数据
    NSString *originalString = @"shenmikaishidde第一断事案件";
      NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
    
     NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    
     NSLog(@"解密后:%@----", [RSAEncryptor decryptString:encryptStr privateKey:@"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAOIkcLLYsqBPCuT0aKyqZEwb6law3iDz5GJlybImotltn+0n146QB+y2aQ5jAMEMrcFIF4p9UrrMM7zk4oKNpfJa9qaSPC4xbiVj6HuUD/F0x6zZiri9dWwVs+bumizOXJY9YvhtXIQDkvR+FReHu15F0MyIMsl3fCy+jT2G3G45AgMBAAECgYEAnddPbhWAQBJLiVjqgrH/hXvqiY2zzQ5OdzuSly0Od3JjsNUhSFlRnrAHDcqeaSBfWsvl2nz0tHr5FbwwOW2CyCDGdGCG/zRrnRYm3AeUOMv0r+gZJZUzvF2cbMHxK0v4S7jrsgziwrQ+vL+y7nxbZF9NJxXLpkN1EYtG85WUhHECQQD92xCdtbSWBAb8YlvjfURq+hfqNEQus++zBna3kfgd3yz25sUIZuMKKYqLu20x0k/K7/0kPbaou0ceQl+y6EcFAkEA5A1yvJHNxqBBnmiw3C9Y8F1ERiOOm3mOgrI3NnS+IfjayDK5hDeHmvlmdpX1+03RM0BcwgkkYrYlaEexr3yIpQJAQuYTR+yVzZ78FFD7dEUT3blQyhjCCyjCN4Sxjoj6QS0KVXrVW/R5SrlN2KspCKMrAgkixgU5eNf50wCc5bIO3QJBAJ0mKz+IVb2e5zjquZ0xP197VbXjgLzgmfS0LFnpPrAYVWMJmU9kGJ0RaaskEXqYGCXyHzlSpXEkRUjDxsy/y0UCQAMlb0E8ZNPy0KC8MHZcdSHynJ8xuumrSlgvpFNDCdkiazwqyhzLUNvxYuwbeXAREjcDC5OeLw8wsjlvxEwl18w="]);
    
    
    
}


-(void)jiami2{
    
    //原始数据
    NSString *originalString = @"shenmikaishidde第一断事案件";
    
    //使用.der和.p12中的公钥私钥加密解密
    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12" ofType:nil];
    
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@"123456"]);
    
    
    
}
-(void)jiami1{
    
    NSString *originalString = @"liuhangkai-----!";
    
    //使用字符串格式的公钥私钥加密解密
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDiJHCy2LKgTwrk9GisqmRMG+pWsN4g8+RiZcmyJqLZbZ/tJ9eOkAfstmkOYwDBDK3BSBeKfVK6zDO85OKCjaXyWvamkjwuMW4lY+h7lA/xdMes2Yq4vXVsFbPm7poszlyWPWL4bVyEA5L0fhUXh7teRdDMiDLJd3wsvo09htxuOQIDAQAB"];
    
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@----", [RSAEncryptor decryptString:encryptStr privateKey:@"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAOIkcLLYsqBPCuT0aKyqZEwb6law3iDz5GJlybImotltn+0n146QB+y2aQ5jAMEMrcFIF4p9UrrMM7zk4oKNpfJa9qaSPC4xbiVj6HuUD/F0x6zZiri9dWwVs+bumizOXJY9YvhtXIQDkvR+FReHu15F0MyIMsl3fCy+jT2G3G45AgMBAAECgYEAnddPbhWAQBJLiVjqgrH/hXvqiY2zzQ5OdzuSly0Od3JjsNUhSFlRnrAHDcqeaSBfWsvl2nz0tHr5FbwwOW2CyCDGdGCG/zRrnRYm3AeUOMv0r+gZJZUzvF2cbMHxK0v4S7jrsgziwrQ+vL+y7nxbZF9NJxXLpkN1EYtG85WUhHECQQD92xCdtbSWBAb8YlvjfURq+hfqNEQus++zBna3kfgd3yz25sUIZuMKKYqLu20x0k/K7/0kPbaou0ceQl+y6EcFAkEA5A1yvJHNxqBBnmiw3C9Y8F1ERiOOm3mOgrI3NnS+IfjayDK5hDeHmvlmdpX1+03RM0BcwgkkYrYlaEexr3yIpQJAQuYTR+yVzZ78FFD7dEUT3blQyhjCCyjCN4Sxjoj6QS0KVXrVW/R5SrlN2KspCKMrAgkixgU5eNf50wCc5bIO3QJBAJ0mKz+IVb2e5zjquZ0xP197VbXjgLzgmfS0LFnpPrAYVWMJmU9kGJ0RaaskEXqYGCXyHzlSpXEkRUjDxsy/y0UCQAMlb0E8ZNPy0KC8MHZcdSHynJ8xuumrSlgvpFNDCdkiazwqyhzLUNvxYuwbeXAREjcDC5OeLw8wsjlvxEwl18w="]);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
