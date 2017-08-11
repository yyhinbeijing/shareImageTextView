//
//  CrazyBasisButton.m
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import "CrazyBasisButton.h"

#import "UIImage+ChangeColor.h"
#import "UIFont+PingFangSC.h"
#import "UIView+LZFrame.h"

@implementation CrazyBasisButton






+(CrazyBasisButton *)buttonAddInView:(UIView *)view andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor andCorner:(BOOL)corner  andFrame:(CGRect)rect   andNormalImage:(UIImage *)normalImage andTextFont:(int)size andCorneNumberr:(int) cornerNumber andTarget:(id)controller andSelector:(SEL)selector
{
    CrazyBasisButton *button = [CrazyBasisButton buttonWithType:UIButtonTypeCustom];
    button.frame = rect;

    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    if (size) {
        button.titleLabel.font = [UIFont pingFangOfSize:size];
    }
    
    if (normalImage) {
        [button setImage:normalImage forState:UIControlStateNormal];
    }
    [button setBackgroundColor:bGColor];
    [view addSubview:button];
    if (corner)
    {
        button.layer.masksToBounds = YES;
        button.layer.cornerRadius = cornerNumber;
    }
    [button setExclusiveTouch:YES];
  //  NSLog(@"%@",controller);
    [button addTarget:controller action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}



+(CrazyBasisButton *)buttonAddInView:(UIView *)view andFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size andTarget:(id)controller andSelector:(SEL)selector
{
    CrazyBasisButton *button = [CrazyBasisButton buttonWithType:UIButtonTypeCustom];
    button.frame = rect;

    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    if (size) {
        button.titleLabel.font = [UIFont pingFangOfSize:size];
    }
    
    [button setBackgroundColor:bGColor];
    [view addSubview:button];
    [button setExclusiveTouch:YES];
    //  NSLog(@"%@",controller);
    [button addTarget:controller action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;

}


+(CrazyBasisButton *)buttonAddInView:(UIView *)view andFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size tapButtonBlock:(tapButtonBlock)tapButtonBlock
{
    CrazyBasisButton *button = [CrazyBasisButton buttonWithType:UIButtonTypeCustom];
    button.frame = rect;
    
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    if (size) {
        button.titleLabel.font = [UIFont pingFangOfSize:size];
    }
    
    [button setBackgroundColor:bGColor];
    [view addSubview:button];
    [button setExclusiveTouch:YES];
    //  NSLog(@"%@",controller);
    [button addTarget:button action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    
    button.mTapBlock = tapButtonBlock;
    return button;
}


+(CrazyBasisButton *)buttonandFrame:(CGRect)rect andButtonTitleText:(NSString *)text  andTextColor:(UIColor *)color  andBackGroundColor:(UIColor *)bGColor  andTextFont:(int)size tapButtonBlock:(tapButtonBlock)tapButtonBlock
{
    CrazyBasisButton *button = [CrazyBasisButton buttonWithType:UIButtonTypeCustom];
    button.frame = rect;
    
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    if (size) {
        button.titleLabel.font = [UIFont pingFangOfSize:size];
    }
    
    [button setBackgroundColor:bGColor];
    [button setExclusiveTouch:YES];
    //  NSLog(@"%@",controller);
    [button addTarget:button action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    
    button.mTapBlock = tapButtonBlock;
    return button;
}


-(void)tapButton:(CrazyBasisButton *)button
{
    button.mTapBlock (button);
}


//-(void)setBackgroundColor:(UIColor *)backgroundColor
//{
//    if (self.width== 0 || self.height == 0) {
//        [super setBackgroundColor:backgroundColor];
//    }
//    if (backgroundColor == nil) {
//        [super setBackgroundColor:backgroundColor];
//        return;
//    }
//    UIImage *image = [self imageWithColor:backgroundColor];
//    [self setBackgroundImage:image forState:UIControlStateNormal];
//    
//    [self setBackgroundImage:[image imageWithTintColor:CrazyColor(220, 220, 220)] forState:UIControlStateHighlighted];
//
//}



- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, self.lz_width, self.lz_height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.window endEditing:YES];
}



@end
