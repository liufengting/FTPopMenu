//
//  ViewController.m
//  FTPopMenu
//
//  Created by liufengting on 16/5/29.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "ViewController.h"
#import "FTPopTableViewController.h"
#import "UIViewController+FTPopMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationController.navigationBar.translucent = YES;
    
//    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)doneAction:(UIBarButtonItem *)sender {
    
    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
    pop.barButtonItem = sender;
    pop.titleString = @"Some";
    pop.tintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];
//    pop.rowHeight = 60;
    pop.menuStringArray = @[@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",];

    [self presentViewController:pop animated:YES completion:nil];
    
    
}

- (IBAction)showAction:(UIButton *)sender {
    
//    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
//    pop.sourceView = sender;
//    pop.titleString = @"Some";
//    pop.tintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];
//    pop.menuStringArray = @[@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",];
//    [self presentViewController:pop animated:YES completion:nil];

    
    [self showMenuFromButton:sender];
    
}


@end
