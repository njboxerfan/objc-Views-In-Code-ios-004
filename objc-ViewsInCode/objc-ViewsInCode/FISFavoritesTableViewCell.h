//
//  FISFavoritesTableViewCell.h
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/20/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISFavoritesTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *phoneLabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UIButton *infoButton;

@end
