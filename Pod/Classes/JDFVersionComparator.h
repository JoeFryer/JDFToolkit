//
//  JDFVersionComparator.h
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 12/06/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDFVersionComparator : NSObject

+ (NSComparisonResult)compareVersion:(NSString *)version1 toVersion:(NSString *)version2;
+ (BOOL)version:(NSString *)version1 isGreaterThanVersion:(NSString *)version2;
+ (BOOL)version:(NSString *)version1 isLessThanVersion:(NSString *)version2;
+ (BOOL)version:(NSString *)version1 equalsVersion:(NSString *)version2;

@end
