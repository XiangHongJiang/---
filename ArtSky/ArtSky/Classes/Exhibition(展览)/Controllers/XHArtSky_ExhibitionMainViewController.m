//
//  XHArtSky_ExhibitionMainViewController.m
//  ArtSky
//
//  Created by JXH on 16/6/1.
//  Copyright © 2016年 JXH. All rights reserved.
//

#import "XHArtSky_ExhibitionMainViewController.h"
#import "XHArtSky_ExhibitionDetailViewController.h"

@interface XHArtSky_ExhibitionMainViewController ()

@end

@implementation XHArtSky_ExhibitionMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self.navigationController pushViewController:[[XHArtSky_ExhibitionDetailViewController alloc] init] animated:YES];
    
}

@end
