//
//  MainNavigationViewController.m
//  HomeCourt
//
//  Created by Lars Hundebøl on 5/9/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import "MainNavigationViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Override default navigation bar background
    [self.navigationBar setBackgroundImage: [UIImage imageNamed:@"navigation-bar.png"] forBarMetrics:UIBarMetricsDefault];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
