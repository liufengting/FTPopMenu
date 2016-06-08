//
//  FTPopMenu.m
//  FTPopMenu
//
//  Created by liufengting on 16/6/2.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "FTPopMenu.h"
#import "FTPopTableViewController.h"

@interface FTPopMenu ()

@property (nonatomic, strong)FTPopTableViewController *popMenu;

@end

@implementation FTPopMenu

+(instancetype)sharedInstance
{
    static FTPopMenu *shared;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[FTPopMenu alloc] init];
    });
    return shared;
}

+(void)showWithTitle:(NSString *)title
           menuArray:(NSArray<NSString *> *)menuArray
           doneBlock:(void(^)(NSInteger selectedIndex))doneBlock
         cancelBlock:(void(^)())cancelBlock
{
    
    
    
    
    
    
}
-(FTPopTableViewController *)popMenu
{
    if (!_popMenu) {
//        _popMenu = [[FTPopTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    }
    return _popMenu;
}



@end
