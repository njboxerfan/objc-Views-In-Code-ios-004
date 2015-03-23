//
//  FISTabBarViewController.m
//  objc-ViewsInCode
//
//  Created by Bert Carr on 3/19/15.
//  Copyright (c) 2015 Bert Carr. All rights reserved.
//

#import "FISTabBarViewController.h"
#import "FISFavoritesTableViewController.h"
#import "FISRecentsTableViewController.h"
#import "FISContactsTableViewController.h"
#import "FISKeypadViewController.h"
#import "FISVMailTableViewController.h"
#import <FAKIonIcons.h>

@interface FISTabBarViewController ()

@end

@implementation FISTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    FISFavoritesTableViewController *favoritesTVC = [[FISFavoritesTableViewController alloc] init];
    FISRecentsTableViewController *recentsTVC = [[FISRecentsTableViewController alloc] init];
    
    FISContactsTableViewController *contactsTVC = [[FISContactsTableViewController alloc] init];
    
    
    FISKeypadViewController *keypadVC = [[FISKeypadViewController alloc] init];
    FISVMailTableViewController *vmailTVC = [[FISVMailTableViewController alloc] init];
    

    
    UINavigationController *favoritesNavController = [[UINavigationController alloc] initWithRootViewController:favoritesTVC];
    
    favoritesTVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    

    
    
    UINavigationController *recentsNavController = [[UINavigationController alloc] initWithRootViewController:recentsTVC];
    
    recentsTVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:0];
    

    
    
    UINavigationController *contactsNavController = [[UINavigationController alloc] initWithRootViewController:contactsTVC];
    
    contactsTVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0.0, contactsNavController.view.frame.origin.y +60, contactsNavController.view.frame.size.width, 38.0)];
    
    searchBar.placeholder = @"Search";
    
    [contactsNavController.view addSubview:searchBar];

    
    


    
    FAKIonIcons *keypadIcon = [FAKIonIcons iosKeypadIconWithSize:30];
    
    UIImage *keypadImage = [keypadIcon imageWithSize:CGSizeMake(30, 30)];
    
    keypadVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Keypad" image:keypadImage tag:0];
    

    
    
    UINavigationController *vmailNavController = [[UINavigationController alloc] initWithRootViewController:vmailTVC];
    
    FAKIonIcons *vmIcon = [FAKIonIcons iosRecordingIconWithSize:30];
    
    UIImage *vmImage = [vmIcon imageWithSize:CGSizeMake(30, 30)];
    
    vmailTVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Voicemail" image:vmImage tag:0];

    
    
    
    self.viewControllers = @[favoritesNavController,recentsNavController,contactsNavController,keypadVC,vmailNavController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
