//
//  TestViewController.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/13.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrolloViewContentSizeContro;
@property (weak, nonatomic) IBOutlet UILabel *lastLabel;
@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
   
    
    self.lastLabel.text = @"成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志成功者的标志";
    self.labelText.text = @"hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello";
    [self.view layoutIfNeeded];

    
    self.height = CGRectGetMaxY(self.labelText.frame)+10;
   
    self.scrolloViewContentSizeContro.constant = self.height;
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

@end
