//
//  HWMViewController.h
//  Quartz2DTest
//
//  Created by Victor Hugo on 30/01/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HZAWhiteBoardView.h"

@interface HZAViewController : UIViewController

@property (weak, nonatomic) IBOutlet HZAWhiteBoardView *whiteboardView;
@property (weak, nonatomic) IBOutlet UIStepper *stepperLineWidth;
@property (weak, nonatomic) IBOutlet UISlider *sliderColor;

- (IBAction)touchUpInsideClear:(id)sender;
- (IBAction)valueChangedLineWidth:(id)sender;
- (IBAction)valueChangedColor:(id)sender;

@end
