//
//  LHKSlider.h
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/24.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHKSlider : UIView

/** 分界线 */
@property(nonatomic,strong)UIView *linView;
-(instancetype)initWithFrame:(CGRect)frame andNumberBtn:(NSInteger)numberBtn andTitles:(NSArray*)titles;

/** <#type#> */
@property(nonatomic,strong)UIButton *btn;
@end
