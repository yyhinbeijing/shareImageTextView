//
//  UIView+Title.h
//  LaundryFaction
//
//  Created by fielx on 15/5/15.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CrazyBasisLabel.h"

/**
 *  常用lable 编写
 */

@interface UIView (Title)
//-(CrazyBasisLabel *)setTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment;
//
//
//

-(CrazyBasisLabel *)setContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment;


-(CrazyBasisLabel *)setMainTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height;

-(CrazyBasisLabel *)setContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment height:(float)height;


-(CrazyBasisLabel *)setTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height;
//背景白色
-(CrazyBasisLabel *)addTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)heigh;
-(CrazyBasisLabel *)addContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment height:(float)height;

//
//
//-(CrazyBasisLabel *)setTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height;
//
//
//-(CrazyBasisLabel *)setTitle:(NSString *)title leftImageString:(NSString *)string originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height;

@end
