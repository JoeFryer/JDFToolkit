//
//  JDFTableSection.m
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFTableSection.h"

@implementation JDFTableSection


#pragma mark - Init

- (id)initWithHeader:(NSString *)header
{
    if (self = [super init]) {
        self.header = header;
    }
    return self;
}

- (id)initWithHeader:(NSString *)header rows:(NSArray *)rows
{
    if (self = [super init]) {
        self.header = header;
        self.rows = rows;
    }
    return self;
}


#pragma mark - Getters

- (NSArray *)rows
{
    if (!_rows) {
        _rows = [[NSMutableArray alloc] init];
    }
    return _rows;
}


#pragma mark - Convenience

- (NSInteger)rowsCount
{
    return self.rows.count;
}

@end
