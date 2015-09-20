//
//  restaurantCell.h
//  智能排队系统
//
//  Created by apple on 15/7/21.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface restaurantCell : UITableViewCell

//@property (weak,nonatomic) restaurant *restaurant;
@property (weak, nonatomic) IBOutlet UIImageView *restaurantImg;
@property (weak, nonatomic) IBOutlet UIImageView *starImg;
@property (weak, nonatomic) IBOutlet UIImageView *starImg2;
@property (weak, nonatomic) IBOutlet UIImageView *starImg3;
@property (weak, nonatomic) IBOutlet UIImageView *starImg4;
@property (weak, nonatomic) IBOutlet UIImageView *starImg5;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelQueue;
@property (weak, nonatomic) IBOutlet UILabel *labelTime;
@property (weak, nonatomic) IBOutlet UILabel *labelMoney;

    
@end
