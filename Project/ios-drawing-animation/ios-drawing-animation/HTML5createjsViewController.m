//
//  HTML5createjsViewController.m
//  ios-drawing-animation
//
//  Created by Andrew Ramirez on 11/15/13.
//  Copyright (c) 2013 Andrew Ramirez. All rights reserved.
//

#import "HTML5createjsViewController.h"

@interface HTML5createjsViewController ()

@end

@implementation HTML5createjsViewController
@synthesize html5WebView;
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
	// Do any additional setup after loading the view.
    //html5WebView.frame=self.view.bounds;
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"HTML5createjs"
                                                         ofType:@"html"
                                                         inDirectory:@"HTML5toUIView"];
    NSURL* fileURL = [NSURL fileURLWithPath:filePath];
    NSURLRequest* request = [NSURLRequest requestWithURL:fileURL];
    [html5WebView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
