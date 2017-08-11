//
//  CrazyBasisPersonCell.m
//  LaundryFaction
//
//  Created by fielx on 15/5/8.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import "CrazyBasisPersonCell.h"

@implementation CrazyBasisPersonCell


-(CrazyBasisLabel *)mPhoneLabel
{
    if (!_mPhoneLabel) {
        self.mPhoneLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mPhoneLabel];
    }
    return _mPhoneLabel;
}

-(CrazyBasisLabel *)mAddressLabel
{
    if (!_mAddressLabel) {
        self.mAddressLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mAddressLabel];
    }
    return _mAddressLabel;
}

-(CrazyBasisLabel *)mCityLabel
{
    if (!_mCityLabel) {
        self.mCityLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mCityLabel];
    }
    return _mCityLabel;
}

@end
