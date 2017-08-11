//
//  CrazyBasisView.h
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CrazyBasisFile.h"
#import "CrazyBasisLabel.h"
#import "CrazyBasisButton.h"
#import "CrazyBasisImageView.h"
//#import "CrazyBasisFrameTool.h"

typedef void (^viewHeightBlock)(float height);
typedef void (^tapInteractionBlock)(id obj);


/**
 *  基础View
 */
@interface CrazyBasisView : UIView

/**
 *  点击回调
 */
@property (copy,nonatomic) tapInteractionBlock mInteractionBlock;

- (instancetype)initWithFrame:(CGRect)frame infoModel:(id)mModel;

//小交互
-(void)interactionBlock:(tapInteractionBlock)block;



@end
