//
//  ChallengesTableViewCell.h
//  HomeCourt
//
//  Created by Lars Hundebøl on 5/10/13.
//  Copyright (c) 2013 Lars Hundebøl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChallengesTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *challengeLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeleftLabel;
@property (nonatomic, weak) IBOutlet UILabel *yourNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *yourScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *opponentNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *opponentScoreLabel;


@end
