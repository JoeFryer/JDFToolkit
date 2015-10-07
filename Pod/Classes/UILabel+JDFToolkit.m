//
//  UILabel+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 11/11/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UILabel+JDFToolkit.h"

// Toolkit
#import "JDFToolkitCategories.h"


@implementation UILabel (JDFToolkit)

- (void)resizeHeightToFitTextContents
{
    self.numberOfLines = 0;
    if (self.text.length < 1) {
        return;
    }
    CGRect frame = self.frame;
    frame.size.height = [self requiredHeightToFitContents];
    self.frame = frame;
}

- (void)resizeWidthToFitTextContents
{
    self.numberOfLines = 0;
    if (self.text.length < 1) {
        return;
    }
    CGRect frame = self.frame;
    frame.size.width = [self requiredWidthToFitContents];
    self.frame = frame;
}

- (CGFloat)requiredHeightToFitContents
{
    if (self.text.length < 1) {
        return 0.0f;
    }
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:self.text attributes:@{NSFontAttributeName: self.font}];
    CGRect rect = [attributedText boundingRectWithSize:CGSizeMake(self.frame.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    return ceilf(rect.size.height);
}

- (CGFloat)requiredWidthToFitContents
{
    if (self.text.length < 1) {
        return 0.0f;
    }
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:self.text attributes:@{NSFontAttributeName: self.font}];
    CGRect rect = [attributedText boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, self.frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    return ceilf(rect.size.width);
}

@end
