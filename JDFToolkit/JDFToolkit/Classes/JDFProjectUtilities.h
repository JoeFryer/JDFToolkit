//
//  JDFProjectUtilities.h
//  JDFToolkit
//
//  Created by Joe Fryer on 28/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDFProjectUtilities : NSObject

#pragma mark - Version Numbers
+ (NSString *)appVersion;
+ (NSString *)appBuildNumber;
+ (NSString *)appFullVersionAndBuildNumber;

#pragma mark - App Name
+ (NSString *)appName;

@end
