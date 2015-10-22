//
//  DBJFaXianController.m
//  DouBanJiang
//
//  Created by soft on 15/10/21.
//  Copyright © 2015年 金顺度. All rights reserved.
//

#import "DBJFaXianController.h"
#import "DBJScrollCell.h"
#import "DBJSecondCell.h"
#import "DBJThirdCell.h"
#import "DBJFourthCell.h"
@interface DBJFaXianController ()<UITableViewDataSource,UITabBarDelegate>

@end

@implementation DBJFaXianController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发现";
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    //配置头部视图
    UIView *head = [[UIView alloc]init];
    [head setBackgroundColor:[UIColor redColor]];
    head.frame = CGRectMake(0, 0, self.tableView.frame.size.width, 44);
    UISearchBar *search = [[UISearchBar alloc]init];
    search.placeholder = @"兴趣 影视 图书 唱片 游戏 活动 用户";
    [head addSubview:search];
    search.frame = CGRectMake(0, 0, head.frame.size.width, 44);
    
    self.tableView.tableHeaderView = head;
    
    [self.tableView registerClass:[DBJScrollCell class] forCellReuseIdentifier:@"scroll"];
    [self.tableView registerNib:[UINib nibWithNibName:@"DBJSecondCell" bundle:nil] forCellReuseIdentifier:@"second"];
    [self.tableView registerNib:[UINib nibWithNibName:@"DBJThirdCell" bundle:nil] forCellReuseIdentifier:@"third"];
    [self.tableView registerClass:[DBJFourthCell class] forCellReuseIdentifier:@"fourth"];
    
    self.tableView.showsVerticalScrollIndicator = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        return 2;
    }else if (section == 1) {
        return 2;
    }else if (section == 2) {
        return 2;
    }else {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 0) {
        DBJScrollCell *cell = [tableView dequeueReusableCellWithIdentifier:@"scroll" forIndexPath:indexPath];
        return cell;
    }else if(indexPath.section == 0 && indexPath.row ==1) {
        DBJSecondCell *cell = [tableView dequeueReusableCellWithIdentifier:@"second" forIndexPath:indexPath];
        return cell;
    }else if((indexPath.section == 1 && indexPath.row == 0)||(indexPath.section == 2 && indexPath.row == 0)){
        DBJThirdCell *cell = [tableView dequeueReusableCellWithIdentifier:@"third" forIndexPath:indexPath];
        cell.userInteractionEnabled = NO;
        return cell;
    }else {
        DBJFourthCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fourth" forIndexPath:indexPath];
        return cell;
    }
}
#pragma mark - UITabBarDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 110;
    }else if(indexPath.section == 0 && indexPath.row == 1){
        return 175;
    }else if((indexPath.section == 1 && indexPath.row == 0)||(indexPath.section == 2 && indexPath.row == 0)){
        return 75;
    }else {
        return 200;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
