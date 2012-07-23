//
//  ViewController.m
//  Timer
//
//  Created by Ali Taher on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    -(void)updateLabel;
    @property NSInteger count;
@end

@implementation ViewController
@synthesize timeElapsed = _timeElapsed;
@synthesize timer = _timer;
@synthesize sliderTest = _sliderTest;
@synthesize followKnob = _followKnob;
@synthesize count = _count;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.count = 0;
    self.timeElapsed.text = [NSString stringWithFormat:@"%d", self.count];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
    
    self.sliderTest.transform = CGAffineTransformMakeRotation(M_PI_2);
    [self.sliderTest addSubview:self.followKnob];
    self.followKnob.transform = CGAffineTransformRotate(self.followKnob.transform, 270.0/180*M_PI);
    
    [self labelUpdate:nil];
}

- (void)viewDidUnload
{
    [self setTimeElapsed:nil];
    [self setSliderTest:nil];
    [self setFollowKnob:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(void)updateLabel{
    
    self.count++;
        
    self.timeElapsed.text =  [NSString stringWithFormat:@"%d", self.count];
    if(self.count == 20)
        [self.timer invalidate];
    
    
    
}

- (IBAction)labelUpdate:(id)sender {
    
    CGRect change = [self.sliderTest thumbRectForBounds:[self.sliderTest bounds] trackRect:[self.sliderTest bounds] value:[self.sliderTest value]];

    change.origin.y -=30;
    
    self.followKnob.frame  = change;

    self.followKnob.text = [NSString stringWithFormat:@"%d", (NSInteger)[self.sliderTest value] ];
    
}
@end
