//
//  CrazyBasisGoodsCell.h
//  LaundryFaction
//
//  Created by fielx on 15/5/11.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import "CrazyBasisCell.h"

//#import "UILabel+DeleteLine.h"

//#import "CrazyPurchaseQuantityView.h"

@interface CrazyBasisGoodsCell : CrazyBasisCell
//<CrazyPurchaseQuantityViewDelegate>

/**
 *  折扣
 */
@property (retain,nonatomic) CrazyBasisLabel *mEventLabel;




/**
 *  价格
 */
@property (retain,nonatomic) CrazyBasisLabel *mPrice;


/**
 *  原价
 */
@property (retain,nonatomic) CrazyBasisLabel *mOriginalPrice;


/**
 *  数量视图
 */
//@property (weak,nonatomic) CrazyPurchaseQuantityView *mQuantityView;



//-(void)crazyPurchaseQuantityView:(CrazyPurchaseQuantityView *)qView currentNumber:(int)currentNumber;
@end
