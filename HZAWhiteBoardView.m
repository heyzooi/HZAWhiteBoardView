//
//  HWMWhiteBoardView.m
//  Quartz2DTest
//
//  Created by Victor Hugo on 30/01/13.
//  Copyright (c) 2013 HZ Apps. All rights reserved.
//

#import "HZAWhiteBoardView.h"

@interface HZAWhiteBoardView () {
    
    UIImage *image;
    
}

@end

@implementation HZAWhiteBoardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)awakeFromNib
{
    self.lineWidth = 10;
    self.color = [UIColor blackColor];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [image drawAtPoint:CGPointZero];
    UITouch *touch = touches.anyObject;
    CGPoint point = [touch locationInView:self];
    CGFloat lineWidthHalf = self.lineWidth / 2.0;
    [self.color setStroke];
    [self.color setFill];
    CGContextFillEllipseInRect(ctx, CGRectMake(point.x - lineWidthHalf, image.size.height - point.y - lineWidthHalf, self.lineWidth, self.lineWidth));
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [image drawAtPoint:CGPointZero];
    UITouch *touch = touches.anyObject;
    CGPoint point1 = [touch previousLocationInView:self];
    CGPoint point2 = [touch locationInView:self];
    point1.y = image.size.height - point1.y;
    point2.y = image.size.height - point2.y;
    [self.color setStroke];
    [self.color setFill];
    CGContextSetLineWidth(ctx, self.lineWidth);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextStrokeLineSegments(ctx, (CGPoint[2]){point1, point2}, 2);
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    if (!image) {
        [self clear];
    }
    CGContextDrawImage(UIGraphicsGetCurrentContext(), rect, image.CGImage);
}

-(void)clear
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setNeedsDisplay];
}

@end
