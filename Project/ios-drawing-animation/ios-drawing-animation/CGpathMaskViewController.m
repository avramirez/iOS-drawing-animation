//
//  CGpathMaskViewController.m
//  ios-drawing-animation
//
//  Created by Andrew Ramirez on 11/13/13.
//  Copyright (c) 2013 Andrew Ramirez. All rights reserved.
//

#import "CGpathMaskViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CGpathMaskViewController ()

@end

@implementation CGpathMaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //Added animation layer that will contain the pathLayer animation.
    self.animationLayer = [CALayer layer];
    self.animationLayer.frame = CGRectMake(0.0f, 0.0f,CGRectGetWidth(self.view.layer.bounds),CGRectGetHeight(self.view.layer.bounds));
    [self.view.layer addSublayer:self.animationLayer];
    
    //Preparing points. This is optional you could directly input the CGPoint to the BezierPath
    CGPoint bottomLeft 	= CGPointMake(0,0);
    CGPoint topLeft		= CGPointMake(320, self.view.frame.size.height);

    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:bottomLeft];
    //Adding a curve to bezier
    [path addCurveToPoint:topLeft controlPoint1:CGPointMake(110.f,240.f) controlPoint2:CGPointMake(320.0f,240.0f)];
    [path addLineToPoint:topLeft];
    [path addLineToPoint:CGPointMake(0, self.view.frame.size.height)];
    
    
    //Pathlayer properties
    CAShapeLayer *pathLayer = [CAShapeLayer layer];
    pathLayer.frame = self.animationLayer.bounds;
    pathLayer.bounds = self.view.bounds;
    pathLayer.geometryFlipped = NO;
    pathLayer.path = path.CGPath;
    pathLayer.strokeColor = [[UIColor blackColor] CGColor];
    pathLayer.fillColor = nil;
    pathLayer.lineWidth = 10.0f;
    pathLayer.lineJoin = kCALineJoinBevel;
    
    [self.animationLayer addSublayer:pathLayer];
    self.pathLayer = pathLayer;
    
    //Actual Animation
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration = 3.0;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    pathAnimation.toValue = [NSNumber numberWithFloat:1.0f];
    [self.pathLayer addAnimation:pathAnimation forKey:@"strokeEnd"];


    
    
    
//    I tried to make the animated path to a mask. But sadly .mask property can't be animated
//    UIImageView *viewToMask = [[UIImageView alloc] initWithFrame:CGRectMake(20.0f, 150.f, 259.0f, 194.0f)];
//    viewToMask.image = [UIImage imageNamed:@"epicCat.png"]
//    CALayer *sublayer = [CALayer layer];
//    sublayer.backgroundColor = [UIColor blueColor].CGColor;
//    sublayer.shadowOffset = CGSizeMake(0, 3);
//    sublayer.shadowRadius = 5.0;
//    sublayer.shadowColor = [UIColor blackColor].CGColor;
//    sublayer.shadowOpacity = 0.8;
//    sublayer.frame = CGRectMake(30, 30, 128, 192);
//    sublayer.borderColor = [UIColor blackColor].CGColor;
//    sublayer.borderWidth = 2.0;
//    sublayer.cornerRadius = 10.0;
//    viewToMask.layer.mask=sublayer;
//    [self.view addSubview:viewToMask];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
