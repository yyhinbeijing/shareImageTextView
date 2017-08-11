//
//  CrazyBasisButton.h
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CrazyBasisFile.h"


@class CrazyBasisButton;
typedef void (^tapButtonBlock)(CrazyBasisButton *button);


@interface CrazyBasisButton : UIButton

/**
 *  点击Block
 */
@property (copy,nonatomic) tapButtonBlock mTapBlock;


/**
 *  是否正在发送
 */
@property (assign,nonatomic) BOOL mIsLoad;


+(CrazyBasisButton *)buttonAddInView:(UIView *)view andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor andCorner:(BOOL)corner  andFrame:(CGRect)rect   andNormalImage:(UIImage *)normalImage andTextFont:(int)size andCorneNumberr:(int) cornerNumber andTarget:(id)controller andSelector:(SEL)selector;
//
///**
// *  添加默认与选中图片
// */
//-(void)crazyButtonSetNormalImage:(NSString *)normalImage selectImage:(NSString *)selectImage;
//
///**
// *  高亮与默认图片 和文字
// */
//-(void)crazyButtonSetNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage  normalString:(NSString *)normalString highlightedString:(NSString *)highlightedString normalTextColor:(UIColor *)normalTextColor  highlightedTextColor:(UIColor *)highlightedTextColor;
//
+(CrazyBasisButton *)buttonAddInView:(UIView *)view andFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size andTarget:(id)controller andSelector:(SEL)selector;

/**
 *  回调block
 */
+(CrazyBasisButton *)buttonAddInView:(UIView *)view andFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size tapButtonBlock:(tapButtonBlock)tapButtonBlock;


- (UIImage *)imageWithColor:(UIColor *)color;

+(CrazyBasisButton *)buttonandFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size tapButtonBlock:(tapButtonBlock)tapButtonBlock;

@end
