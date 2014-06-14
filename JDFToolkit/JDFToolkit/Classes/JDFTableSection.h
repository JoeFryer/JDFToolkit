//
//  JDFTableSection.h
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JDFTableItem.h"


@interface JDFTableSection : NSObject

@property (nonatomic, strong) NSString *header;
@property (nonatomic, strong) NSString *footer;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UIView *footerView;
@property (nonatomic, strong) NSArray *rows;
@property (nonatomic) NSInteger tag;

#pragma mark - Init
- (id)initWithHeader:(NSString *)header;
- (id)initWithHeader:(NSString *)header rows:(NSArray *)rows;

#pragma mark - Convenience
- (NSInteger)rowsCount;
- (BOOL)addTableItemsWithTitles:(NSArray *)titles cellType:(JDFCellType)cellType;
- (BOOL)addTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images cellType:(JDFCellType)cellType;
- (BOOL)addTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images values:(NSArray *)values cellType:(JDFCellType)cellType;

#pragma mark - Class Methods
+ (NSArray *)arrayOfTableItemsWithTitles:(NSArray *)titles subtitles:(NSArray *)subtitles images:(NSArray *)images values:(NSArray *)values cellType:(JDFCellType)cellType;

@end
