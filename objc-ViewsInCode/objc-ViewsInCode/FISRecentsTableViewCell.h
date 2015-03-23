//
//  FISRecentsTableViewCell.h
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/21/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISRecentsTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *phoneLabel;
@property (strong, nonatomic) IBOutlet UILabel *dayLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UIButton *infoButton;

@end
