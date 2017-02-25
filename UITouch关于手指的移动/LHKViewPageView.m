//
//  LHKViewPageView.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/24.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "LHKViewPageView.h"
#import "LHKSlider.h"

@interface LHKViewPageView()


/** 菜单栏 */
@property(nonatomic,strong)LHKSlider *slider;

/** 内容试图 */
@property(nonatomic,strong)UIScrollView *contentView;

/** <#type#> */
@property(nonatomic,strong)NSArray *vcs;
@end

@implementation LHKViewPageView


-(instancetype)initWithFrame:(CGRect)frame andVcs:(NSArray<UIViewController *>*)vcs andTitle:(NSArray *)titles{
    if ([super initWithFrame:frame]) {
        self.vcs = vcs;
        self.slider = [[LHKSlider alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, 30) andNumberBtn:vcs.count andTitles:titles];
        self.slider.backgroundColor = [UIColor yellowColor];
        self.contentView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 30, frame.size.width, frame.size.height-30)];
        self.contentView.contentSize = CGSizeMake(vcs.count*frame.size.width, self.contentView.frame.size.height);
        self.contentView.pagingEnabled = YES;
        self.contentView.bounces = NO;
        
        [self addSubview:self.slider];
        [self addSubview:self.contentView];
        
        for (int i = 0 ; i<vcs.count; i++) {
            UIViewController *vc = self.vcs[i];
            vc.view.frame = CGRectMake(i*frame.size.width, 0, frame.size.width, frame.size.height-30);
            [self.contentView addSubview:vc.view];
            
            if (i ==0  || i == 2) {
                vc.view.backgroundColor = [UIColor redColor];
            }
        }
        
    }
    
    
    return self;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"---2---");
}




@end
