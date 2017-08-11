//
//  CrazyShareModel.h
//  isellishot
//
//  Created by secoo on 16/1/13.
//  Copyright © 2016年 SecooArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "WXApi.h"

typedef void (^completeBlock)(id obj);


typedef NS_ENUM(int, CrazyShareType)
{
    /**
     *  微信好友
     */
    CrazyShareTypeWeiXin = 0,
    /**
     *  微信朋友圈
     */
    CrazyShareTypeWeiXinCircle = 1
};

@interface CrazyShareModel : NSObject

/**
 *  分享地址
 */
@property (retain,nonatomic) NSString *mWebUrl;

/**
 *  标题
 */
@property (retain,nonatomic) NSString *mTitle;

/**
 *  内容
 */
@property (retain,nonatomic) NSString *mContent;


/**
 *  图片
 */
@property (retain,nonatomic) UIImage *mImage;

/**
 *  图片地址
 */
@property (retain,nonatomic) NSString *mImageUrl;

/**
 *  分享类型
 */
@property (assign,nonatomic) CrazyShareType  mType;

/*** 分享 */
-(void)share;

+(void)getImageWithUrl:(NSString *)urlString  completeString:(completeBlock)block;


+(void)shareSuccessful;

@end
