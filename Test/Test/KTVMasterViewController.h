//
//  KTVMasterViewController.h
//  Test
//
//  Created by Victor Hugo on 01/03/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KTVDetailViewController;

#import <CoreData/CoreData.h>

@interface KTVMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) KTVDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
