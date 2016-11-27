//
//  ViewController.m
//  FTPopMenu
//
//  Created by liufengting https://github.com/liufengting on 16/5/29.
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
-(NSArray <NSString *>*)menuImageStringArray
{
    return @[@"button-folder",
             @"button-folder",
             @"button-folder",
             @"button-folder",
             @"button-folder",
             @"button-folder"];
}

- (IBAction)doneAction:(UIBarButtonItem *)sender {
    
    // Extension normal
    [self showFTMenuFromBarButtonItem:sender
                            menuArray:[self menuStringArray]
                            doneBlock:^(NSInteger selectedIndex) {
                                NSLog(@"%ld",selectedIndex);
                            } cancelBlock:^{
                                
                            }];
    
    // Extension custom
//    [self showFTMenuFromBarButtonItem:sender
//                                title:@"I am title"
//                            menuArray:[self menuStringArray]
//                   menuImageNameArray:[self menuImageStringArray]
//                        perferedWidth:200
//                            rowHeight:60
//                            tintColor:[UIColor blackColor]
//                            doneBlock:^(NSInteger selectedIndex) {
//                                
//                            }
//                          cancelBlock:^{
//                              
//                          }];
    
   //Class Method normal
//    [FTPopMenu showFTMenuForViewController:self
//                         fromBarButtonItem:sender
//                                 menuArray:[self menuStringArray]
//                                 doneBlock:^(NSInteger selectedIndex) {
//                                     
//                                 } cancelBlock:^{
//                                     
//                                 }];
    
    //Class Method custom
//    [FTPopMenu showFTMenuForViewController:self
//                         fromBarButtonItem:sender
//                                     title:@"I am title"
//                                 menuArray:[self menuStringArray]
//                        menuImageNameArray:[self menuImageStringArray]
//                             preferedWidth:200
//                                 rowHeight:50
//                                 tintColor:[UIColor blackColor]
//                                 doneBlock:^(NSInteger selectedIndex) {
//                                     
//                                 }
//                               cancelBlock:^{
//                                   
//                               }];
    
}

- (IBAction)showAction:(UIButton *)sender
{
    // Extension normal
    [self showFTMenuFromView:sender
                   menuArray:[self menuStringArray]
                   doneBlock:^(NSInteger selectedIndex) {
                       NSLog(@"%ld",selectedIndex);

                   }cancelBlock:^{
                       
                   }];
    
    // Extension custom
//   [self showFTMenuFromView:sender
//                      title:@"I am title"
//                  menuArray:[self menuStringArray]
//         menuImageNameArray:[self menuImageStringArray]
//              perferedWidth:200
//                  rowHeight:50
//                  tintColor:[UIColor blackColor]
//                  doneBlock:^(NSInteger selectedIndex) {
//                      
//                  }cancelBlock:^{
//                      
//                  }];
    
    
    //Class Method normal
//    [FTPopMenu showFTMenuForViewController:self
//                                  fromView:sender
//                                 menuArray:[self menuStringArray]
//                                 doneBlock:^(NSInteger selectedIndex) {
//                                     
//                                 } cancelBlock:^{
//                                     
//                                 }];


    //Class Method custom
    
//    [FTPopMenu showFTMenuForViewController:self
//                                  fromView:sender
//                                     title:@"I am Title"
//                                 menuArray:[self menuStringArray]
//                        menuImageNameArray:[self menuImageStringArray]
//                             perferedWidth:200
//                                 rowHeight:60
//                                 tintColor:[UIColor blackColor]
//                                 doneBlock:^(NSInteger selectedIndex) {
//                                     
//                                 } cancelBlock:^{
//                                     
//                                 }];
    

}


@end
