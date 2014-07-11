//
//  UIToolbar+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 29/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UIToolbar+JDFToolkit.h"

@implementation UIToolbar (JDFToolkit)

+ (UIToolbar *)keyboardInputAccessoryToolbar
{
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 44.0f)];
    toolbar.barStyle = UIBarStyleBlackTranslucent;
    return toolbar;
}

@end
