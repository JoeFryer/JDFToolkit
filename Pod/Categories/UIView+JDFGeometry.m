//
//  UIView+JDFGeometry.m
//  JDFToolkit
//
//  Created by Joe Fryer on 25/11/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UIView+JDFGeometry.h"

@implementation UIView (JDFGeometry)

#pragma mark - Convenience Accessors

- (CGFloat)frameX
{
    return self.frame.origin.x;
}

- (CGFloat)frameY
{
    return self.frame.origin.y;
}

- (CGFloat)frameWidth
{
    return self.frame.size.width;
}

- (CGFloat)frameHeight
{
    return self.frame.size.height;
}

- (void)setFrameX:(CGFloat)frameX
{
    CGRect frame = self.frame;
    frame.origin.x = frameX;
    self.frame = frame;
}

- (void)setFrameY:(CGFloat)frameY
{
    CGRect frame = self.frame;
    frame.origin.y = frameY;
    self.frame = frame;
}

- (void)setFrameWidth:(CGFloat)frameWidth
{
    CGRect frame = self.frame;
    frame.size.width = frameWidth;
    self.frame = frame;
}

- (void)setFrameHeight:(CGFloat)frameHeight
{
    CGRect frame = self.frame;
    frame.size.height = frameHeight;
    self.frame = frame;
}


#pragma mark - Convenience frame manipulation

/* Deprecated */
- (void)centerXInSuperview
{
    [self centerHorizontallyInSuperview];
}

/* Deprecated */
- (void)centerYInSuperview
{
    [self centerVerticallyInSuperview];
}

- (void)centerInSuperview
{
    [self centerHorizontallyInSuperview];
    [self centerVerticallyInSuperview];
}

- (void)centerHorizontallyInSuperview
{
    CGFloat viewWidth = self.frame.size.width;
    CGFloat superviewWidth = self.superview.frame.size.width;
    
    CGRect frame = self.frame;
    frame.origin.x = (superviewWidth - viewWidth) / 2;
    self.frame = frame;
}

- (void)centerVerticallyInSuperview
{
    CGFloat viewHeight = self.frame.size.height;
    CGFloat superviewHeight = self.superview.frame.size.height;
    
    CGRect frame = self.frame;
    frame.origin.y = (superviewHeight - viewHeight) / 2;
    self.frame = frame;
}

- (void)setHorizontalCentrePoint:(CGFloat)xCentre
{
    CGRect frame = self.frame;
    frame.origin.x = (self.frame.size.width / (-2)) + xCentre;
    self.frame = frame;
}

- (void)setVerticalCentrePoint:(CGFloat)yCentre
{
    CGRect frame = self.frame;
    frame.origin.y = (self.frame.size.height / (-2)) + yCentre;
}

- (void)moveViewXBy:(CGFloat)xDelta
{
    CGRect frame = self.frame;
    frame.origin.x += xDelta;
    self.frame = frame;
}

- (void)moveViewYBy:(CGFloat)yDelta
{
    CGRect frame = self.frame;
    frame.origin.y += yDelta;
    self.frame = frame;
}

- (void)changeViewWidthBy:(CGFloat)widthDelta
{
    CGRect frame = self.frame;
    frame.size.width += widthDelta;
    self.frame = frame;
}

- (void)changeViewHeightBy:(CGFloat)heightDelta
{
    CGRect frame = self.frame;
    frame.size.height += heightDelta;
    self.frame = frame;
}



@end
