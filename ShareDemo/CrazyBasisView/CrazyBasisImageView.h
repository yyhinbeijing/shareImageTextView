//
//  CrazyBasisImageView.h
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^clickImageViewBlock)(id obj);
#import "UIImageView+WebCache.h"
#import "UIImage+FileName.h"

/**
 *  基础ImageView
 */
@interface CrazyBasisImageView : UIImageView


@property (copy,nonatomic) clickImageViewBlock mClickBlock;

/**
 *  加载图片
 */
-(void)crazyBasisImageViewLoadUrlString:(NSString *)string placeholderImageString:(NSString *)imageString;

-(void)crazyBasisImageViewLoadUrlString:(NSString *)string placeholderImageString:(NSString *)imageString completed:(clickImageViewBlock)block;
/**
 *  圆角图片
 */
-(void)crazyBasisImageViewLoadRoundedCornersUrlString:(NSString *)string placeholderImageString:(NSString *)imageString;

/**
 *  加载图片 不添加缓存
 */
-(void)setFileImageWithName:(NSString *)imageString;

/**
 *  适应图片大小
 */
-(void)setImageFrame;

/**
 *添加点击事件加处理
 */
-(void)addTapObj:(id)obj;

-(void)clickImageView:(clickImageViewBlock)block;
@end
