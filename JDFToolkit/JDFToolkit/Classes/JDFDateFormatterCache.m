//
//  JDFDateFormatterCache.m
//  JDFToolkit
//
//  Created by Joe Fryer on 31/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFDateFormatterCache.h"



@interface JDFDateFormatterCache()

@property (nonatomic, strong) NSDateFormatter *dateFormatterWithShortStyle;
@property (nonatomic, strong) NSDateFormatter *dateFormatterWithMediumStyle;
@property (nonatomic, strong) NSDateFormatter *dateFormatterWithLongStyle;
@property (nonatomic, strong) NSDateFormatter *dateFormatterWithFullStyle;

@end



@implementation JDFDateFormatterCache


#pragma mark - Getters

- (NSDateFormatter *)dateFormatterWithShortStyle
{
    if (!_dateFormatterWithShortStyle) {
        _dateFormatterWithShortStyle = [[NSDateFormatter alloc] init];
        _dateFormatterWithShortStyle.dateStyle = NSDateFormatterShortStyle;
    }
    return _dateFormatterWithShortStyle;
}

- (NSDateFormatter *)dateFormatterWithMediumStyle
{
    if (!_dateFormatterWithMediumStyle) {
        _dateFormatterWithMediumStyle = [[NSDateFormatter alloc] init];
        _dateFormatterWithMediumStyle.dateStyle = NSDateFormatterMediumStyle;
    }
    return _dateFormatterWithMediumStyle;
}

- (NSDateFormatter *)dateFormatterWithLongStyle
{
    if (!_dateFormatterWithLongStyle) {
        _dateFormatterWithLongStyle = [[NSDateFormatter alloc] init];
        _dateFormatterWithLongStyle.dateStyle = NSDateFormatterLongStyle;
    }
    return _dateFormatterWithLongStyle;
}

- (NSDateFormatter *)dateFormatterWithFullStyle
{
    if (!_dateFormatterWithFullStyle) {
        _dateFormatterWithFullStyle = [[NSDateFormatter alloc] init];
        _dateFormatterWithFullStyle.dateStyle = NSDateFormatterFullStyle;
    }
    return _dateFormatterWithFullStyle;
}


#pragma mark - Singleton Stuff

+ (id)sharedDateFormatterCache
{
    static JDFDateFormatterCache *sharedDateFormatterCache = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDateFormatterCache = [[self alloc] init];
    });
    return sharedDateFormatterCache;
}

- (id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

@end
