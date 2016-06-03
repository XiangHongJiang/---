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
                                                NSForegroundColorAttributeName:[UIColor whiteColor],
                                                NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Light" size:16]
                                                }];
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    /** 设置状态栏颜色与风格*/
    // Status Bar Style
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationSlide];
    // Hidden Status Bar
    [[UIApplication sharedApplication] setStatusBarHidden:NO];

    
    /** 设置返回手势*/
    [self respondsToSelector:@selector(interactivePopGestureRecognizer)];
    self.interactivePopGestureRecognizer.delegate = nil;

    
    /** 设置背景颜色*/
    self.navigationBar.barTintColor = JColorNavDefault;

}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    if (self.viewControllers.count) {//当导航管理的子视图控制器>0,即push到第二页
        /** 隐藏底部tabBar*/
        viewController.hidesBottomBarWhenPushed = YES;
        /** 隐藏导航栏，用自定义的导航视图*/
        self.navigationBar.hidden = YES;
    }
    /** 设置背景色，防止push出白线*/
    viewController.view.backgroundColor = [UIColor whiteColor];
    
    /** 执行父类push操作*/
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated{

    if (self.viewControllers.count == 2) {//当前要PUSH到首页子视图控制器
        /** 首页不隐藏导航*/
        self.navigationBar.hidden = NO;
    }
    
    return [super popViewControllerAnimated:animated];
}


@end
