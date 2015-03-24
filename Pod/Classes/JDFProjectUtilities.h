//
//  JDFProjectUtilities.h
//  JDFToolkit
//
//  Created by Joe Fryer on 28/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  JDFProjectUtilities provides some convenience methods for getting the app name/version number/etc.
 */
@interface JDFProjectUtilities : NSObject

#pragma mark - Version Numbers
+ (NSString *)appVersion;
+ (NSString *)appBuildNumber;
+ (NSString *)appFullVersionAndBuildNumber;

#pragma mark - App Name
+ (NSString *)appName;

@end
