//
//  DetailViewController.h
//  HomeCourt
//
//  Created by Lars Hundebøl on 12/28/12.
//  Copyright (c) 2012 Lars Hundebøl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
