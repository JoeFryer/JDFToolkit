//
//  JDFTableItem.h
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, JDFCellType) {
    JDFCellTypeDisplayData,
    JDFCellTypeActionCell,
    JDFCellTypeMultiChoice,
    JDFCellTypeDataInput,
    JDFCellTypeNote,
    JDFCellTypeMaintainParameter,
    JDFCellTypeSegue,
    JDFCellTypeSegmentedControl,
    JDFCellTypeMapCell,
    JDFCellTypeMapCellHeader
};

@interface JDFTableItem : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *value;
@property (nonatomic) JDFCellType cellType;

- (id)initWithTitle:(NSString *)title cellType:(JDFCellType)cellType;

@end
