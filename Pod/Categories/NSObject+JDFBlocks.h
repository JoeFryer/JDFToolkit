//
//  NSObject+JDFBlocks.h
//  JDFToolkit
//
//  Created by Joe Fryer on 03/12/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JDFBlocks)

- (void)performBlock:(void(^)())block afterDelay:(NSTimeInterval)delay;

@end
