//
//  UIView+Title.m
//  LaundryFaction
//
//  Created by fielx on 15/5/15.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import "UIView+Title.h"
@implementation UIView (Title)


-(CrazyBasisLabel *)setMainTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, height) andTextAlignment:algnment andTextColor:C2 andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
    if (haveLine) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(DISTANCEX, label.lz_bottom-1, SCREENWIDTH - 2*DISTANCEX, 1)];
        [self addSubview:imageView];
        imageView.backgroundColor = C2;
    }
    return label;
}






//-(CrazyBasisLabel *)setTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment 
//{
//    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, 40) andTextAlignment:algnment andTextColor:nil andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
//    if (haveLine) {
//        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(DISTANCEX, label.bottom, SCREENWIDTH - 2*DISTANCEX, 0.5)];
//        [self addSubview:imageView];
//        imageView.backgroundColor = LINE_COLOR;
//    }
//    return label;
//}


//-(CrazyBasisLabel *)setTitle:(NSString *)title leftImageString:(NSString *)string originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height
//{
//    
//    UIImage *image = [UIImage imageNamed:string];
//    CrazyBasisImageView *imageView = [[CrazyBasisImageView alloc]initWithImage:image];
//    imageView.frame = CGRectMake(DISTANCEX, (height - image.size.height)/2 + originY, image.size.width, image.size.height);
//    [self addSubview:imageView];
//    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(imageView.right + 5, originY, SCREENWIDTH - 2*DISTANCEX - imageView.width - 10, height) andTextAlignment:algnment andTextColor:C2 andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
//    if (haveLine) {
//        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(DISTANCEX, label.bottom, SCREENWIDTH - 2*DISTANCEX, 0.5)];
//        [self addSubview:imageView];
//        imageView.backgroundColor = LINE_COLOR;
//    }
//    return label;
//}


-(CrazyBasisLabel *)setContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment height:(float)height
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:content andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, height) andTextAlignment:algnment andTextColor:C4 andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
    NSLog(@"%@",label.textColor);
    
    return label;
}

-(CrazyBasisLabel *)setContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:content andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, 20) andTextAlignment:algnment andTextColor:C4 andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
    NSLog(@"%@",label.textColor);
  
    return label;
}


-(CrazyBasisLabel *)setTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, height) andTextAlignment:algnment andTextColor:C3 andRow:1 andFont:H2 andBackGroundColor:nil andCorner:NO];
    if (haveLine) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(DISTANCEX, label.lz_bottom, SCREENWIDTH - 2*DISTANCEX, 1)];
        [self addSubview:imageView];
        imageView.backgroundColor = LINE_COLOR;
    }
    return label;
}

-(CrazyBasisLabel *)addTitle:(NSString *)title originY:(float)originY  haveLine:(BOOL)haveLine algnment:(NSTextAlignment)algnment height:(float)height
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, height) andTextAlignment:algnment andTextColor:C3 andRow:1 andFont:H2 andBackGroundColor:[UIColor whiteColor] andCorner:NO];
    if (haveLine) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(DISTANCEX, label.lz_bottom, SCREENWIDTH - 2*DISTANCEX, 1)];
        [self addSubview:imageView];
        imageView.backgroundColor = LINE_COLOR;
    }
    return label;
}

-(CrazyBasisLabel *)addContent:(NSString *)content originY:(float)originY algnment:(NSTextAlignment)algnment height:(float)height
{
    CrazyBasisLabel *label = [CrazyBasisLabel labelAddInController:self andTitle:content andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, height) andTextAlignment:algnment andTextColor:C4 andRow:1 andFont:H2 andBackGroundColor:[UIColor whiteColor] andCorner:NO];
    NSLog(@"%@",label.textColor);
    
    return label;
}



//-(CrazyBasisLabel *)setRightTitle:(NSString *)title originY:(float)originY
//{
//    CrazyBasisLabel *label =[CrazyBasisLabel labelAddInController:self andTitle:title andFrame:CGRectMake(DISTANCEX, originY, SCREENWIDTH - 2*DISTANCEX, 40) andTextAlignment:NSTextAlignmentRight  andTextColor:nil andRow:1 andFont:H3 andBackGroundColor:nil andCorner:NO];
//    return label;
//}
@end
