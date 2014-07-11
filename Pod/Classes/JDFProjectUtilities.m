//
//  JDFProjectUtilities.m
//  JDFToolkit
//
//  Created by Joe Fryer on 28/08/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFProjectUtilities.h"

@implementation JDFProjectUtilities


#pragma mark - Version Numbers

+ (NSString *)appVersion
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuildNumber
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
}

+ (NSString *)appFullVersionAndBuildNumber
{
    NSString *appVersion = [JDFProjectUtilities appVersion];
    NSString *appBuildNumber = [JDFProjectUtilities appBuildNumber];
    return [NSString stringWithFormat:@"%@ (%@)", appVersion, appBuildNumber];
}


#pragma mark - App Name

+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

@end
