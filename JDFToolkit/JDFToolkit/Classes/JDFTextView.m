//
//  JDFTextView.m
//  JDFToolkit
//
//  Created by Joe Fryer on 03/09/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFTextView.h"


@interface JDFTextView()

@property (nonatomic) BOOL placeholderIsVisible;
@property (nonatomic, strong) UIColor *standardTextColor;

@end



@implementation JDFTextView


#pragma mark - Setters

/*
 We do not use this setter internally - we call [super setTextColor:] when we want to change the text color. This setter is to intersect the user setting a text color externally, in which case we store their desired color in self.standardTextColor (however, we only set this via super here if the placeholder is not visible, as if it is visible we don't want to change it as we want the text to have the placeholderColor!).
 */
- (void)setTextColor:(UIColor *)textColor
{
    self.standardTextColor = textColor;
    if (!self.placeholderIsVisible) {
        [super setTextColor:textColor];
    }
}

- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    if ([super.text isEqualToString:@""]) {
        super.text = self.placeholder;
        self.placeholderIsVisible = YES;
    }
}

- (void)setPlaceholderIsVisible:(BOOL)placeholderIsVisible
{
    // Here, when we set our text color, we set it on super, as we have overriden setTextColor: to intersect a text color change that the user makes and store it in self.standardTextColor (but we don't want to do use that internally as we will end up making self.standardTextColor the same as our placeholderColor).
    _placeholderIsVisible = placeholderIsVisible;
    if (_placeholderIsVisible) {
        [super setTextColor:self.placeholderColor];
    } else {
        [super setTextColor:self.standardTextColor];
    }
}

- (void)setText:(NSString *)text
{
    if ([text isEqualToString:@""]) {
        [super setText:self.placeholder];
        self.placeholderIsVisible = YES;
    } else {
        [super setText:text];
    }
}

#pragma mark - Getters

/*
 If the user requests the text from us, we don't want to return the placeholder string, if that is what is displaying!
 */
- (NSString *)text
{
    if (self.placeholderIsVisible) {
        return @"";
    } else {
        return [super text];
    }
}


#pragma mark - Notification Receivers

- (void)textDidBeginEditing:(NSNotification *)notification
{
    if (self.placeholderIsVisible) {
        super.text = @"";
        self.placeholderIsVisible = NO;
    }
}

- (void)textDidEndEditing:(NSNotification *)notification
{
    if ([super.text isEqualToString:@""]) {
        super.text = self.placeholder;
        self.placeholderIsVisible = YES;
    }
}


#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customInit];
    }
    return self;
}

- (void)awakeFromNib
{
    [self customInit];
}

- (void)customInit
{
    self.standardTextColor = [UIColor colorWithCGColor:self.textColor.CGColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidBeginEditing:) name:UITextViewTextDidBeginEditingNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:nil];
    
    if (!self.placeholder) {
        self.placeholder = @"";
    }
    if (!self.placeholderColor) {
        self.placeholderColor = [UIColor grayColor];
    }
    
    if ([super.text isEqualToString:@""]) {
        super.text = self.placeholder;
        self.placeholderIsVisible = YES;
    } else {
        self.placeholderIsVisible = NO;
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
