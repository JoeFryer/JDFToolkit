//
//  UIViewController+JDFTransitionAdditions.h
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 29/05/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (JDFTransitionAdditions)

- (void)jdf_transitionFromViewController:(UIViewController *)outgoingViewController toViewController:(UIViewController *)destinationViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion;

@end
