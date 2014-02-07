//
//  NSString+JDFToolkit.h
//  JDFToolkit
//
//  Created by Joe Fryer on 07/01/2014.
//  Copyright (c) 2014 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JDFToolkit)

#pragma mark - General

- (NSString *)reverseString;


#pragma mark - Trimming

- (NSString *)stringByTrimmingWhitespaceCharacters;

- (NSString *)stringByTrimmingWhitespaceAndNewLineCharacters;

- (NSString *)stringByTrimmingLeadingWhitespaceCharacters;

- (NSString *)stringByTrimmingTrailingWhitespaceCharacters;

- (NSString *)stringByTrimmingAdjacentSpaces;

@end
