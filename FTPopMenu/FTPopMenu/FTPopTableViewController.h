//
//  FTPopTableViewController.h
//  FTPopMenu
//
//  Created by liufengting on 16/5/30.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTPopTableViewController : UITableViewController

@property(nonatomic, weak) UIBarButtonItem *barButtonItem;

@property(nonatomic, strong) UIView *sourceView;

@property(nonatomic, assign) CGRect sourceRect;


@property (nonatomic, assign)CGFloat rowHeight;

@property (nonatomic, strong)UIColor* tintColor;
@property (nonatomic, strong)UIColor* textColor;
@property (nonatomic, strong)NSString* titleString;


@end
