//
//  JDFLocationUtilities.h
//  JDFToolkit
//
//  Created by Joe Fryer on 06/09/2013.
//  Copyright (c) 2013 JDF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

/**
 *  JDFLocationUtilities provides some convenience methods for working with location data.
 */
@interface JDFLocationUtilities : NSObject

/**
 *  Creates an appropriate MKCoordinateRegion for correctly displaying two coordinates on a map.
 *
 *  @param coordinateA The first coordinate
 *  @param coordinateB The second coordinate
 *
 *  @return An MKCoordinateRegion that is appropriate for showing coordinateA and coordinateB.
 */
+ (MKCoordinateRegion)regionForDisplayingCoordinateA:(CLLocationCoordinate2D)coordinateA andCoordinateB:(CLLocationCoordinate2D)coordinateB;

/**
 *  Creates an MKCoordinateRegion appropriate for showing a list of MKMapItems.
 *
 *  @param mapItems An NSArray of MKMapItems
 *
 *  @return An MKCoordinateRegion that is appropriate for showing all MKMapItems in mapItems.
 */
+ (MKCoordinateRegion)regionForDisplayingMapItems:(NSArray *)mapItems;

@end
