//
//  ChallengesViewController.m
//  HomeCourt
//
//  Created by Lars Hundebøl on 5/10/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import "ChallengesViewController.h"
#import "ChallengesTableViewCell.h"

@interface ChallengesViewController () {
    NSMutableArray *_objects;
}

@property (strong, nonatomic) IBOutlet UITableView *challeges;

@end



@implementation ChallengesViewController

//@synthesize challeges;

- (void)viewDidLoad
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:
                             @"Me vs. Mikkel",
                             @"Me vs. Tim",
                             nil];
    _objects = array;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [self.challeges setBackgroundColor:[UIColor clearColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_objects count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"ChallengeTableViewCell";
    
    ChallengesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[ChallengesTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [cell.challengeLabel setText: [_objects objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
