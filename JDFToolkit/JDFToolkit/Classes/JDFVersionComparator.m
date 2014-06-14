//
//  JDFVersionComparator.m
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 12/06/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import "JDFVersionComparator.h"

@implementation JDFVersionComparator

+ (NSComparisonResult)compareVersion:(NSString *)version1 toVersion:(NSString *)version2
{
    NSArray *version1Components = [version1 componentsSeparatedByString:@"."];
    NSArray *version2Components = [version2 componentsSeparatedByString:@"."];
    
    NSInteger i = 0;
    while (version1Components.count > i || version2Components.count > i) {
        NSString *version1Part = version1Components.count > i ? version1Components[i] : 0;
        NSString *version2Part = version2Components.count > i ? version2Components[i] : 0;
        
        if (version1Part.integerValue < version2Part.integerValue) {
            return NSOrderedAscending;
        } else if (version1Part.integerValue > version2Part.integerValue) {
            return NSOrderedDescending;
        }
        i++;
    }
    return NSOrderedSame;
}

+ (BOOL)version:(NSString *)version1 isGreaterThanVersion:(NSString *)version2
{
    return [self compareVersion:version1 toVersion:version2] == NSOrderedDescending;
}

+ (BOOL)version:(NSString *)version1 isLessThanVersion:(NSString *)version2
{
    return [self compareVersion:version1 toVersion:version2] == NSOrderedAscending;
}

+ (BOOL)version:(NSString *)version1 equalsVersion:(NSString *)version2
{
    return [self compareVersion:version1 toVersion:version2] == NSOrderedSame;
}

@end
