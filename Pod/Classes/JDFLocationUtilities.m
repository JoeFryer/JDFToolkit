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
    CLLocationDegrees maxLatitude = fmax(coordinateA.latitude, coordinateB.latitude);
    CLLocationDegrees minLatitude = fmin(coordinateA.latitude, coordinateB.latitude);
    CLLocationDegrees latitudeDifference = maxLatitude - minLatitude;
    CLLocationDegrees midLattitude = maxLatitude - ((maxLatitude - minLatitude) / 2);
    
    // Work out the Longitude Midpoint of the two coordinates, and also the Longitude Difference between them.
    CLLocationDegrees maxLongitude = fmax(coordinateA.longitude, coordinateB.longitude);
    CLLocationDegrees minLongitude = fmin(coordinateA.longitude, coordinateB.longitude);
    CLLocationDegrees longitudeDifference = maxLongitude - minLongitude;
    CLLocationDegrees midLongitude = maxLongitude - ((maxLongitude - minLongitude) / 2);
    
    // Create a 2D Coordinate of the two midpoints we have just found. Then, create a span using the Lattitude and Longitude differences (plus a little bit). Use these to create the region.
    CLLocationCoordinate2D midPoint = CLLocationCoordinate2DMake(midLattitude, midLongitude);
    MKCoordinateSpan span = MKCoordinateSpanMake(latitudeDifference * 1.7f, longitudeDifference * 1.7f);
    return MKCoordinateRegionMake(midPoint, span);
}

+ (MKCoordinateRegion)regionForDisplayingMapItems:(NSArray *)mapItems
{
    if (mapItems.count > 0) {
        CLLocationDegrees maxLatitude = 0.0f;
        CLLocationDegrees maxLongitude = 0.0f;
        CLLocationDegrees minLatitude = 0.0f;
        CLLocationDegrees minLongitude = 0.0f;
        
        MKMapItem *firstMapItem = [mapItems objectAtIndex:0];
        maxLatitude = firstMapItem.placemark.coordinate.latitude;
        maxLongitude = firstMapItem.placemark.coordinate.longitude;
        minLatitude = firstMapItem.placemark.coordinate.latitude;
        minLongitude = firstMapItem.placemark.coordinate.longitude;
        
        for (MKMapItem *mapItem in mapItems) {
            maxLatitude = fmax(maxLatitude, mapItem.placemark.coordinate.latitude);
            maxLongitude = fmax(maxLongitude, mapItem.placemark.coordinate.longitude);
            minLatitude = fmin(minLatitude, mapItem.placemark.coordinate.latitude);
            minLongitude = fmin(minLongitude, mapItem.placemark.coordinate.longitude);
        }
        
        CLLocationDegrees latitudeDifference = maxLatitude - minLatitude;
        CLLocationDegrees midLatitude = maxLatitude - ((maxLatitude - minLatitude) / 2);
        CLLocationDegrees longitudeDifference = maxLongitude - minLongitude;
        CLLocationDegrees midLongitude = maxLongitude - ((maxLongitude - minLongitude) / 2);
        
        CLLocationCoordinate2D midPoint = CLLocationCoordinate2DMake(midLatitude, midLongitude);
        MKCoordinateSpan span = MKCoordinateSpanMake(latitudeDifference * 1.7f, longitudeDifference * 1.7f);
        if (span.latitudeDelta < 0.07f) {
            span.latitudeDelta = 0.07f;
        }
        if (span.longitudeDelta < 0.07f) {
            span.longitudeDelta = 0.07f;
        }
        return MKCoordinateRegionMake(midPoint, span);
    } else {
        return MKCoordinateRegionMake(CLLocationCoordinate2DMake(0.0f, 0.0f), MKCoordinateSpanMake(0.0f, 0.0f));
    }
}


@end
