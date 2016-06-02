//
//  XHArtSky_RootTabBarController.m
//  ArtSky
//
//  Created by JXH on 16/6/1.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "XHArtSky_RootTabBarController.h"
#import "XHArtSky_RootNavigationController.h"

@interface XHArtSky_RootTabBarController ()

@end

@implementation XHArtSky_RootTabBarController

#pragma mark - system Method
- (void)viewDidLoad {
    [super viewDidLoad];

    /** 添加带导航的子视图控制器*/
    [self addSubControllersWithNav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - setupUI（创建带导航的子视图控制器：可进行权限控制）
/** 添加带导航的子视图控制器*/
- (void)addSubControllersWithNav{

    /** 类关键词*/
    NSArray *ctrlNameArray = @[@"Exhibition", @"Auction", @"Found", @"Shop"];
    /** 控制器名*/
    NSArray *titleNameArray = @[@"展览", @"拍卖", @"发现", @"商城"];
    /** 图片*/
    
    for (int i = 0; i < ctrlNameArray.count; i ++) {
        /** 类名*/
        NSString *classNameStr = [NSString stringWithFormat:@"XHArtSky_%@MainViewController",ctrlNameArray[i]];
        
        /** 获取类*/
        Class clazz = NSClassFromString(classNameStr);
        
        /** 创建类对象*/
        UIViewController *ctrl = [[clazz alloc] init];
        
        /** 图片与选中图片*/
        NSString *imageName = [NSString stringWithFormat:@"Tabbar%d",i + 1];
        NSString *selImageName = [NSString stringWithFormat:@"Tabbar%d_sel",i + 1];
        
        /** 设置并添加*/
        [self configAndAddSubController:ctrl withTitle:titleNameArray[i] imageName:imageName selectedImageName:selImageName];
    }
    
}
/** 配置tabBarItem：title、image、selectedImage*/
- (void)configAndAddSubController:(UIViewController *)ctrl withTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName{

    /** 创建导航控制器*/
    XHArtSky_RootNavigationController *rootNav = [[XHArtSky_RootNavigationController alloc] initWithRootViewController:ctrl];
    /** 添加为TabBar子视图*/
    [self addChildViewController:rootNav];
    
    /** 设置图片与选中图片*/
    ctrl.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    /** 设置标题*/
    ctrl.title = title;
    
    /** 设置字体与颜色*/
    [ctrl.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Light" size:11],NSForegroundColorAttributeName:[UIColor darkGrayColor]} forState:UIControlStateNormal];
    [ctrl.tabBarItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Light" size:11],NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    

}


@end
