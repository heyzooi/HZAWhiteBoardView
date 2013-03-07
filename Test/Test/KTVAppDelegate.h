//
//  KTVAppDelegate.h
//  Test
//
//  Created by Victor Hugo on 01/03/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
