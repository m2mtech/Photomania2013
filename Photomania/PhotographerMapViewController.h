//
//  PhotographerMapViewController.h
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "MapViewController.h"

@interface PhotographerMapViewController : MapViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

- (void)reload;

@end
