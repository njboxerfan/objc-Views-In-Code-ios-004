//
//  FISVMailTableViewCell.m
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/22/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import "FISVMailTableViewCell.h"

@implementation FISVMailTableViewCell

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
        
        self.dayLabel = [[UILabel alloc] init];
        [self.dayLabel setTextColor:[UIColor blackColor]];
        [self.dayLabel setBackgroundColor:[UIColor whiteColor]];
        [self.dayLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0f]];
        [self.dayLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.dayLabel];
        
        self.phoneLabel = [[UILabel alloc] init];
        [self.phoneLabel setTextColor:[UIColor lightGrayColor]];
        [self.phoneLabel setBackgroundColor:[UIColor whiteColor]];
        [self.phoneLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0f]];
        [self.phoneLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.phoneLabel];
        
        self.timeLabel = [[UILabel alloc] init];
        [self.timeLabel setTextColor:[UIColor lightGrayColor]];
        [self.timeLabel setBackgroundColor:[UIColor whiteColor]];
        [self.timeLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0f]];
        [self.timeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.timeLabel];
        
        self.nameLabel = [[UILabel alloc] init];
        [self.nameLabel setTextColor:[UIColor blackColor]];
        [self.nameLabel setBackgroundColor:[UIColor whiteColor]];
        [self.nameLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:18.0f]];
        [self.nameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.nameLabel];
        
        [self removeConstraints];
        
        NSLayoutConstraint *nameLabelLeft =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeLeft
                                    multiplier:1.0
                                      constant:20];
        
        [self.contentView addConstraint:nameLabelLeft];

        NSLayoutConstraint *dayLabelRight =
        [NSLayoutConstraint constraintWithItem:self.dayLabel
                                     attribute:NSLayoutAttributeRight
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.infoButton
                                     attribute:NSLayoutAttributeLeft
                                    multiplier:1.0
                                      constant:-10];
        
        [self.contentView addConstraint:dayLabelRight];
        
        NSLayoutConstraint *infoIconRight =
        [NSLayoutConstraint constraintWithItem:self.infoButton
                                     attribute:NSLayoutAttributeRight
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeRight
                                    multiplier:1.0
                                      constant:-10];
        
        [self.contentView addConstraint:infoIconRight];
        
        NSLayoutConstraint *phoneLabelLeft =
        [NSLayoutConstraint constraintWithItem:self.phoneLabel
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.nameLabel
                                     attribute:NSLayoutAttributeLeft
                                    multiplier:1.0
                                      constant:0];
        
        [self.contentView addConstraint:phoneLabelLeft];

        NSLayoutConstraint *timeLabelRight =
        [NSLayoutConstraint constraintWithItem:self.timeLabel
                                     attribute:NSLayoutAttributeRight
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.dayLabel
                                     attribute:NSLayoutAttributeRight
                                    multiplier:1.0
                                      constant:0];
        
        [self.contentView addConstraint:timeLabelRight];
        
        NSLayoutConstraint *nameLabelTop =
        [NSLayoutConstraint constraintWithItem:self.nameLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                      constant:5];
        
        [self.contentView addConstraint:nameLabelTop];
        
        NSLayoutConstraint *dayLabelTop =
        [NSLayoutConstraint constraintWithItem:self.dayLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                      constant:5];
        
        [self.contentView addConstraint:dayLabelTop];
        
        NSLayoutConstraint *phoneLabelTop =
        [NSLayoutConstraint constraintWithItem:self.phoneLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.nameLabel
                                     attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                      constant:5];
        
        [self.contentView addConstraint:phoneLabelTop];

        NSLayoutConstraint *phoneLabelBottom =
        [NSLayoutConstraint constraintWithItem:self.phoneLabel
                                     attribute:NSLayoutAttributeBottom
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                      constant:-5];
        
        [self.contentView addConstraint:phoneLabelBottom];

        NSLayoutConstraint *timeLabelTop =
        [NSLayoutConstraint constraintWithItem:self.timeLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.dayLabel
                                     attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                      constant:5];
        
        [self.contentView addConstraint:timeLabelTop];
        
        NSLayoutConstraint *timeLabelBottom =
        [NSLayoutConstraint constraintWithItem:self.timeLabel
                                     attribute:NSLayoutAttributeBottom
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.contentView
                                     attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                      constant:-5];
        
        [self.contentView addConstraint:timeLabelBottom];
        
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
