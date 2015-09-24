//
//  WPLoginViewController.m
//  WP
//
//  Created by apple on 15/9/11.
//  Copyright (c) 2015年 诸葛蚂蚱. All rights reserved.
//

#import "WPLoginViewController.h"
#import "AdDataModel.h"
#import "AdScrollView.h"
#import "WPRegistViewController.h"
#import "WPHomeViewController.h"

#define UISCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT  [UIScreen mainScreen].bounds.size.height

@interface WPLoginViewController ()

@end

@implementation WPLoginViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    NSLog(@"sa");
    
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loginViewBackground"]];
    bgView.frame = CGRectMake(0, 0, UISCREENWIDTH, UISCREENHEIGHT);
    [self.view addSubview:bgView];
    
    AdScrollView * scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 20, UISCREENWIDTH, UISCREENHEIGHT*0.4)];
    AdDataModel * dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];

    scrollView.imageNameArray = dataModel.imageNameArray;
    scrollView.PageControlShowStyle = UIPageControlShowStyleRight;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    
    [scrollView setAdTitleArray:dataModel.adTitleArray withShowStyle:AdTitleShowStyleLeft];
    
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    [self.view addSubview:scrollView];
    
    
    UITextField *phoneNumText = [[UITextField alloc]init];
    phoneNumText.frame = CGRectMake(UISCREENWIDTH * 0.25, UISCREENHEIGHT * 0.5, UISCREENWIDTH * 0.5, 30);
    phoneNumText.placeholder = @"手机号";
    phoneNumText.borderStyle = UITextBorderStyleRoundedRect;
    phoneNumText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:phoneNumText];
    
    UITextField *passwordText = [[UITextField alloc] init];
    passwordText.frame = CGRectMake(UISCREENWIDTH * 0.25, UISCREENHEIGHT * 0.5 + 80, UISCREENWIDTH * 0.5, 30);
    passwordText.placeholder = @"密码";
    passwordText.borderStyle = UITextBorderStyleRoundedRect;
    passwordText.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:passwordText];
    
    UIButton *loginBtn = [[UIButton alloc] init];
    loginBtn.frame = CGRectMake(UISCREENWIDTH * 0.3, UISCREENHEIGHT * 0.75, UISCREENWIDTH * 0.4, 50);
    [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginBtn setBackgroundImage:[UIImage imageNamed:@"loginBtnBackground"] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    UIButton *registBtn = [[UIButton alloc]init];
    registBtn.frame = CGRectMake(UISCREENWIDTH * 0.05, UISCREENHEIGHT * 0.9, UISCREENWIDTH * 0.3, 30);
    [registBtn setTitle:@"注册账号" forState:UIControlStateNormal];
    [registBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [registBtn addTarget:self action:@selector(regist:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registBtn];
    
    UIButton *forgetPasswordBtn = [[UIButton alloc]init];
    forgetPasswordBtn.frame = CGRectMake(UISCREENWIDTH * 0.65, UISCREENHEIGHT * 0.9 , UISCREENWIDTH * 0.3, 30);
    [forgetPasswordBtn setTitle:@"找回密码" forState:UIControlStateNormal];
    [forgetPasswordBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:forgetPasswordBtn];
    
    self.navigationController.navigationBarHidden = YES;
    
    //点击空白处退出键盘
    self.view.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fingerTapped:)];
    [self.view addGestureRecognizer:singleTap];
    
}

-(void)regist:(UIButton *)registerBtn
{
    WPRegistViewController *registView = [[WPRegistViewController alloc] init];
    [self.navigationController pushViewController:registView animated:YES];
}
-(void)login:(UIButton *)loginBtn
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    WPHomeViewController *home = [[WPHomeViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:home];
    [window setRootViewController:nav];
    window.rootViewController = nav;
}

//点击空白处退出键盘
-(void)fingerTapped:(UITapGestureRecognizer *)gestureRecognizer
{
    [self.view endEditing:YES];
}


@end
