//
//  JDFTableSection.m
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFTableSection.h"

@implementation JDFTableSection

- (NSMutableArray *)rows
{
    if (!_rows) {
        _rows = [[NSMutableArray alloc] init];
    }
    return _rows;
}

- (NSInteger)rowsCount
{
    return self.rows.count;
}

@end
