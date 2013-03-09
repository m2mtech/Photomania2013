//
//  PhotographerCDTVCViewController.h
//  Photomania
//
//  Created by Martin Mandl on 09.03.13.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import "CoreDataTableViewController.h"

@interface PhotographerCDTVC : CoreDataTableViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end
