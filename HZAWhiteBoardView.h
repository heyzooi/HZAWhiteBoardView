//
//  HWMWhiteBoardView.h
//  Quartz2DTest
//
//  Created by Victor Hugo on 30/01/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZAWhiteBoardView : UIView

@property (nonatomic, assign) CGFloat lineWidth;
@property (nonatomic, strong) UIColor *color;

-(void)clear;

@end
