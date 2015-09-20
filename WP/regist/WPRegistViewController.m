//
//  WPRegistViewController.m
//  WP
//
//  Created by apple on 15/9/12.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import "WPRegistViewController.h"

#define UISCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT  [UIScreen mainScreen].bounds.size.height

@interface WPRegistViewController ()

@end

@implementation WPRegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.title = @"注册账号";
    
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loginViewBackground"]];
    bgView.frame = CGRectMake(0, 0, UISCREENWIDTH, UISCREENHEIGHT);
    [self.view addSubview:bgView];
    
    UILabel *phoneNumLab = [[UILabel alloc]initWithFrame:CGRectMake(14, 139, 68, 21)];
    phoneNumLab.text = @"手机号码";
    [phoneNumLab setTextColor:[UIColor orangeColor]];
    [self.view addSubview:phoneNumLab];
    
    UILabel *checkCodeLab =[[UILabel alloc] initWithFrame:CGRectMake(14, 221, 68, 21)];
    checkCodeLab.text = @" 验 证 码";
    [checkCodeLab setTextColor:[UIColor orangeColor]];
    [self.view addSubview:checkCodeLab];
    
    UILabel *nickNameLab = [[UILabel alloc] initWithFrame:CGRectMake(24, 303, 49, 21)];
    nickNameLab.text=@"昵   称";
    [nickNameLab setTextColor:[UIColor orangeColor]];
    [self.view addSubview:nickNameLab];
    
    UILabel *passwordLab = [[UILabel alloc] initWithFrame:CGRectMake(24, 384, 49, 21)];
    passwordLab.text = @"密   码";
    [passwordLab setTextColor:[UIColor orangeColor]];
    [self.view addSubview:passwordLab];
    
    UILabel *passwordAgainLab = [[UILabel alloc] initWithFrame:CGRectMake(14, 468, 68, 21)];
    passwordAgainLab.text = @"确认密码";
    [passwordAgainLab setTextColor:[UIColor orangeColor]];
    [self.view addSubview:passwordAgainLab];
    
    UITextField *phoneNumText = [[UITextField alloc] initWithFrame:CGRectMake(101, 135, 226, 30)];
    phoneNumText.placeholder = @"输入手机号码";
    phoneNumText.borderStyle = UITextBorderStyleRoundedRect;
    phoneNumText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:phoneNumText];
    
    UITextField *checkCodeText = [[UITextField alloc] initWithFrame:CGRectMake(101, 217, 140, 30)];
    checkCodeText.placeholder = @"输入验证码";
    checkCodeText.borderStyle = UITextBorderStyleRoundedRect;
    checkCodeText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:checkCodeText];
    
    UITextField *nickNameText = [[UITextField alloc] initWithFrame:CGRectMake(101, 299, 226, 30)];
    nickNameText.placeholder = @"输入昵称";
    nickNameText.borderStyle = UITextBorderStyleRoundedRect;
    nickNameText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:nickNameText];
    
    UITextField *passwordText = [[UITextField alloc] initWithFrame:CGRectMake(101, 380, 226, 30)];
    passwordText.placeholder = @"输入密码";
    passwordText.borderStyle = UITextBorderStyleRoundedRect;
    passwordText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:passwordText];
    
    UITextField *passwordAgainText = [[UITextField alloc] initWithFrame:CGRectMake(101, 464, 226, 30)];
    passwordAgainText.placeholder = @"再次输入密码";
    passwordAgainText.borderStyle = UITextBorderStyleRoundedRect;
    passwordAgainText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:passwordAgainText];
    
    UIButton *registBtn = [[UIButton alloc] init];
    registBtn.frame = CGRectMake(UISCREENWIDTH * 0.3, UISCREENHEIGHT * 0.85, UISCREENWIDTH * 0.4, 50);
    [registBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [registBtn setBackgroundImage:[UIImage imageNamed:@"loginBtnBackground"] forState:UIControlStateNormal];
    [self.view addSubview:registBtn];
    
    UIButton *getCodeBtn = [[UIButton alloc] initWithFrame:CGRectMake(251, 219, 76, 25)];
    [getCodeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [getCodeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [getCodeBtn setBackgroundImage:[UIImage imageNamed:@"darkOrangeRect"] forState:UIControlStateNormal];
    getCodeBtn.titleLabel.font = [UIFont systemFontOfSize:15.0];
    [self.view addSubview:getCodeBtn];
    
    self.view.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fingerTapped:)];
    [self.view addGestureRecognizer:singleTap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)fingerTapped:(UITapGestureRecognizer *)gestureRecognizer
{
    [self.view endEditing:YES];
}

@end
