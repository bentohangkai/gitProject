//
//  ThreeVc.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/11.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "ThreeVc.h"

@interface ThreeVc ()
@property (weak, nonatomic) IBOutlet UIButton *switchBtn;

@end

@implementation ThreeVc
- (IBAction)pan:(UIPanGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:sender.view];
    
    
    if (CGRectContainsPoint(self.switchBtn.frame, point)) {
        self.switchBtn.selected = !self.switchBtn.selected;
    }

}
- (IBAction)switchDidClick:(UIButton *)sender {
    sender.selected = !sender.selected;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //
    NSMutableArray *arr = [@[@"1",@"2",@"2",@"2",@"2",@"3",@"3",@"4",@"4",@"6",@"6",@"1",@"2"] mutableCopy];

    
//    NSSet *set = [NSSet setWithArray:arr];
//    
//    NSMutableArray *listArray = [[NSMutableArray alloc]init];
//    for (NSString *string in arr) {
//        if (![listArray containsObject:string]) {
//            [listArray addObject:string];
//        }
//    }
//    NSArray *arrry = [[listArray reverseObjectEnumerator] allObjects];
//    NSLog(@"%@",arrry);
    self.switchBtn.userInteractionEnabled = NO;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
   CGPoint newPoint = [self.view convertPoint:point toView:self.switchBtn];
    NSLog(@"%@",NSStringFromCGPoint(newPoint));
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
