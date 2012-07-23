//
//  ViewController.h
//  Timer
//
//  Created by Ali Taher on 7/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timeElapsed;
@property (weak, nonatomic) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UISlider *sliderTest;
@property (weak, nonatomic) IBOutlet UILabel *followKnob;

- (IBAction)labelUpdate:(id)sender;

@end
