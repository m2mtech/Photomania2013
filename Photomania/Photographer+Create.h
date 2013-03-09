//
//  Photographer+Create.h
//  Photomania
//
//  Created by Martin Mandl on 09.03.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "Photographer.h"

@interface Photographer (Create)

+ (Photographer *)photographerWithName:(NSString *)name
                inManagedObjectContext:(NSManagedObjectContext *)context;

@end
