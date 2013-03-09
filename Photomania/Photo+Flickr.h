//
//  Photo+Flickr.h
//  Photomania
//
//  Created by Martin Mandl on 09.03.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "Photo.h"

@interface Photo (Flickr)

+ (Photo *)photoWithFlickrInfo:(NSDictionary *)photoDictionary
        inManagedObjectContext:(NSManagedObjectContext *)context;


@end
