//
//  SettingsListViewController.m
//  HomeCourt
//
//  Created by Lars Hundebøl on 2/17/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import "SettingsListViewController.h"

@interface SettingsListViewController () {
    NSMutableArray *listData;
}
@end

@implementation SettingsListViewController

- (void)viewDidLoad
{
    if ([self.navigationItem.title isEqual: @"Chores"]) {
        NSMutableArray *array = [NSMutableArray arrayWithObjects:
                          [NSArray arrayWithObjects: @"Did the dishes",@"5", nil],
                          [NSArray arrayWithObjects: @"Did the laundry",@"5", nil],
                          [NSArray arrayWithObjects: @"Made lunch",@"5", nil],
                          [NSArray arrayWithObjects: @"Made dinner",@"10", nil],
                          [NSArray arrayWithObjects: @"Vacuumed",@"5", nil],
                          [NSArray arrayWithObjects: @"Cleaned",@"10", nil],
                          [NSArray arrayWithObjects: @"Did handy work",@"10", nil],
                          [NSArray arrayWithObjects: @"Did the grocery shopping",@"10", nil],
                          [NSArray arrayWithObjects: @"Walked the dog",@"5", nil],
                          [NSArray arrayWithObjects: @"Watched the kids",@"5", nil],
                          [NSArray arrayWithObjects: @"Invited my better half out",@"10", nil],
                          [NSArray arrayWithObjects: @"Spent a day with the in-laws",@"20", nil],
                          nil];        
        listData = array;
    }
    else {
        NSMutableArray *array = [NSMutableArray arrayWithObjects:
                          [NSArray arrayWithObjects: @"Romantic dinner for two",@"1000", nil],
                          [NSArray arrayWithObjects: @"A champagne Picnic",@"2500", nil],
                          nil];
        listData = array;
    }
    
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table View

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleTableIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [[listData objectAtIndex:row] objectAtIndex:0];
    
    cell.detailTextLabel.text = [[listData objectAtIndex:row] objectAtIndex:1];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [listData removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
