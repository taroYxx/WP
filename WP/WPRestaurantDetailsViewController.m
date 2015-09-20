//
//  WPRestaurantDetailsViewController.m
//  WP
//
//  Created by apple on 15/9/19.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import "WPRestaurantDetailsViewController.h"


#define UISCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT  [UIScreen mainScreen].bounds.size.height

@interface WPRestaurantDetailsViewController ()

@end

@implementation WPRestaurantDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
//    UIView *nameView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 140, 30)];
//    UILabel *nameLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 140, 30)];
//    [nameLab setText:@"绿茶餐厅（湖滨店）"];
//    [nameLab setTextColor:[UIColor orangeColor]];
//    [nameView addSubview:nameView];
//    
//    self.navigationItem.titleView = nameView;
    
    UILabel *backLab1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, UISCREENWIDTH, UISCREENHEIGHT*0.3)];
    [backLab1 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:backLab1];
    
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(10, 80, 160, 140)];
    [img setImage:[UIImage imageNamed:@"picturea"]];
    [self.view addSubview:img];
    
    UILabel *wordLab1 = [[UILabel alloc] initWithFrame:CGRectMake(175, 80, 86, 21)];
    [wordLab1 setText:@"星级评分:"];
    [wordLab1 setTextColor:[UIColor darkGrayColor]];
    wordLab1.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:wordLab1];
    
    UILabel *starLab = [[UILabel alloc] initWithFrame:CGRectMake(270, 80, 24, 21)];
    [starLab setText:@"4"];
    [starLab setTextColor:[UIColor darkGrayColor]];
    starLab.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:starLab];
    
    UILabel *wordLab2 = [[UILabel alloc] initWithFrame:CGRectMake(175, 105, 51, 21)];
    [wordLab2 setText:@"人均:"];
    [wordLab2 setTextColor:[UIColor darkGrayColor]];
    wordLab2.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:wordLab2];
    
    UILabel *costLab = [[UILabel alloc] initWithFrame:CGRectMake(230, 105, 37, 21)];
    [costLab setText:@"52元"];
    [costLab setTextColor:[UIColor darkGrayColor]];
    costLab.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:costLab];
    
    UILabel *wordLab3 = [[UILabel alloc] initWithFrame:CGRectMake(175, 130, 85, 21)];
    [wordLab3 setText:@"预计时间:"];
    [wordLab3 setTextColor:[UIColor darkGrayColor]];
    wordLab3.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:wordLab3];
    
    UILabel *timeLab = [[UILabel alloc] initWithFrame:CGRectMake(265, 130, 54, 21)];
    [timeLab setText:@"20分钟"];
    [timeLab setTextColor:[UIColor darkGrayColor]];
    timeLab.font = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:timeLab];
    
    UIButton *getQueueBtn = [[UIButton alloc] initWithFrame:CGRectMake(185, 160, 124, 30)];
    [getQueueBtn setBackgroundImage:[UIImage imageNamed:@"orangeKuang"] forState:UIControlStateNormal];
    [getQueueBtn setTitle:@"我要排队" forState:UIControlStateNormal];
    [getQueueBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.view addSubview:getQueueBtn];
    
    UIButton *collectBtn = [[UIButton alloc] initWithFrame:CGRectMake(185, 195, 50, 30)];
    [collectBtn setBackgroundImage:[UIImage imageNamed:@"orangeKuang"] forState:UIControlStateNormal];
    [collectBtn setTitle:@"收藏" forState:UIControlStateNormal];
    [collectBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.view addSubview:collectBtn];
    
    UIButton *evaluateBtn = [[UIButton alloc] initWithFrame:CGRectMake(260, 195, 50, 30)];
    [evaluateBtn setBackgroundImage:[UIImage imageNamed:@"orangeKuang"] forState:UIControlStateNormal];
    [evaluateBtn setTitle:@"评价" forState:UIControlStateNormal];
    [evaluateBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.view addSubview:evaluateBtn];
    
    UIView *backView2 = [[UIView alloc] initWithFrame:CGRectMake(0, UISCREENHEIGHT*0.42, UISCREENWIDTH, UISCREENHEIGHT*0.2)];
    [backView2 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:backView2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
