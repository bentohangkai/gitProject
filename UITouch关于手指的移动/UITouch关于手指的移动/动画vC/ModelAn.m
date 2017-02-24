//
//  ModelAn.m
//  UITouch关于手指的移动
//
//  Created by liuhangkai on 17/2/20.
//  Copyright © 2017年 liuhangkai. All rights reserved.
//

#import "ModelAn.h"

@implementation ModelAn
-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return self;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return self;
}

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.5f;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // 把 toVC 加入到 containerView
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    // 一些动画要用的的数据
    CGRect finalFrame = [transitionContext finalFrameForViewController:toVC];
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    // 动画过程
    if (toVC.isBeingPresented) {
        toVC.view.frame = CGRectOffset(finalFrame, finalFrame.size.width, 0);
        [UIView animateWithDuration:duration
                         animations:^{
                             toVC.view.frame = finalFrame;
                         }
                         completion:^(BOOL finished) {
                             // 结束后要通知系统
                             [transitionContext completeTransition:YES];
                         }];
    }
    if (fromVC.isBeingDismissed) {
        
        
        [containerView sendSubviewToBack:toVC.view];
        [UIView animateWithDuration:duration
                         animations:^{
                             fromVC.view.frame = CGRectOffset(finalFrame, finalFrame.size.width,0);
                         }
                         completion:^(BOOL finished) {
                             // dismiss 动画添加了手势后可能出现转场取消的状态，所以要根据状态来判定是否完成转场
                             BOOL isComplete = ![transitionContext transitionWasCancelled];
                             [transitionContext completeTransition:isComplete];
                         }];
    }

}
@end
