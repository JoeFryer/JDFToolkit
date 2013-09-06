//
//  JDFLocationUtilities.m
//  JDFToolkit
//
//  Created by Joe Fryer on 06/09/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import "JDFLocationUtilities.h"

@implementation JDFLocationUtilities

+ (MKCoordinateRegion)regionForDisplayingCoordinateA:(CLLocationCoordinate2D)coordinateA andCoordinateB:(CLLocationCoordinate2D)coordinateB
{
    // Work out the Lattidude Midpoint of the two coordinates, and also the Lattitude Difference between them.
    CLLocationDegrees maxLattitude = fmax(coordinateA.latitude, coordinateB.latitude);
    CLLocationDegrees minLattitude = fmin(coordinateA.latitude, coordinateB.latitude);
    CLLocationDegrees lattitudeDifference = maxLattitude - minLattitude;
    CLLocationDegrees midLattitude = maxLattitude - ((maxLattitude - minLattitude) / 2);
    
    // Work out the Longitude Midpoint of the two coordinates, and also the Longitude Difference between them.
    CLLocationDegrees maxLongitude = fmax(coordinateA.longitude, coordinateB.longitude);
    CLLocationDegrees minLongitude = fmin(coordinateA.longitude, coordinateB.longitude);
    CLLocationDegrees longitudeDifference = maxLongitude - minLongitude;
    CLLocationDegrees midLongitude = maxLongitude - ((maxLongitude - minLongitude) / 2);
    
    // Create a 2D Coordinate of the two midpoints we have just found. Then, create a span using the Lattitude and Longitude differences (plus a little bit). Use these to create the region.
    CLLocationCoordinate2D midPoint = CLLocationCoordinate2DMake(midLattitude, midLongitude);
    MKCoordinateSpan span = MKCoordinateSpanMake(lattitudeDifference * 1.7f, longitudeDifference * 1.7f);
    return MKCoordinateRegionMake(midPoint, span);
}

@end
