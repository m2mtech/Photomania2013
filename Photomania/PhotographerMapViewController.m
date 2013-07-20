//
//  PhotographerMapViewController.m
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "PhotographerMapViewController.h"
#import "Photographer+MKAnnotation.h"

@interface PhotographerMapViewController ()

@end

@implementation PhotographerMapViewController

- (void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext
{
    _managedObjectContext = managedObjectContext;
    if (self.view.window) [self reload];
}

- (void)reload
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photographer"];
    request.predicate = [NSPredicate predicateWithFormat:@"photos.@count > 2"];
    NSArray *photographers = [self.managedObjectContext executeFetchRequest:request error:NULL];
    [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotations:photographers];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self reload];
}

@end
