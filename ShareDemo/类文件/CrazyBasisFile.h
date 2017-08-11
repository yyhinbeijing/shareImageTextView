//
//  CrazyBasisFile.h
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//



/**
 *   
    常用宏
    CrazyClass  为常用父类   项目中所有类  均继承该文件夹内的类
 
    1.tabbar 介绍在  CrazyTabbarViewController.h 上有介绍
 
    2.CrazyBasisCategory 包含类目  
 
 */

#ifndef MarketManage_CrazyBasisFile_h
#define MarketManage_CrazyBasisFile_h

#define SCREENWIDTH   (CGRectGetWidth([UIScreen mainScreen].bounds))
#define SCREENHEIGHT  (CGRectGetHeight([UIScreen mainScreen].bounds))
#define STATUSBARHEIGHT (CGRectGetHeight([UIApplication sharedApplication].statusBarFrame))
#define NAVIGATIONBAR_HEIGHT (self.navigationController.navigationBar.bounds.size.height)
#define TABBARHEIGHT (CGRectGetHeight(self.tabBarController.tabBar.bounds))

#import "CrazyBasisImageView.h"
#import "CrazyBasisLabel.h"
#import "CrazyBasisButton.h"
#import "CrazyBasisView.h"
//#import "UIView+CrazyFrame.h"
#import "UIColor+RGB.h"
#import "PureLayout.h"

// LZ
#import "NSString+LZExt.h"
#import "UIView+LZFrame.h"

// MDF
//#import "NSString+MDF.h"
//#import "NSArray+MDF.h"
//#import "NSMutableArray+MDF.h"
//#import "NSDictionary+MDF.h"
//#import "NSMutableDictionary+MDF.h"
//#import "SKTableViewBaseCell.h"

#define C1 [UIColor colorWithRed:152/255.0 green:66/255.0 blue:77/255.0 alpha:1]
#define C2 [UIColor colorWithRed:59/255.0 green:59/255.0 blue:59/255.0 alpha:1]
#define C3 [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.7]
#define C4 [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4]
#define C5 [UIColor colorWithRed:212/255.0 green:212/255.0 blue:212/255.0 alpha:1]
#define C6 [UIColor colorWithRed:55/255.0 green:219/255.0 blue:190/255.0 alpha:1]
#define C7 [UIColor colorWithRed:34/255.0 green:178/255.0 blue:240/255.0 alpha:1]
#define C8 [UIColor colorWithRed:255/255.0 green:116/255.0 blue:64/255.0 alpha:1]
#define C9 [UIColor colorWithRed:249/255.0 green:194/255.0 blue:49/255.0 alpha:1]
#define C10 [UIColor colorWithRed:234/255.0 green:104/255.0 blue:162/255.0 alpha:1]
#define C11 [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1]
#define C12 [UIColor colorWithRed:239/255.0 green:41/255.0 blue:10/255.0 alpha:1]

#define CBGCELL [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1]
#define LINE_COLOR [UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1]

typedef void (^completeBlock)(id obj);
typedef void (^SimpleBlock)(void);
typedef void (^BoolBlock)(BOOL);
typedef void(^HttpCompletionBlock)(BOOL success, NSString* errMsg, id data);
typedef void(^RequestSuccess)(BOOL success);

#define H1 11
#define H2 12
#define H3 13
#define H4 14
#define H5 15
#define H6 16
#define H7 17

#define TICK   NSDate *startTime = [NSDate date]
#define TOCK   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow])

#define DISTANCEX 10
#define DISTANCEY 10

#define CrazyColor(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define StringValue(number) [NSString stringWithFormat:@"%d",number]


#define CrazyNil(text) (text == nil ? @"" : text)

#ifndef __OPTIMIZE__
# define NSLog(...) NSLog(__VA_ARGS__)
#else
# define NSLog(...) {}
#endif

#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define SCREEN_SCALE  ([UIScreen mainScreen].scale)

#define UMENG_APPKEY @"57d22d60e0f55a58a5002158"

/// 验证码倒计时, sec
#define CAPTCHA_COUNT_DOWN 120.0

//typedef NS_ENUM(SKTableViewCellEventCode, SKTableViewCellEventCodeType) {
//    SKTableViewCellEventCodeTypeUnkown,
//    SKTableViewCellEventCodeTypeSelectAddressEnd,
//    SKTableViewCellEventCodeTypeSelectCoupon,
//    SKTableViewCellEventCodeTypeSettleAccountChooseGoodsCell,
//    SKTableViewCellEventCodeTypeOrderConsigneeNameChagned,
//    SKTableViewCellEventCodeTypeOrderConsigneePhoneChagned,
//    SKTableViewCellEventCodeTypeOrderDetailAddressChagned,
//    SKTableViewCellEventCodeTypeOrderCommentChagned,
//    
//};

/// 支付成功后延时若干秒数再行通知
extern CGFloat const kPaySuccessNotifyDelay;

#endif
