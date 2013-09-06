//
//  JDFLocationUtilities.h
//  JDFToolkit
//
//  Created by Joe Fryer on 06/09/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface JDFLocationUtilities : NSObject

+ (MKCoordinateRegion)regionForDisplayingCoordinateA:(CLLocationCoordinate2D)coordinateA andCoordinateB:(CLLocationCoordinate2D)coordinateB;

@end
