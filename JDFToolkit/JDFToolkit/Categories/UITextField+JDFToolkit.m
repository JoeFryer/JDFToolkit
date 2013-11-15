//
//  UITextField+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 23/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "UITextField+JDFToolkit.h"

@implementation UITextField (JDFToolkit)

- (void)configureAsEmailField
{
    self.autocorrectionType = UITextAutocorrectionTypeNo;
    self.keyboardType = UIKeyboardTypeEmailAddress;
}

- (void)configureAsNameEntryField
{
    self.autocorrectionType = UITextAutocorrectionTypeNo;
    self.autocapitalizationType = UITextAutocapitalizationTypeWords;
}

- (void)configureAsTelephoneNumberEntryField
{
    self.keyboardType = UIKeyboardTypePhonePad;
}

@end
