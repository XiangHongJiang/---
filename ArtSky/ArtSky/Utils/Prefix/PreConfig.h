//
//  PreConfig.h
//  Tools
//
//  Created by JXH on 15/4/19.
//  Copyright © 2015年 JXH. All rights reserved.
//

#ifndef PreConfig_h
#define PreConfig_h


#define JPlaceHoderImage [UIImage imageNamed:@"iconPlaceHold.png"]
#define JPlaceHolderImageName @"placeHolderImage"

//-------------------颜色相关-------------------------
#pragma mark -- 颜色

// 随机数
#define JRandomNum(x) arc4random_uniform(x)
// 颜色
#define JColorRGB(r, g, b) JColorRGBA(r, g, b, 1.000f)
#define JColorRGBA(r, g, b, a) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:(a)]
// 随机颜色
#define JRandomColor JColorRGB(JRandomNum(128) + 128, JRandomNum(128) + 128, JRandomNum(128) + 128)

#define JColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

/**
 *  标题文字颜色 [UIColor colorWithRed:38/255.0 green:38/255.0 blue:38/255.0 alpha:1];//深灰
 */
#define JColorFontTitle JColorRGB(38, 38, 38)
/**
 *  内容文字颜色 [UIColor colorWithRed:115/255.0 green:115/255.0 blue:115/255.0 alpha:1]//灰
 */
#define JColorFontContent JColorRGB(115, 115, 115)
/**
 *  细节文字颜色[UIColor colorWithRed:166/255.0 green:166/255.0 blue:166/255.0 alpha:1]//浅灰
 */
#define JColorFontDetail JColorRGB(166, 166, 166)
/**
 *  主要颜色(绿)
 */
#define JColorMain JColorRGB(38, 204, 92)
/**
 *  辅助颜色(橙)
 */
#define JColorAssist JColorRGB(255, 180, 0)
/**
 *  提醒颜色(红)
 */
#define JColorAlert JColorRGB(234, 86, 66)
/**
 *  背景色(浅白)[UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1]
 */
#define JColorBg JColorRGB(239, 239, 244)
/**
 *  导航条颜色（白）
 */
#define JColorNavBg JColorRGB(255, 255, 255)
/**
 *  浅灰色 透明度
 */
#define JColorLightGray JColorRGB(242, 242, 242)
/**
 *  灰色 透明度
 */
#define JColorGray JColorRGB(166, 166, 166)
/**
 *  深灰色 透明度
 */
#define JColorDarkGray JColorRGB(38, 38, 38)
/**
 *  导航默认色@"0x5ed8cd"
 */
#define JColorNavDefault JColorRGB(94, 216, 205)
/**
 *  cell默认背景色@"0xeeeded"
 */
#define JColorCellDefault JColorRGB(255, 255, 255)
/**
 *  View默认背景色
 */
#define JColorViewDefault JColorRGB(238, 237, 237)

#pragma mark -- 大小数值相关
//-------------------获取设备大小相关-------------------------
// 轮播视图高度
#define JAdsViewHeight 150
// defaultTag
#define JDefaultTag 100
// 自身宽度
#define JSelfW self.bounds.size.width
// 自身高度
#define JSelfH self.bounds.size.height
// View自身宽度
#define JSelfViewW self.view.bounds.size.width
// View自身高度
#define JSelfViewH self.view.bounds.size.height
// Label高
#define JLabelH 20
// 间距
#define JMargin 10
// 线高
#define JLineViewHeight 2
// 快速导航高度
#define JQuickNavHeight 40
// NavBar高度
#define JNavigationBarHeight (44.0)
// 状态栏高度
#define JStateBarHeight (20.0)
// 顶部高度
#define JTopSpace (JNavigationBarHeight + JStateBarHeight)
// 底部 TabBar 高度
#define JTabBarHeight 49
// 动态获取屏幕宽高
#define JScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define JScreenWidth ([UIScreen mainScreen].bounds.size.width)
// 默认按钮高度
#define JButtonHeight 40
// 弹出框距左右边距
#define JLeftPedding 25
// 普通视图左右边距
#define JPedding 10
// 圆角
#define JCornerRadius 4.0f
// 默认子标题字体大小
#define SubTitleFont [UIFont systemFontOfSize:12.0]
//
//-------------------时间相关-------------------------
// 弹出框动画时间
#define JAnimationTime 0.25f
// 提示框弹出时间
#define JAlertViewPopTime 0.15f
// 提示框显示时间
#define JAlertViewShowTime 2.5f

#pragma mark - 系统相关
//检查系统版本
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)//不变
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)//降
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)//升
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

// 是否输出 Log
#define isShowJLog 1
#if isShowJLog
#define JLog(Format, ...) fprintf(stderr,"%s: %s->%d\n%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __FUNCTION__, __LINE__, [[NSString stringWithFormat:Format, ##__VA_ARGS__] UTF8String])
#else
#define JLog(Format, ...)
#endif

// 自定义Log
#ifdef DEBUG
#define XHLog(...) NSLog(__VA_ARGS__)
#else
#define XHLog(...)
#endif

// 系统globalQueue
#define JGlobalQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

// 当前版本
#define CURRENT_OS_VERSION  [[[UIDevice currentDevice] systemVersion] floatValue]

// 字体设置
#define Font(fontSize)      [UIFont fontWithName:@"HelveticaNeue-Light" size:fontSize]
#define FontBold(fontSize)      [UIFont fontWithName:@"HelveticaNeue-Bold" size:fontSize]
#define FontSystem(fontSize)      [UIFont systemFontOfSize:fontSize]
#define FontSystemBold(fontSize)  [UIFont boldSystemFontOfSize:fontSize]

// appDelegate
#define APP_DELEGATE      [UIApplication sharedApplication].delegate

// 获取视图相对屏幕的比例与高度
#define JScaleWidth(width)    (JScreenWidth * 1.0/ width)
#define JHeightAboutScreen(width,height) JScaleWidth(width) * height


#endif /* PreConfig_h */
