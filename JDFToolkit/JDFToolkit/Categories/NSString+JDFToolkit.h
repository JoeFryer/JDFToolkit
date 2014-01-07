//
//  NSString+JDFToolkit.h
//  JDFToolkit
//
//  Created by Joe Fryer on 07/01/2014.
//  Copyright (c) 2014 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JDFToolkit)

- (NSString *)stringByTrimmingWhitespaceCharacters;

- (NSString *)stringByTrimmingWhitespaceAndNewLineCharacters;

- (NSString *)stringByTrimmingLeadingWhitespaceCharacters;

- (NSString *)stringByTrimmingTrailingWhitespaceCharacters;

- (NSString *)stringByTrimmingAdjacentSpaces;




//- (NSString *)stringByTrimmingLeadingCharactersInSet:(NSCharacterSet *)characterSet;

@end
