//
//  SettingsViewController.m
//  HomeCourt
//
//  Created by Lars Hundebøl on 2/17/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIButton *sampleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [sampleButton setTitle:@"Delete Game" forState:UIControlStateNormal];
    [sampleButton setFrame:CGRectMake(9, 340, 302, 43)];
    [sampleButton setBackgroundImage:[UIImage imageNamed:@"button_red.png"]
                            forState:UIControlStateNormal];
    
    [[sampleButton titleLabel] setFont: [UIFont boldSystemFontOfSize: 18]];
    [sampleButton addTarget:self action:@selector(buttonDelete) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:sampleButton];
}

- (void)buttonDelete {
    UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:nil
                                                        delegate:self
                                               cancelButtonTitle:@"Cancel"
                                          destructiveButtonTitle:@"Delete Game"
                                               otherButtonTitles:nil];
    
    [action showInView:self.view];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Alert View dismissed with button at index %d",buttonIndex);
}

@end
