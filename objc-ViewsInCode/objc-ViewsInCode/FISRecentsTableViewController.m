//
//  FISRecentsTableViewController.m
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/19/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import "FISRecentsTableViewController.h"
#import "FISRecentsTableViewCell.h"

@interface FISRecentsTableViewController ()

@end

@implementation FISRecentsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.recents = @[@{@"name":@"Iris Acker",@"phone":@"iPhone",@"day":@"Yesterday"},@{@"name":@"Syed Ahamed",@"phone":@"Mobile",@"day":@"Wednesday"},@{@"name":@"Rich Trant",@"phone":@"iPhone",@"day":@"Monday"},@{@"name":@"+1(917) 555-2356",@"phone":@"NJ USA",@"day":@"1/29/15"}];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:nil];

    UISegmentedControl *allMissed = [[UISegmentedControl alloc] initWithItems:@[@"All",@"Missed"]];
    
    [allMissed setSelectedSegmentIndex:0];
    
    self.navigationItem.titleView = allMissed;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.recents count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FISRecentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"recentsCell"];
    
    if ( cell == nil )
    {
        cell = [[FISRecentsTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"recentsCell"];
    }
    
    // Configure the cell...
    
//    UIButton *newBtn=[UIButton buttonWithType:UIButtonTypeCustom];
//    [newBtn setFrame:CGRectMake(10,5,55,55)];
//    
//    [cell addSubview:newBtn];
    
    NSDictionary *recent = self.recents[indexPath.row];
    
    cell.nameLabel.text = recent[@"name"];
    cell.phoneLabel.text = recent[@"phone"];
    cell.dayLabel.text = recent[@"day"];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
