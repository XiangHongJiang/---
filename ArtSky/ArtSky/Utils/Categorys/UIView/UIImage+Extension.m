//
//  UIImage+Extension.m
//  ArtSky
//
//  Created by Adam on 16/3/30.
//  Copyright © 2016年 fule. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    return [self imageWithColor:color rect:rect];
}

+ (UIImage *)imageWithColor:(UIColor *)color rect:(CGRect)rect
{

    // 1, 开启基于位图的图形上下文
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 2, 画一个color颜色的矩形框
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    // 3, 拿到图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 4, 关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
    
}

@end
