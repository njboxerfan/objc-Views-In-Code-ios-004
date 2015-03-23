//
//  FISContactsTableViewController.h
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/19/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISContactsTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSDictionary *contacts;
@property (strong, nonatomic) NSArray *sections;

@end
