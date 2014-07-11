//
//  UIViewController+JDFTransitionAdditions.m
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 29/05/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import "UIViewController+JDFTransitionAdditions.h"

@implementation UIViewController (JDFTransitionAdditions)

- (void)jdf_transitionFromViewController:(UIViewController *)outgoingViewController toViewController:(UIViewController *)destinationViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion
{
    [UIView transitionWithView:outgoingViewController.view.window duration:duration options:options animations:^{
        BOOL oldState = [UIView areAnimationsEnabled];
        [UIView setAnimationsEnabled:NO];
        outgoingViewController.view.window.rootViewController = destinationViewController;
        [UIView setAnimationsEnabled:oldState];
    } completion:completion];
}

@end
