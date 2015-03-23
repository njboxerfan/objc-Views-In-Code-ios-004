//
//  FISFavoritesTableViewCell.m
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/20/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import "FISFavoritesTableViewCell.h"

@implementation FISFavoritesTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.infoButton = [[UIButton alloc] init];
        [self.infoButton setImage:[UIImage imageNamed:@"infoIcon.png"] forState:UIControlStateNormal];
        [self.infoButton setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.infoButton];

        self.phoneLabel = [[UILabel alloc] init];
        [self.phoneLabel setTextColor:[UIColor lightGrayColor]];
        [self.phoneLabel setBackgroundColor:[UIColor whiteColor]];
        [self.phoneLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0f]];
        [self.phoneLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.phoneLabel];
        
        self.nameLabel = [[UILabel alloc] init];
        [self.nameLabel setTextColor:[UIColor blackColor]];
        [self.nameLabel setBackgroundColor:[UIColor whiteColor]];
        [self.nameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:18.0f]];
        [self.nameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.nameLabel];
        
        [self removeConstraints];
        
        NSLayoutConstraint *nameLabelTop =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                      constant:10];
        
        [self.contentView addConstraint:nameLabelTop];
        
        NSLayoutConstraint *nameLabelBottom =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeBottom
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                      constant:-10];
        
        [self.contentView addConstraint:nameLabelBottom];
        
        NSLayoutConstraint *nameLabelLeft =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeLeft
                                    multiplier:1.0
                                      constant:20];
        
        [self.contentView addConstraint:nameLabelLeft];
        
        NSLayoutConstraint *phoneLabelRight =
        [NSLayoutConstraint constraintWithItem:self.phoneLabel
                                     attribute:NSLayoutAttributeRight
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.infoButton
                                     attribute:NSLayoutAttributeLeft
                                    multiplier:1.0
                                      constant:-10];
        
        [self.contentView addConstraint:phoneLabelRight];
        
        NSLayoutConstraint *infoIconRight =
        [NSLayoutConstraint constraintWithItem:self.infoButton
                                     attribute:NSLayoutAttributeRight
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeRight
                                    multiplier:1.0
                                      constant:-10];
        
        [self.contentView addConstraint:infoIconRight];
        
        NSLayoutConstraint *nameLabelCenter =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeCenterY
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1.0
                                      constant:0];
        
        [self.contentView addConstraint:nameLabelCenter];
        
        NSLayoutConstraint *phoneLabelCenter =
        [NSLayoutConstraint constraintWithItem:self.phoneLabel
                                     attribute:NSLayoutAttributeCenterY
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1.0
                                      constant:0];
        
        [self.contentView addConstraint:phoneLabelCenter];
        
        NSLayoutConstraint *infoIconCenter =
        [NSLayoutConstraint constraintWithItem:self.infoButton
                                     attribute:NSLayoutAttributeCenterY
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1.0
                                      constant:0];
        
        [self.contentView addConstraint:infoIconCenter];
    }

        return self;
}

-(void)removeConstraints
{
    [self.contentView removeConstraints:self.contentView.constraints];
    
    for (UIView *view in self.contentView.subviews)
    {
        [view removeConstraints:[view constraints]];
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
}

@end
