//
//  Photo+MKAnnotation.h
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "Photo.h"
#import <MapKit/MapKit.h>

@interface Photo (MKAnnotation) <MKAnnotation>

- (UIImage *)thumbnail; // blocks

@end
