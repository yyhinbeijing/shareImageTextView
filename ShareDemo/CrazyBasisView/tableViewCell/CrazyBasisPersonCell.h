//
//  CrazyBasisPersonCell.h
//  LaundryFaction
//
//  Created by fielx on 15/5/8.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import "CrazyBasisCell.h"

@interface CrazyBasisPersonCell : CrazyBasisCell


/**
 *  联系方式
 */
@property (retain,nonatomic) CrazyBasisLabel *mPhoneLabel;


/**
 *  城市
 */
@property (retain,nonatomic) CrazyBasisLabel *mCityLabel;

/**
 *  地址
 */
@property (retain,nonatomic) CrazyBasisLabel *mAddressLabel;

@end
