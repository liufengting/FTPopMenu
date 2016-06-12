//
//  UIViewController+FTPopMenu.m
//  FTPopMenu
//
//  Created by liufengting on 16/6/2.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "UIViewController+FTPopMenu.h"
#import "FTPopTableViewController.h"

@implementation UIViewController (FTPopMenu)

-(void)showMenuFromButton:(UIButton *)sender
{
    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
    pop.sourceView = sender;
    pop.titleString = @"Some";
    pop.tintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];
    pop.menuStringArray = @[@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",@"something important",];
    [self presentViewController:pop animated:YES completion:nil];
    
}


-(void)showFTMenuFromView:(UIView *)sender
                    title:(NSString *)title
                menuArray:(NSArray<NSString *> *)menuArray
       menuImageNameArray:(NSArray<NSString *> *)menuImageNameArray
                     done:(void(^)(NSInteger selectedIndex))done
                   cancel:(void(^)())cancel
{
    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
    pop.sourceView = sender;
    pop.titleString = title;
    pop.tintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];
    pop.menuStringArray = menuArray;
    pop.menuImageNameArray = menuImageNameArray;
    [self presentViewController:pop animated:YES completion:^{
        
    }];
    
}

-(void)showFTMenuFromBarButtonItem:(UIBarButtonItem *)barButtonItem
                             title:(NSString *)title
                         menuArray:(NSArray<NSString *> *)menuArray
                menuImageNameArray:(NSArray<NSString *> *)menuImageNameArray
                              done:(void(^)(NSInteger selectedIndex))done
                            cancel:(void(^)())cancel
{
    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
    pop.barButtonItem = barButtonItem;
    pop.titleString = title;
    pop.tintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];
    //    pop.rowHeight = 60;
    pop.menuStringArray = menuArray;
    pop.menuImageNameArray = menuImageNameArray;
    [self presentViewController:pop animated:YES completion:nil];
    
}

@end
 