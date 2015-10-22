//
//  DBJFourthCell.m
//  DouBanJiang
//
//  Created by soft on 15/10/22.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJFourthCell.h"
#import "DBJConst.h"


@interface DBJFourthCell ()<UIScrollViewDelegate>
@property (nonatomic,strong)UIPageControl *pageControl;
@end
@implementation DBJFourthCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
        scrollView.delegate = self;
        scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*3, scrollView.frame.size.height);
        
        for (NSUInteger i = 0; i< 3; i++) {
            
            UIView *buttonView = [[UIView alloc]init];
//            buttonView.backgroundColor = [UIColor redColor];
//            UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"screenshot 3.png"]];
            CGRect imageFrame = CGRectZero;
            imageFrame.size = CGSizeMake(scrollView.frame.size.width, 165);
            imageFrame.origin = CGPointMake(i*scrollView.frame.size.width, 0);
            buttonView.frame = imageFrame;
            [scrollView addSubview:buttonView];
            
            for (int j = 0; j< 9; j++) {
                UIButton *button = [[UIButton alloc]init];
                button.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/3*(j%3), 55*(j/3), [UIScreen mainScreen].bounds.size.width/3, 55);
                [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                [button setTitle:@"sa" forState:UIControlStateNormal];
                [button addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchUpInside];
                [button setBackgroundImage:[UIImage imageNamed:@"bg_login_textfield"] forState:UIControlStateNormal];
                [buttonView addSubview:button];
            }
            
        }
        
        scrollView.bounces = YES;
        scrollView.pagingEnabled = YES;
        scrollView.showsHorizontalScrollIndicator = NO;
        [self addSubview:scrollView];
        
        //添加pageController
        UIPageControl *pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 165, self.frame.size.width, 35)];
        pageControl.numberOfPages = 3;
        pageControl.pageIndicatorTintColor = DBJColor(237, 237, 237);
        pageControl.currentPageIndicatorTintColor = DBJColor(205, 205, 205);
        pageControl.userInteractionEnabled = NO;
        self.pageControl = pageControl;
        [self addSubview:self.pageControl];
        
    }
    return self;
}
- (void)aaa {
    NSLog(@"a");
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGPoint position = scrollView.contentOffset;
    NSUInteger i = position.x/[UIScreen mainScreen].bounds.size.width;
    self.pageControl.currentPage = i;
}
@end
