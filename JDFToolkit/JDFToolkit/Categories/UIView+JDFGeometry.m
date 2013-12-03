//
//  UIView+JDFGeometry.m
//  JDFToolkit
//
//  Created by Joe Fryer on 25/11/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UIView+JDFGeometry.h"

@implementation UIView (JDFGeometry)

- (void)centerXInSuperview
{
    CGFloat viewWidth = self.frame.size.width;
    CGFloat superviewWidth = self.superview.frame.size.width;
    
    CGRect frame = self.frame;
    frame.origin.x = (superviewWidth - viewWidth) / 2;
    self.frame = frame;
}

- (void)centerYInSuperview
{
    CGFloat viewHeight = self.frame.size.height;
    CGFloat superviewHeight = self.superview.frame.size.height;
    
    CGRect frame = self.frame;
    frame.origin.y = (superviewHeight - viewHeight) / 2;
    self.frame = frame;
}

@end
