//
//  MyNav.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/12.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "MyNav.h"

@interface MyNav ()

@end

@implementation MyNav

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) { // 如果现在push的不是栈底控制器(最先push进来的那个控制器)
        
        viewController.hidesBottomBarWhenPushed = YES;
        
//        //退出账号
//        UIButton *rightBtn = [UIButton buttonWithType:1];
//        rightBtn.frame = CGRectMake(0, 10, 40*RATIO, 22*RATIO);
//        [rightBtn setTintColor:[UIColor whiteColor]];
//        rightBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//        [rightBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//        
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 11 * RATIO - 6 * RATIO, 6 * RATIO, 12 * RATIO)];
//        
//        NSString *fileName = [[NSBundle mainBundle] pathForResource:@"nav_icon_back" ofType:@".png"];
//        
//        imgView.image = [UIImage imageWithContentsOfFile:fileName];
//        [rightBtn addSubview:imgView];
//        
//        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
//        
        
        //        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"icon_arrow_left_white"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        
        //   NSLog(@"能拦截所有push进来的子控制器");
    }
    
    [super pushViewController:viewController animated:YES];
    
}
@end
