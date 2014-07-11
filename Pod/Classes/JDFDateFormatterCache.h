//
//  JDFDateFormatterCache.h
//  JDFToolkit
//
//  Created by Joe Fryer on 31/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDFDateFormatterCache : NSObject

#pragma mark - DateFormatters
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithShortStyle;
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithMediumStyle;
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithLongStyle;
@property (nonatomic, strong, readonly) NSDateFormatter *dateFormatterWithFullStyle;

#pragma mark - Singleton Stuff
+ (id)sharedDateFormatterCache;

@end
