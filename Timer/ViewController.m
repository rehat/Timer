//
//  ViewController.m
//  Timer
//
//  Created by Ali Taher on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController
@synthesize sliderTest = _sliderTest;
@synthesize followKnob = _followKnob;


- (void)viewDidLoad
{
    [super viewDidLoad];
        
    self.sliderTest.transform = CGAffineTransformMakeRotation(M_PI_2);
    [self.sliderTest addSubview:self.followKnob];
    self.followKnob.transform = CGAffineTransformRotate(self.followKnob.transform, 270.0/180*M_PI);
    
    [self labelUpdate:nil];
}

- (void)viewDidUnload
{
    [self setSliderTest:nil];
    [self setFollowKnob:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}




- (IBAction)labelUpdate:(id)sender {
    
    CGRect change = [self.sliderTest thumbRectForBounds:[self.sliderTest bounds] trackRect:[self.sliderTest bounds] value:[self.sliderTest value]];

    change.origin.y -=30;
    
    self.followKnob.frame  = change;

    self.followKnob.text = [NSString stringWithFormat:@"%d", (NSInteger)[self.sliderTest value] ];
    
}
@end
