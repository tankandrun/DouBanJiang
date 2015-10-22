//
//  DBJHomeController.m
//  DouBanJiang
//
//  Created by soft on 15/10/21.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJHomeController.h"
#import "DBJConst.h"

#import "DBJHomeBar.h"
#import "FacebookStyleBarBehaviorDefiner.h"
@interface DBJHomeController ()<UITabBarDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic)DBJHomeBar *myCustomBar;
@end

@implementation DBJHomeController
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    self.navigationController.navigationBar.frame = CGRectMake(0, 20, 375, 80);
//    NSLog(@"%f",self.navigationController.navigationBar.frame.size.height);

//    UISearchBar *search = [[UISearchBar alloc]init];
//    search.placeholder = @"兴趣 影视 图书 唱片 游戏 活动 用户";
//    self.navigationItem.titleView = search;
//    
//    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
//    rightButton.tintColor = [UIColor whiteColor];
//    self.navigationItem.rightBarButtonItem = rightButton;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = DBJTintColor;
    [self setNeedsStatusBarAppearanceUpdate];
    
    //setUp the bar
    self.myCustomBar = [[DBJHomeBar alloc]initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth(self.view.frame), 100.0)];
    
    FacebookStyleBarBehaviorDefiner *behaviorDefiner = [[FacebookStyleBarBehaviorDefiner alloc]init];
    [behaviorDefiner addSnappingPositionProgress:0.0 forProgressRangeStart:0.0 end:40.0/(105.0-20.0)];
    [behaviorDefiner addSnappingPositionProgress:1.0 forProgressRangeStart:40.0/(105.0-20.0) end:1.0];
    behaviorDefiner.snappingEnabled = YES;
    behaviorDefiner.thresholdNegativeDirection = 140.0;
    ((UIScrollView *)self.tableView).delegate = behaviorDefiner;
    self.myCustomBar.behaviorDefiner = behaviorDefiner;
    
    [self.view addSubview:self.myCustomBar];
    
    //setup the table view
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.contentInset = UIEdgeInsetsMake(self.myCustomBar.maximumBarHeight, 0.0, 0.0, 0.0);
    
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"1111";
    return cell;
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
