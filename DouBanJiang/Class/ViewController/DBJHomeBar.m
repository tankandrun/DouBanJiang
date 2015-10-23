//
//  DBJHomeBar.m
//  DouBanJiang
//
//  Created by soft on 15/10/22.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJHomeBar.h"
#import "DBJConst.h"
@implementation DBJHomeBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self configureBar];
    }
    return self;
}
- (void)configureBar {
    self.maximumBarHeight = 105.0;
    self.minimumBarHeight = 20.0;
    self.backgroundColor = DBJTintColor;
    self.clipsToBounds = YES;
    
    //Add blue bar view
    UIView *topView = [[UIView alloc]init];
    topView.backgroundColor = self.backgroundColor;
    
    BLKFlexibleHeightBarSubviewLayoutAttributes *initialTopBar = [[BLKFlexibleHeightBarSubviewLayoutAttributes alloc]init];
    initialTopBar.frame = CGRectMake(0.0, 25.0, self.frame.size.width, 40.0);
    initialTopBar.zIndex = 1023;
    [topView addLayoutAttributes:initialTopBar forProgress:0.0];
    [topView addLayoutAttributes:initialTopBar forProgress:40.0/(105.0-20.0)];
    
    BLKFlexibleHeightBarSubviewLayoutAttributes *finalTopBar = [[BLKFlexibleHeightBarSubviewLayoutAttributes alloc]initWithExistingLayoutAttributes:initialTopBar];
    finalTopBar.transform = CGAffineTransformMakeTranslation(0.0, -40.0);
    [topView addLayoutAttributes:finalTopBar forProgress:1.0];
    
    [self addSubview:topView];
    
    //添加搜索框
    UITextField *searchField = [[UITextField alloc]init];
    searchField.layer.cornerRadius = 5;
    searchField.attributedPlaceholder = [[NSAttributedString alloc]initWithString:@"兴趣 影视 图书 唱片 游戏 活动 用户" attributes:@{NSForegroundColorAttributeName:DBJColor(213, 213, 213)}];
    searchField.backgroundColor = [UIColor whiteColor];
    searchField.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
    
    BLKFlexibleHeightBarSubviewLayoutAttributes *initalSearchField = [[BLKFlexibleHeightBarSubviewLayoutAttributes alloc]init];
    initalSearchField.frame = CGRectMake(8.0, 25.0, initialTopBar.size.width*0.85, initialTopBar.size.height-8.0);
    initalSearchField.zIndex = 1024;
    [searchField addLayoutAttributes:initalSearchField forProgress:0.0];
    [searchField addLayoutAttributes:initalSearchField forProgress:40.0/(105.0-20.0)];
    
    BLKFlexibleHeightBarSubviewLayoutAttributes *finalSearchField = [[BLKFlexibleHeightBarSubviewLayoutAttributes alloc]initWithExistingLayoutAttributes:initalSearchField];
    finalSearchField.transform = CGAffineTransformMakeTranslation(0.0, -0.3*(105.0-20.0));
    finalSearchField.alpha = 0.0;
    [searchField addLayoutAttributes:finalSearchField forProgress:0.8];
    [searchField addLayoutAttributes:finalSearchField forProgress:1.0];
    
    [self addSubview:searchField];
                                                                  
    
    
    
    
}

@end
