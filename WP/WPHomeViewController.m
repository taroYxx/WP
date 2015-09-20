//
//  WPHomeViewController.m
//  WP
//
//  Created by apple on 15/9/17.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import "WPHomeViewController.h"
#import "AdDataModel.h"
#import "AdScrollView.h"
#import "restaurantCell.h"
#import "WPRestaurantDetailsViewController.h"

#define UISCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT  [UIScreen mainScreen].bounds.size.height

@interface WPHomeViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation WPHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    AdScrollView * scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 20, UISCREENWIDTH, UISCREENHEIGHT*0.4)];
    AdDataModel * dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];
    
    scrollView.imageNameArray = dataModel.imageNameArray;
    scrollView.PageControlShowStyle = UIPageControlShowStyleRight;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    
    [scrollView setAdTitleArray:dataModel.adTitleArray withShowStyle:AdTitleShowStyleLeft];
    
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    [self.view addSubview:scrollView];
    
    [self setNav];
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 245, 375, 35)];
    [lab setBackgroundColor:[UIColor whiteColor]];
    [lab setText:@"推荐餐厅(今日餐厅)"];
    [lab setTextColor:[UIColor lightGrayColor]];
    [self.view addSubview:lab];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 280, 375, 250)];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 100;
    [self.view addSubview:tableView];
    
    UILabel *buttonLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 533, 375, 35)];
    [buttonLab setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:buttonLab];
    
    UIButton *personalBtn = [[UIButton alloc] initWithFrame:CGRectMake(UISCREENWIDTH/2-15, 536, 30, 30)];
    [personalBtn setBackgroundImage:[UIImage imageNamed:@"personalBtn"] forState:UIControlStateNormal];
    [self.view addSubview:personalBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置导航栏
-(void)setNav
{
    UIButton *map = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    map.frame = CGRectMake(0, 0, 20, 20);
    [map setBackgroundImage:[UIImage imageNamed:@"mapBtn"] forState:UIControlStateNormal];
//    [map addTarget:self action:@selector(checkMap) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *checkMapBtn = [[UIBarButtonItem alloc] initWithCustomView:map];
    UIButton *search = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    search.frame = CGRectMake(0, 0, 20, 20);
    [search setBackgroundImage:[UIImage imageNamed:@"searchBtn"] forState:UIControlStateNormal];
//    [search addTarget:self action:@selector(enterSearch) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *enterSearchBtn = [[UIBarButtonItem alloc] initWithCustomView:search];
    self.navigationItem.rightBarButtonItems = @[checkMapBtn, enterSearchBtn];
}

#pragma mark - 数据源方法
//1.告诉UITableView要显示几组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//2.告诉UITableView每组要显示几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
//3.告诉UITableView每一组每一行显示什么单元格内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *resetID = @"restaurant_cell";
    restaurantCell *cell = [tableView dequeueReusableCellWithIdentifier:resetID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"restaurantCell" owner:nil options:nil]firstObject];
    }

//    cell.restaurantImg.image = [UIImage imageWithData:dataImg];
//    //餐厅名称
//    cell.labelName.text = [[[result objectForKey:@"list"] objectAtIndex:indexPath.row] objectForKey:@"name"];
//    //前方排单
//    cell.labelQueue.text =[NSString stringWithFormat:@"前方排单:%@单",[[[result objectForKey:@"list"] objectAtIndex:indexPath.row] objectForKey:@"orders"]];
//    //预计时间
//    cell.labelTime.text =[NSString stringWithFormat:@"预计时间:%@分钟",[[[result objectForKey:@"list"] objectAtIndex:indexPath.row] objectForKey:@"expected"]];
//    //人均消费
//    cell.labelMoney.text =[NSString stringWithFormat:@"人均:%@元",[[[result objectForKey:@"list"] objectAtIndex:indexPath.row] objectForKey:@"consumption"]];
//    //星级图片
//    NSString *starNum = [[[result objectForKey:@"list"] objectAtIndex:indexPath.row] objectForKey:@"stars"];
//    if([starNum isEqual: @1])
//    {
//        cell.starImg2.hidden = YES;
//        cell.starImg3.hidden = YES;
//        cell.starImg4.hidden = YES;
//        cell.starImg5.hidden = YES;
//    }else if([starNum isEqual: @2])
//    {
//        cell.starImg3.hidden = YES;
//        cell.starImg4.hidden = YES;
//        cell.starImg5.hidden = YES;
//    }else if([starNum isEqual: @3])
//    {
//        cell.starImg4.hidden = YES;
//        cell.starImg5.hidden = YES;
//    }else if([starNum isEqual: @4])
//    {
//        cell.starImg5.hidden = YES;
//    }
    
    return cell;
}

#pragma mark - table view代理方法

//点击cell的跳转界面的点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WPRestaurantDetailsViewController *detailsView = [[WPRestaurantDetailsViewController alloc] init];
    [self.navigationController pushViewController:detailsView animated:YES];
}


@end
