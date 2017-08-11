//
//  CrazyBasisGoodsCell.m
//  LaundryFaction
//
//  Created by fielx on 15/5/11.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import "CrazyBasisGoodsCell.h"




@implementation CrazyBasisGoodsCell


//-(CrazyPurchaseQuantityView *)mQuantityView
//{
//    if (_mQuantityView == nil) {
//        CrazyPurchaseQuantityView *qView = [[CrazyPurchaseQuantityView alloc]initWithImage:[UIImage imageNamed:@"list_number"]];
//        qView.mAddImage = [UIImage imageNamed:@"list_add"];
//        qView.delegate = self;
//        self.mQuantityView = qView;
//        [self.mBgView addSubview:qView];
//    }
//    return _mQuantityView;
//}
//
-(CrazyBasisLabel *)mPrice
{
    if (!_mPrice) {
        self.mPrice = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mPrice];
    }
    return _mPrice;
}

-(CrazyBasisLabel *)mOriginalPrice
{
    if (!_mOriginalPrice) {
        self.mOriginalPrice =  [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mOriginalPrice];
    }
    return _mOriginalPrice;
}

-(CrazyBasisLabel *)mEventLabel
{
    if (!_mEventLabel) {
        self.mEventLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mEventLabel];
    }
    return _mEventLabel;
}



//-(void)crazyPurchaseQuantityView:(CrazyPurchaseQuantityView *)qView currentNumber:(int)currentNumber
//{
//
//}

@end
