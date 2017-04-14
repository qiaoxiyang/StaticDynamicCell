//
//  TableViewController.m
//  StaticCell
//
//  Created by xiyang on 2017/4/13.
//  Copyright © 2017年 xiyang. All rights reserved.
//

#import "TableViewController.h"
#import "XYTableViewCell.h"
@interface TableViewController ()

@property(nonatomic, retain)NSMutableArray *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"产品详情";
    [self initSubViews];
    [self requestData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initSubViews{
    [self.tableView registerNib:[UINib nibWithNibName:@"XYTableViewCell" bundle:nil] forCellReuseIdentifier:@"XYTableViewCell"];

    
    self.tableView.tableFooterView=[UIView new];
    self.tableView.estimatedRowHeight = 200;
    
    
}


-(void)requestData{
    
    
    self.lab_product.text = @"波音747";
    self.lab_info.text = @"波音747（英语：Boeing 747）是由美国波音公司在上个世纪六十年代末在美国空军的主导下推出的大型商用宽体客/货运输机（Wide-body commercial airliner and cargo transport aircraft）亦为世界上第一款宽体民用飞机，自1970年投入服务后，到空客A380投入服务之前，波音747保持全世界载客量最高飞机的纪录长达37年。";
    self.dataSource = [NSMutableArray arrayWithObjects:@"开着可爽了",@"能够上天啊",@"66666666666我要上天，请不要拦我",@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",@"开着可爽了",@"能够上天啊",@"66666666666我要上天，请不要拦我",@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", nil];
    
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section==1) {
        return self.dataSource.count;
    }
    return [super tableView:tableView numberOfRowsInSection:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section==1) {
        
        XYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XYTableViewCell" forIndexPath:indexPath];
        cell.lab_content.text = self.dataSource[indexPath.row];
        
        return cell;

    }
    return [super tableView:tableView cellForRowAtIndexPath:indexPath];
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        return [super tableView:tableView indentationLevelForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
    }
    return [super tableView:tableView indentationLevelForRowAtIndexPath:indexPath];
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return nil;
}
    
- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}
    
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section==1) {
        return 50;
    }
    return 0;
}
    
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return self.tableView.rowHeight;
}
    
- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    if (section==1){
        CGFloat w = self.view.bounds.size.width/2.0;
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 2*w, 50)];
        
        headerView.backgroundColor = [UIColor whiteColor];
        
        UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, w, 50)];
        [btn1 setTitle:@"评论" forState:UIControlStateNormal];
        [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btn1.backgroundColor = [UIColor redColor];
        [headerView addSubview:btn1];
        UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(w, 0,w, 50)];
        [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btn2.backgroundColor = [UIColor orangeColor];
        [btn2 setTitle:@"咨询" forState:UIControlStateNormal];
        [headerView addSubview:btn2];
        
        
        return headerView;
    }
    return nil;
}


@end
