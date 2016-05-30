//
//  FTPopTableViewController.m
//  FTPopMenu
//
//  Created by liufengting on 16/5/30.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import "FTPopTableViewController.h"

@interface FTPopTableViewController () <UIPopoverPresentationControllerDelegate,UIAdaptivePresentationControllerDelegate>

@end

@implementation FTPopTableViewController

-(instancetype)init
{
    return self = [self initWithStyle:UITableViewStylePlain];
}

-(instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self setUp];
    }
    return self;
}
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];
    }
    return self ;
}
-(void)setUp
{
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.modalPresentationStyle = UIModalPresentationPopover;
    self.popoverPresentationController.delegate = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(CGFloat)rowHeight
{
    if (_rowHeight <= 0) {
        return 40;
    }
    return _rowHeight;
}
-(UIColor *)tintColor
{
    if (!_tintColor) {
        return [UIColor whiteColor];
    }
    return _tintColor;
}

-(UIColor *)textColor
{
    if (!_textColor) {
        return [UIColor blackColor];
    }
    return _textColor;
}
-(CGFloat)tableviewHeaderViewHeight
{
    if (_titleString.length) {
        return 30;
    }
    return 0.01;
}



#pragma mark - Table view data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [self tableviewHeaderViewHeight];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.rowHeight;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (_titleString.length) {
        UILabel *header = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, [self tableviewHeaderViewHeight])];
        header.backgroundColor = self.tintColor;
        header.textColor = self.textColor;
        header.font = [UIFont boldSystemFontOfSize:14];
        header.textAlignment = NSTextAlignmentCenter;
        header.text = _titleString;
        return header;
    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FTPopTableViewControllerCellIdentifier"];
    cell.backgroundColor = self.tintColor;
    cell.textLabel.text = @"Something";
    cell.textLabel.textColor = self.textColor;
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.imageView.image = [UIImage imageNamed:@"button-folder"];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - UIPopoverPresentationControllerDelegate

- (void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController {
 if (self.barButtonItem) {
        self.popoverPresentationController.barButtonItem = self.barButtonItem;
    } else {
        self.popoverPresentationController.sourceView = self.view;
//        self.popoverPresentationController.sourceRect = self.sourceRect;
    }
    self.preferredContentSize = CGSizeMake(200,300);
    
    popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    popoverPresentationController.passthroughViews = nil;
    popoverPresentationController.popoverLayoutMargins = UIEdgeInsetsZero;
    
//    if (self.backgroundColor) {
        popoverPresentationController.backgroundColor = [UIColor whiteColor];
//    }
    
//    if (self.sourceView && CGRectEqualToRect(self.sourceView.bounds, self.sourceRect)) {
//        _displayInViewBounds = YES;
//    } else {
//        _displayInViewBounds = NO;
//    }
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    return YES;
}

- (void)popoverPresentationController:(UIPopoverPresentationController *)popoverPresentationController willRepositionPopoverToRect:(inout CGRect *)rect inView:(inout UIView  * __nonnull * __nonnull)view {
    if (view != NULL) {
        *view = self.sourceView;
    }
    
    if (rect) {
//        if (_displayInViewBounds) {
            *rect = self.sourceView.bounds;
//        } else {
//            *rect = self.sourceRect;
//        }
    }
}

#pragma mark - UIAdaptivePresentationControllerDelegate

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ) {
        return UIModalPresentationFullScreen;
    } else {
        return UIModalPresentationNone;
    }
}

// This will wrap the content view controller in a navigation controller when diplayed in full screen.
- (UIViewController *)presentationController:(UIPresentationController *)controller viewControllerForAdaptivePresentationStyle:(UIModalPresentationStyle)style {
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller.presentedViewController];
    return navController;
}

#pragma mark - Actions

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
