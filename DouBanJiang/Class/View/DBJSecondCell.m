//
//  DBJSecondCell.m
//  DouBanJiang
//
//  Created by soft on 15/10/21.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJSecondCell.h"

@implementation DBJSecondCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#warning 点击变色
- (IBAction)yingshi:(id)sender {
    NSLog(@"影视");
}
- (IBAction)dushu:(id)sender {
    NSLog(@"读书");
}
- (IBAction)yinyue:(id)sender {
    NSLog(@"音乐");
}
- (IBAction)tongchenghuodong:(id)sender {
    NSLog(@"同城活动");
}
- (IBAction)youxi:(id)sender {
    NSLog(@"游戏");
}
- (IBAction)zhangzhishi:(id)sender {
    NSLog(@"涨知识");
}

@end
