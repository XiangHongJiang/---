//
//  UIView+Category.m
//  ArtSky
//
//  Created by Adam on 15/12/22.
//  Copyright © 2015年 fule. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

- (void)setBorderColor:(UIColor *)borderColor {

    [self.layer setBorderColor:borderColor.CGColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    
    [self.layer setBorderWidth:borderWidth];
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:cornerRadius];
}

@end
