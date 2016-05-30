//
//  ViewController.m
//  FTPopMenu
//
//  Created by liufengting on 16/5/29.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "ViewController.h"
#import "FTPopTableViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (IBAction)doneAction:(UIBarButtonItem *)sender {
    
    FTPopTableViewController *pop = [[FTPopTableViewController alloc] init];
    pop.barButtonItem = sender;
    pop.titleString = @"Some";
//    pop.rowHeight = 80;
//    pop.sourceRect = CGRectMake(self.view.frame.size.width - 50, 25, 40, 30);
    
    [self presentViewController:pop animated:YES completion:nil];
    
    
}



@end
