//
//  DBJTabBarController.m
//  DouBanJiang
//
//  Created by 金顺度 on 15/10/19.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJTabBarController.h"
#import "DBJConst.h"
@interface DBJTabBarController ()

@end

@implementation DBJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBar appearance]setTintColor:DBJTintColor];
    UITabBarItem *itemOne = [self.tabBar.items objectAtIndex:0];
    itemOne.image = [UIImage imageNamed:@"icon_pathMenu_more_normal"];
    itemOne.title = @"豆瓣";
    UITabBarItem *itemTwo = [self.tabBar.items objectAtIndex:1];
    itemTwo.image = [UIImage imageNamed:@"icon_search"];
    itemTwo.title = @"发现";
    UITabBarItem *itemThird = [self.tabBar.items objectAtIndex:2];
    itemThird.image = [UIImage imageNamed:@"icon_pathMenu_mine_normal"];
    itemThird.title = @"我的";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
