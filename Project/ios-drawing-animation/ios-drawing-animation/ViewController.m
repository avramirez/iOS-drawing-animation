//
//  ViewController.m
//  ios-drawing-animation
//
//  Created by Andrew Ramirez on 11/13/13.
//  Copyright (c) 2013 Andrew Ramirez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    
    self.movieController = [[MPMoviePlayerController alloc] init];
    
    [self.movieController setContentURL:self.movieURL];
    [self.movieController.view setFrame:CGRectMake (0, 0, 320, 476)];
    [self.movieController setControlStyle:MPMovieControlStyleNone];
    [self.movieController setScalingMode:MPMovieScalingModeAspectFill];
    
    [self.view addSubview:self.movieController.view];
    
    [self.movieController play];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"drawing_animation" ofType:@"mov"];
    self.movieURL =[NSURL fileURLWithPath:videoPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
