//
//  XHArtSky_MainViewController.m
//  ArtSky
//
//  Created by JXH on 16/6/1.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "XHArtSky_MainViewController.h"
/** 根TabBarCtrl：管理着带root导航的子视图控制器*/
#import "XHArtSky_RootTabBarController.h"

@interface XHArtSky_MainViewController ()

@end

@implementation XHArtSky_MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /** 添加管理的根视图控制器*/
    [self addRootTabBarCtrl];

}
#pragma mark - 添加根视图控制器，所有带导航的子视图受其管理
/** 添加管理的根视图控制器*/
- (void)addRootTabBarCtrl{
    
    XHArtSky_RootTabBarController *rootTabBarCtrl = [[XHArtSky_RootTabBarController alloc] init];
    /** 添加视图显示*/
    [self.view addSubview:rootTabBarCtrl.view];
    /** 添加指针引用*/
    [self addChildViewController:rootTabBarCtrl];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
