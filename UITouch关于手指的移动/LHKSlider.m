//
//  LHKSlider.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/24.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "LHKSlider.h"

@implementation LHKSlider

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"------");
}

-(instancetype)initWithFrame:(CGRect)frame andNumberBtn:(NSInteger)numberBtn andTitles:(NSArray*)titles{
    _linView = [[UIView alloc]init];
    self = [[super init]initWithFrame:frame];
    if ( self ==nil ) return nil;
    CGFloat y = 0;
    CGFloat w = frame.size.width/numberBtn;
    CGFloat h = frame.size.height;
    for (int i = 0; i<numberBtn; i++) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(i*w, y, w, h)];
        btn.tag = i;
        [btn setTitle:titles[i] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:18];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self addSubview:btn];
        
                [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        

        if (i == 0) {
            
            CGSize size= CGSizeMake(1000, 100);
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            dict[NSFontAttributeName] =[UIFont systemFontOfSize:18];
            CGRect rect1 =  [btn.titleLabel.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
            _linView.frame = CGRectMake(0, 0, rect1.size.width, 1);
            _linView.backgroundColor = [UIColor redColor];
            _linView.center = CGPointMake(btn.titleLabel.center.x, btn.titleLabel.center.y+rect1.size.height*0.5+2);
            [btn addSubview:_linView];
        }
        
        self.btn = btn;

        
            }
    
    
    
    return self;
}

-(void)btnClick:(UIButton *)btn{
    
    CGSize size= CGSizeMake(1000, 100);
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] =[UIFont systemFontOfSize:18];
    CGRect rect1 =  [btn.titleLabel.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    _linView.frame = CGRectMake(0, 0, rect1.size.width, 1);
    _linView.backgroundColor = [UIColor redColor];
    _linView.center = CGPointMake(btn.titleLabel.center.x, btn.titleLabel.center.y+rect1.size.height*0.5+2);
    
}
@end
