//
//  DBJScrollCell.m
//  DouBanJiang
//
//  Created by soft on 15/10/21.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJScrollCell.h"
@interface DBJScrollCell ()<UIScrollViewDelegate>
@property (nonatomic,strong)UIPageControl *pageControl;
@end
@implementation DBJScrollCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIScrollView *scrollView = [[UIScrollView alloc]init];
        scrollView.delegate = self;
        scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 110);
        scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*3, 110);
        for (NSUInteger i = 0; i< 3; i++) {
            UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"screenshot 3.png"]];
            
            CGRect imageFrame = CGRectZero;
            imageFrame.size = CGSizeMake(scrollView.frame.size.width, 110);
            imageFrame.origin = CGPointMake(i*scrollView.frame.size.width, 0);
            imageView.frame = imageFrame;
            
            [scrollView addSubview:imageView];
        }
        scrollView.bounces = NO;
        scrollView.pagingEnabled = YES;
        scrollView.showsHorizontalScrollIndicator = NO;
        [self addSubview:scrollView];
        
        //添加pageController
        UIPageControl *pageControl = [[UIPageControl alloc]init];
#warning 长度有问题
        pageControl.frame = CGRectMake(0, scrollView.frame.size.height-10, 320, 5);
//        NSLog(@"%f,%f",pageControl.frame.size.width,[UIScreen mainScreen].bounds.size.width);
        pageControl.numberOfPages = 3;
        pageControl.pageIndicatorTintColor = [UIColor colorWithWhite:1 alpha:0.2];
        pageControl.userInteractionEnabled = NO;
        self.pageControl = pageControl;
        [self addSubview:self.pageControl];
    }
    return self;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGPoint position = scrollView.contentOffset;
    NSUInteger i = position.x/[UIScreen mainScreen].bounds.size.width;
    self.pageControl.currentPage = i;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
