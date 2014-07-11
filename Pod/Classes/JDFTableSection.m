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
    return [self addTableItemsWithTitles:titles subtitles:nil images:nil cellType:cellType];
}

- (BOOL)addTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images cellType:(JDFCellType)cellType
{
    return [self addTableItemsWithTitles:titles subtitles:subtitles images:images values:nil cellType:cellType];
}

- (BOOL)addTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images values:(NSArray *)values cellType:(JDFCellType)cellType
{
    NSArray *newTableItems = [JDFTableSection arrayOfTableItemsWithTitles:titles subtitles:subtitles images:images values:values cellType:cellType];
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

+ (NSArray *)arrayOfTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images values:(NSArray *)values cellType:(JDFCellType)cellType
{
    if (subtitles && subtitles.count != titles.count) {
        NSLog(@"**JDFToolkit** Error in: %s. \n Count of Titles and Subtitles do not match. Returning nil.", __PRETTY_FUNCTION__);
        return nil;
    }
    if (images && images.count != titles.count) {
        NSLog(@"**JDFToolkit** Error in: %s. \n Count of Titles and Images do not match. Returning nil.", __PRETTY_FUNCTION__);
        return nil;
    }
    if (values && values.count != titles.count) {
        NSLog(@"**JDFToolkit** Error in: %s. \n Count of Titles and Values do not match. Returning nil.", __PRETTY_FUNCTION__);
        return nil;
    }
    
    NSMutableArray *tableItems = [[NSMutableArray alloc] init];
    NSInteger i = 0;
    for (NSString *title in titles) {
        NSString *subtitle = subtitles[i];
        UIImage *image = images[i];
        NSString *value = values[i];
        JDFTableItem *tableItem = [[JDFTableItem alloc] initWithTitle:title cellType:cellType];
        tableItem.subtitle = subtitle;
        tableItem.image = image;
        tableItem.value = value;
        [tableItems addObject:tableItem];
        i++;
    }
    return [NSArray arrayWithArray:tableItems];
}

@end
