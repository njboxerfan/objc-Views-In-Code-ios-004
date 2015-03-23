//
//  FISTabBarViewController.h
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/19/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISTabBarViewController : UITabBarController

@property(nonatomic, copy) NSArray *viewControllers;

//this is for the tabbar items
//- (id)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag

@end
