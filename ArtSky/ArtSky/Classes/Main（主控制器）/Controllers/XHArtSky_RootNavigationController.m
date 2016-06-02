//
//  XHArtSky_RootNavigationController.m
//  ArtSky
//
//  Created by JXH on 16/6/1.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "XHArtSky_RootNavigationController.h"

@interface XHArtSky_RootNavigationController ()

@end

@implementation XHArtSky_RootNavigationController

#pragma mark - system Method
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 初始化基础导航属性*/
    [self configRootNav];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - setUP
/** 初始化导航属性*/
- (void)configRootNav{

    /** 设置标题颜色与字体*/
    [self.navigationBar setTitleTextAttributes:@{
                                                NSForegroundColorAttributeName:[UIColor colorWithWhite:0.200 alpha:1.000],
                                                NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Light" size:16]
                                                }];

}


@end
