//
//  KTVDetailViewController.h
//  Test
//
//  Created by Victor Hugo on 01/03/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTVDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
