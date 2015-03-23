//
//  FISVMailTableViewCell.h
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/22/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISVMailTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *phoneLabel;
@property (strong, nonatomic) IBOutlet UILabel *dayLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIButton *infoButton;

@end
