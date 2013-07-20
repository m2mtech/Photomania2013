//
//  PhotosByPhotographerMapViewController.h
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "MapViewController.h"
#import "Photographer.h"

@interface PhotosByPhotographerMapViewController : MapViewController

@property (nonatomic, strong) Photographer *photographer;

@end
