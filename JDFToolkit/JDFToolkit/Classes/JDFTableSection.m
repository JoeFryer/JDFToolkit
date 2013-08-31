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

- (BOOL)addTableItemsWithTitles:(NSArray *)titles cellType:(JDFCellType)cellType
{
    NSArray *newTableItems = [JDFTableSection arrayOfTableItemsWithTitles:titles cellType:cellType];
    if (newTableItems) {
        NSMutableArray *tableItems = [self.rows mutableCopy];
        [tableItems addObjectsFromArray:newTableItems];
        self.rows = [NSArray arrayWithArray:tableItems];
        return YES;
    } else {
        return NO;
    }
}


#pragma mark - Class Methods

+ (NSArray *)arrayOfTableItemsWithTitles:(NSArray *)titles cellType:(JDFCellType)cellType
{
    NSMutableArray *tableItems = [[NSMutableArray alloc] init];
    for (id obj in titles) {
        if ([obj isKindOfClass:[NSString class]]) {
            JDFTableItem *tableItem = [[JDFTableItem alloc] initWithTitle:(NSString *)obj cellType:cellType];
            [tableItems addObject:tableItem];
        } else {
            return nil;
        }
    }
    return [NSArray arrayWithArray:tableItems];
}

@end
