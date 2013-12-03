//
//  NSObject+JDFBlocks.m
//  JDFToolkit
//
//  Created by Joe Fryer on 03/12/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "NSObject+JDFBlocks.h"

@implementation NSObject (JDFBlocks)

- (void)performBlock:(void (^)())block afterDelay:(NSTimeInterval)delay
{
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), block);
}

@end
