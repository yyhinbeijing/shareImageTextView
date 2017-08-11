//
//  CrazyBasisCell.h
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import <UIKit/UIKit.h>

#define LABEL_HEIGHT 17
#define LABEL_DISTANCEY 7


#import "CrazyBasisLabel.h"
#import "CrazyBasisImageView.h"
#import "CrazyBasisView.h"
#import "CrazyBasisButton.h"
#import "CrazyBasisFile.h"
//#import "CrazyBasisFrameTool.h"

/**
 *  基础cell
 */
@interface CrazyBasisCell : UITableViewCell


/**
 *  名称
 */
@property (retain,nonatomic) CrazyBasisLabel *mNameLabel;


/**
 *  内容
 */
@property (retain,nonatomic) CrazyBasisLabel *mContentLabel;





/**
 *  时间
 */
@property (retain,nonatomic) CrazyBasisLabel *mTime;


/**
 *  图片
 */
@property (retain,nonatomic) CrazyBasisImageView *mImageView;


/**
 *  背景视图
 */
@property (retain,nonatomic) CrazyBasisView *mBgView;


/**
 *  选择按钮
 */
@property (retain,nonatomic) CrazyBasisButton *mSelectButton;


/**
 *  分割线
 */
@property (retain,nonatomic) CrazyBasisImageView *mLineImageView;


/**
 *  方向视图
 */
@property (retain,nonatomic) CrazyBasisImageView *mDirectionImageView;

-(void)crazyBasisCellContent:(id)info;

/**
 *  显示入口箭头 传入Cell高度
 */
-(void)crazyCellShowDirectionWithCellHeight:(float)height;

-(void)tapSelectButton:(CrazyBasisButton *)button;
@end
