//
//  UIColor+RGB.h
//  旅游通
//
//  Created by jiaoguangzhou on 14-1-10.
//  Copyright (c) 2014年 DongLan. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGB(c) [UIColor colorWithRed:((c>>16)&0xFF)/255.0 green:((c>>8)&0xFF)/255.0 blue:((c)&0xFF)/255.0 alpha:1.0]
#define RBGA(c) [UIColor colorWithRed:((c>>24)&0xFF)/255.0 green:((c>>16)&0xFF)/255.0 blue:((c>>8)&0xFF)/255.0 alpha:((c)&0xFF)/255.0]

@interface UIColor (RGB)
///更具RGB color代码返回颜色
+ (UIColor *) colorFromHexRGB:(NSString *) inColorString;

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(float)alpha;

+ (UIColor *)lz_randomColor;

@end
