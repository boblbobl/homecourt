//
//  ChoreViewController.m
//  HomeCourt
//
//  Created by Lars Hundebøl on 2/23/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import "ChoreViewController.h"

@interface ChoreViewController ()

@end

@implementation ChoreViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonPressed:(id)sender {
    [self.parentViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
