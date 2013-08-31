//
//  NSDate+JDFToolkit.h
//  JDFToolkit
//
//  Created by Joe Fryer on 31/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (JDFToolkit)

- (BOOL)isEarlierThanDateIncludingTime:(NSDate *)date;
- (BOOL)isEarlierThanDateIgnoringTime:(NSDate *)date;
- (BOOL)isLaterThanDateIncludingTime:(NSDate *)date;
- (BOOL)isLaterThanDateIgnoringTime:(NSDate *)date;
- (BOOL)isEarlierThanOrEqualToDateIncludingTime:(NSDate *)date;
- (BOOL)isEarlierThanOrEqualToDateIgnoringTime:(NSDate *)date;
- (BOOL)isLaterThanOrEqualToDateIncludingTime:(NSDate *)date;
- (BOOL)isLaterThanOrEqualToDateIgnorinTime:(NSDate *)date;
- (BOOL)isTheSameDateAsIncludingTime:(NSDate *)date;
- (BOOL)isTheSameDateAsIgnoringTime:(NSDate *)date;

@end
