//
//  ViewController.h
//  ios-drawing-animation
//
//  Created by Andrew Ramirez on 11/13/13.
//  Copyright (c) 2013 Andrew Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController

@property (copy,   nonatomic) NSURL *movieURL;
@property (strong, nonatomic) MPMoviePlayerController *movieController;

@end
