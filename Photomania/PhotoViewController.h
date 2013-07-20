//
//  PhotoViewController.h
//  Photomania
//
//  Created by Martin Mandl on 20.07.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "ImageViewController.h"
#import "Photo.h"

@interface PhotoViewController : ImageViewController

@property (nonatomic, strong) Photo *photo;

@end
