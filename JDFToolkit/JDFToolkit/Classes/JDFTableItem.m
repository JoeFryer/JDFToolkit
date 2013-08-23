//
//  JDFTableItem.m
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFTableItem.h"

@implementation JDFTableItem

- (id)initWithTitle:(NSString *)title cellType:(JDFCellType)cellType
{
    if (self = [super init]) {
        self.title = title;
        self.cellType = cellType;
    }
    return self;
}

@end
