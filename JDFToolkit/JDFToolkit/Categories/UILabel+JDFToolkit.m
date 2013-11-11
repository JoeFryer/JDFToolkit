//
//  UILabel+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 11/11/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UILabel+JDFToolkit.h"

@implementation UILabel (JDFToolkit)

- (void)resizeHeightToFitTextContents
{
    self.numberOfLines = 0;
    CGRect rect = [self expectedFrameForResizingToFitContents];
    CGSize size = rect.size;
    CGRect newFrame = [self frame];
    newFrame.size = size;
    [self setFrame:newFrame];
}

- (void)resizeWidthToFitTextContents
{
    float width = [self expectedWidthForResizingToFitContents];
    CGRect newFrame = [self frame];
    newFrame.size.width = width;
    [self setFrame:newFrame];
}


- (float)expectedWidthForResizingToFitContents
{
    [self setNumberOfLines:1];
    CGSize expectedSize = [self.text sizeWithAttributes:@{NSFontAttributeName: self.font}];
    return expectedSize.width;
}

- (CGRect)expectedFrameForResizingToFitContents
{
    return [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, 9999.0f) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: self.font} context:nil];
}

@end
