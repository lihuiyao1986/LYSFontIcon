//
//  ViewController.m
//  LYSFontIcon
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LYSFontIcon.h"

@interface ViewController ()

@property(nonatomic,strong)UIImageView *icon1;

@property(nonatomic,strong)UIImageView *icon2;

@property(nonatomic,strong)UIImageView *icon3;

@end

@implementation ViewController


-(UIImageView *)iconImageView:(LYSFontIconInfo*)info{
    UIImageView *icon = [[UIImageView alloc]initWithImage:[UIImage iconWithInfo:info]];
    icon.contentMode = UIViewContentModeCenter;
    return icon;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.icon1 = [self iconImageView:LYSFontIconInfoMake(@"\U0000e6a0", 26, [UIColor redColor])];
    self.icon1.frame = CGRectMake(60, 120, CGRectGetWidth(self.view.frame) - 120, 100);
    self.icon2 = [self iconImageView:LYSFontIconInfoMake(@"\U0000e6a0", 26, [UIColor grayColor])];
    self.icon2.frame = CGRectMake(60, CGRectGetMaxY(self.icon1.frame), CGRectGetWidth(self.view.frame) - 120, 100);
    self.icon3 = [self iconImageView:LYSFontIconInfoMake(@"\U0000e6a3", 26, [UIColor greenColor])];
    self.icon3.frame = CGRectMake(60, CGRectGetMaxY(self.icon2.frame), CGRectGetWidth(self.view.frame) - 120, 100);
    [self.view addSubview:self.icon1];
    [self.view addSubview:self.icon2];
    [self.view addSubview:self.icon3];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
