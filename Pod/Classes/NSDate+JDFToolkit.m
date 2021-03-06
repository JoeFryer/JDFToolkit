//
//  NSDate+JDFToolkit.m
//  JDFToolkit
//
//  Created by Joe Fryer on 31/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "NSDate+JDFToolkit.h"


@implementation NSDate (JDFToolkit)


#pragma mark - Date Comparison

- (BOOL)isEarlierThanDateIncludingTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compare:date];
    if (comparisonResult == NSOrderedAscending) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isEarlierThanDateIgnoringTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compareWithDateIgnoringTime:date];
    if (comparisonResult == NSOrderedAscending) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isLaterThanDateIncludingTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compare:date];
    if (comparisonResult == NSOrderedDescending) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isLaterThanDateIgnoringTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compareWithDateIgnoringTime:date];
    if (comparisonResult == NSOrderedDescending) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isEarlierThanOrEqualToDateIncludingTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compare:date];
    if (comparisonResult == NSOrderedAscending || comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isEarlierThanOrEqualToDateIgnoringTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compareWithDateIgnoringTime:date];
    if (comparisonResult == NSOrderedAscending || comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isLaterThanOrEqualToDateIncludingTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compare:date];
    if (comparisonResult == NSOrderedDescending || comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isLaterThanOrEqualToDateIgnorinTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compareWithDateIgnoringTime:date];
    if (comparisonResult == NSOrderedDescending || comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isTheSameDateAsIncludingTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compare:date];
    if (comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isTheSameDateAsIgnoringTime:(NSDate *)date
{
    NSComparisonResult comparisonResult = [self compareWithDateIgnoringTime:date];
    if (comparisonResult == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}


#pragma mark - Internal

- (NSComparisonResult)compareWithDateIgnoringTime:(NSDate *)date
{
    NSCalendar *calender = [NSCalendar currentCalendar];
    NSInteger comps = (NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear);
    
    NSDateComponents *date1Comps = [calender components:comps fromDate:self];
    NSDateComponents *date2Comps = [calender components:comps fromDate:date];
    
    NSDate *dateOfSelf = [calender dateFromComponents:date1Comps];
    NSDate *compareDate = [calender dateFromComponents:date2Comps];
    
    return [dateOfSelf compare:compareDate];
}

@end
