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
    
    
}

@end
