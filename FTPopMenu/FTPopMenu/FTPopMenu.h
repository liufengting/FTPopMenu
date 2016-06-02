//
//  FTPopMenu.h
//  FTPopMenu
//
//  Created by liufengting on 16/6/2.
//  Copyright © 2016年 liufengting. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FTPopMenu : NSObject

+(instancetype)sharedInstance;

+(void)showWithTitle:(NSString *)title
           menuArray:(NSArray<NSString *> *)menuArray
           doneBlock:(void(^)(NSInteger selectedIndex))doneBlock
         cancelBlock:(void(^)())cancelBlock;



@end
