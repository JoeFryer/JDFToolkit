//
//  JDFTableSection.h
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JDFTableItem.h"


@interface JDFTableSection : NSObject

@property (nonatomic, strong) NSString *header;
@property (nonatomic, strong) NSString *footer;
@property (nonatomic, strong) NSArray *rows;

#pragma mark - Init
- (id)initWithHeader:(NSString *)header;
- (id)initWithHeader:(NSString *)header rows:(NSArray *)rows;

#pragma mark - Convenience
- (NSInteger)rowsCount;
- (BOOL)addTableItemsWithTitles:(NSArray *)titles cellType:(JDFCellType)cellType;

#pragma mark - Class Methods
+ (NSArray *)arrayOfTableItemsWithTitles:(NSArray *)titles cellType:(JDFCellType)cellType;

@end
