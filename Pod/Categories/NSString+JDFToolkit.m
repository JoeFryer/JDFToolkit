//
//  NSString+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 07/01/2014.
//  Copyright (c) 2014 JDF. All rights reserved.
//

#import "NSString+JDFToolkit.h"

@implementation NSString (JDFToolkit)

#pragma mark - General

- (NSString *)reverseString
{
    NSMutableString *reversedString = [NSMutableString string];
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByComposedCharacterSequences | NSStringEnumerationReverse usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [reversedString appendString:substring];
    }];
    return reversedString;
}


#pragma mark - Trimming

- (NSString *)stringByTrimmingWhitespaceCharacters
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString *)stringByTrimmingWhitespaceAndNewLineCharacters
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)stringByTrimmingLeadingWhitespaceCharacters
{
    NSRange range = [self rangeOfCharacterFromSet:[[NSCharacterSet whitespaceCharacterSet] invertedSet]];
    if (range.location == NSNotFound) {
        return @"";
    }
    return [self substringFromIndex:range.location];
}

- (NSString *)stringByTrimmingTrailingWhitespaceCharacters
{
    NSRange range = [self rangeOfCharacterFromSet:[[NSCharacterSet whitespaceCharacterSet] invertedSet] options:NSBackwardsSearch];
    if (range.location == NSNotFound) {
        return @"";
    }
    return [self substringToIndex:range.location];
}

- (NSString *)stringByTrimmingAdjacentSpaces
{
    NSString *trimmedString = self;
    while ([trimmedString rangeOfString:@"  "].location != NSNotFound) {
        trimmedString = [trimmedString stringByReplacingOccurrencesOfString:@"  " withString:@" "];
    }
    return trimmedString;
}

@end
