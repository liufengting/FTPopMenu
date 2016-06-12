//
//  UIViewController+FTPopMenu.h
//  FTPopMenu
//
//  Created by liufengting on 16/6/2.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (FTPopMenu)

-(void)showMenuFromButton:(UIButton *)sender;

-(void)showFTMenuFromView:(UIView *)sender
                    title:(NSString *)title
                menuArray:(NSArray<NSString *> *)menuArray
       menuImageNameArray:(NSArray<NSString *> *)menuImageNameArray
                     done:(void(^)(NSInteger selectedIndex))done
                   cancel:(void(^)())cancel;

-(void)showFTMenuFromBarButtonItem:(UIBarButtonItem *)barButtonItem
                             title:(NSString *)title
                         menuArray:(NSArray<NSString *> *)menuArray
                menuImageNameArray:(NSArray<NSString *> *)menuImageNameArray
                              done:(void(^)(NSInteger selectedIndex))done
                            cancel:(void(^)())cancel;
@end
