//
//  CrazyBasisImageView.m
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import "CrazyBasisImageView.h"
//#import "UIImage+RoundedCorner.h"
//#import "UIView+CrazyLayer.h"
@implementation CrazyBasisImageView

-(void)clickImageView:(clickImageViewBlock)block
{
    self.mClickBlock = block;
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapImage:)];
    [self addGestureRecognizer:tap];
}

-(void)tapImage:(UITapGestureRecognizer *)tap{
    if (self.mClickBlock) {
        self.mClickBlock(self);
    }
}

-(void)crazyBasisImageViewLoadUrlString:(NSString *)string placeholderImageString:(NSString *)imageString
{
    if (imageString == nil) {
        imageString = @"图片默认";
    }
 
    
    [self sd_setImageWithURL:[NSURL URLWithString:string] placeholderImage:[UIImage imageNamed:imageString] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
    
    
    
//    [CrazyBasisButton buttonAddInView:self andFrame:CGRectZero andButtonTitleText:@"11" andTextColor:nil andBackGroundColor:nil andTextFont:1 tapButtonBlock:^(CrazyBasisButton *button) {
//        
//    }];
    
}

-(void)crazyBasisImageViewLoadUrlString:(NSString *)string placeholderImageString:(NSString *)imageString completed:(clickImageViewBlock)block
{
    [self sd_setImageWithURL:[NSURL URLWithString:string] placeholderImage:[UIImage imageNamed:imageString] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        block(image);
    }];
}


-(void)crazyBasisImageViewLoadRoundedCornersUrlString:(NSString *)string placeholderImageString:(NSString *)imageString
{
    __weak __typeof(self) weakSelf = self;
    [self sd_setImageWithURL:[NSURL URLWithString:string] placeholderImage:[UIImage imageNamed:imageString] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//        [weakSelf cornerRadius:weakSelf.lz_width lineColor:nil borderWidth:0];
    }];
}


-(void)setImageFrame
{
    CGSize size = self.image.size;
    CGRect rect  = self.frame;
    rect.size = size;
    self.frame = rect;
}


-(void)setFileImageWithName:(NSString *)imageString
{
//    NSMutableArray *array = [[imageString componentsSeparatedByString:@"."] mutableCopy];
//    if (array.count == 1) {
//        [array addObject:@"png"];
//    }
//    NSString *path = [[NSBundle mainBundle] pathForResource:array[0] ofType:array[1]];
//    self.image = [UIImage imageWithContentsOfFile:path];
    self.image = [UIImage imageWithFileName:imageString];
}




-(void)addTapObj:(id)obj
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:obj action:@selector(tapCrazyBasisImageView:)];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
}

-(void)tapCrazyBasisImageView:(UITapGestureRecognizer *)tap
{

}


@end
