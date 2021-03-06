//
//  PhotosByPhotographerMapViewController.m
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "PhotosByPhotographerMapViewController.h"
#import "Photo+MKAnnotation.h"

@interface PhotosByPhotographerMapViewController ()

@end

@implementation PhotosByPhotographerMapViewController

- (void)setPhotographer:(Photographer *)photographer
{
    _photographer = photographer;
    self.title = photographer.name;
    if (self.view.window) [self reload];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self reload];
}

- (void)reload
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
    request.predicate = [NSPredicate predicateWithFormat:@"whoTook = %@", self.photographer];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES]];
    NSArray *photos = [self.photographer.managedObjectContext executeFetchRequest:request error:NULL];
    [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotations:photos];
    Photo *photo = [photos lastObject];
    if (photos) self.mapView.centerCoordinate = photo.coordinate;
    
}

- (void)mapView:(MKMapView *)mapView
 annotationView:(MKAnnotationView *)view
calloutAccessoryControlTapped:(UIControl *)control
{
    [self performSegueWithIdentifier:@"setPhoto:" sender:view];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"setPhoto:"]) {
        if ([sender isKindOfClass:[MKAnnotationView class]]) {
            MKAnnotationView *aView = (MKAnnotationView *)sender;
            if ([aView.annotation isKindOfClass:[Photo class]]) {
                Photo *photo = (Photo *)aView.annotation;
                if ([segue.destinationViewController respondsToSelector:@selector(setPhoto:)]) {
                    [segue.destinationViewController performSelector:@selector(setPhoto:)
                                                          withObject:photo];
                }
            }
        }
    }
}

@end
