//
//  HWMViewController.m
//  Quartz2DTest
//
//  Created by Victor Hugo on 30/01/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import "HZAViewController.h"

@interface HZAViewController ()

@end

@implementation HZAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchUpInsideClear:(id)sender
{
    [self.whiteboardView clear];
}

- (IBAction)valueChangedLineWidth:(id)sender
{
    self.whiteboardView.lineWidth = self.stepperLineWidth.value;
}

- (IBAction)valueChangedColor:(id)sender
{
    self.whiteboardView.color = [UIColor colorWithWhite:self.sliderColor.value
                                                  alpha:1];
}

@end
