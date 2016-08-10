//
//  ViewController.m
//  FTPopMenu
//
//  Created by liufengting on 16/5/29.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+FTPopMenu.h"
#import "FTPopMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self makeNavigationBarTransparent];
}

-(void)makeNavigationBarTransparent
{
    [self.navigationController.navigationBar setTintColor:[UIColor blackColor]];
    
    [self.navigationController.navigationBar setTranslucent:YES];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}

-(NSArray <NSString *>*)menuStringArray
{
    return @[@"Option 1",
             @"Option 2",
             @"Option 3",
             @"Option 4",
             @"Option 5",
             @"Option 6"];
}

- (IBAction)doneAction:(UIBarButtonItem *)sender {
    
    [self showFTMenuFromBarButtonItem:sender
                            menuArray:[self menuStringArray]
                            doneBlock:^(NSInteger selectedIndex) {
                                
                            } cancelBlock:^{
                                
                            }];
    
}

- (IBAction)showAction:(UIButton *)sender
{

    [FTPopMenu showFTMenuForViewController:self
                                  fromView:sender
                                 menuArray:[self menuStringArray]
                                 doneBlock:^(NSInteger selectedIndex) {
                                     
                                 } cancelBlock:^{
                                     
                                 }];
    
}


@end
