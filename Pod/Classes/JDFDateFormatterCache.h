//
//  JDFDateFormatterCache.h
//  JDFToolkit
//
//  Created by Joe Fryer on 31/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  JDFDateFormatterCache provides an easy way to cache and re-use date formatters. NSDateFormatters are expensive to create, so we want to do it as little as possible. JDFDateFormatterCache is a singleton class; access the singleton instance with +sharedDateFormatterCache, and use the NSDateFormatter property to suit your needs.
 */
@interface JDFDateFormatterCache : NSObject

#pragma mark - DateFormatters
/**
 *  NSDateFormatter with the dateStyle NSDateFormatterShortStyle
 */
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithShortStyle;

/**
 *  NSDateFormatter with the dateStyle NSDateFormatterMediumStyle
 */
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithMediumStyle;

/**
 *  NSDateFormatter with the dateStyle NSDateFormatterLongStyle
 */
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithLongStyle;

/**
 *  NSDateFormatter with the dateStyle NSDateFormatterFullStyle
 */
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithFullStyle;

#pragma mark - Singleton Stuff
/**
 *  Method for accessing the singleton JDFDateFormatterCache instance
 *
 *  @return the singleton JDFDateFormatterCache instance
 */
+ (id)sharedDateFormatterCache;

@end
