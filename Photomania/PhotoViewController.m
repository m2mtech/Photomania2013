//
//  PhotoViewController.m
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "PhotoViewController.h"
#import "MapViewController.h"
#import "Photo+MKAnnotation.m"

@interface PhotoViewController ()

@property (nonatomic, strong) MapViewController *mapVC;

@end

@implementation PhotoViewController

- (void)setPhoto:(Photo *)photo
{
    _photo = photo;
    self.title = photo.title;
    self.imageURL = [NSURL URLWithString:photo.imageURL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.mapVC.mapView addAnnotation:self.photo];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Embed Map of Photo"]) {
        if ([segue.destinationViewController isKindOfClass:[MapViewController class]]) {
            self.mapVC = segue.destinationViewController;
        }
    }
}

@end
