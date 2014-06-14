//
//  UIView+JDFToolkit.m
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 20/05/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import "UIView+JDFToolkit.h"

@implementation UIView (JDFToolkit)

- (NSArray *)recursiveSubviewsJDF
{
    NSMutableArray *subviews = [NSMutableArray array];
    [subviews addObjectsFromArray:self.subviews];
    for (UIView *subView in self.subviews) {
        [subviews addObjectsFromArray:[subView recursiveSubviewsJDF]];
    }
    return [NSArray arrayWithArray:subviews];
}

@end
