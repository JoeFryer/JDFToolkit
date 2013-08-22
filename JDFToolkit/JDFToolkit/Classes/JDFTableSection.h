//
//  JDFTableSection.h
//  JDFToolkit
//
//  Created by Joe Fryer on 22/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDFTableSection : NSObject

@property (nonatomic, strong) NSString *header;
@property (nonatomic, strong) NSMutableArray *rows;

- (NSInteger)rowsCount;

@end
