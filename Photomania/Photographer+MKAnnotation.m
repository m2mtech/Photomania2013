//
//  Photographer+MKAnnotation.m
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "Photographer+MKAnnotation.h"
#import "Photo+MKAnnotation.h"

@implementation Photographer (MKAnnotation)

- (NSString *)title
{
    return self.name;
}

- (NSString *)subtitle
{
    return [NSString stringWithFormat:@"%d photos", [self.photos count]];
}

- (CLLocationCoordinate2D)coordinate
{
    return [[self.photos anyObject] coordinate];
}

- (UIImage *)thumbnail {
    return [[self.photos anyObject] thumbnail];
}

@end
