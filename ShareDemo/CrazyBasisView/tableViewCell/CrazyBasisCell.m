//
//  CrazyBasisCell.m
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import "CrazyBasisCell.h"
#import "UIFont+PingFangSC.h"

/**
 *  基础Lable
 */
@implementation CrazyBasisCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
    }
    return self;
    
}


-(CrazyBasisView *)mBgView
{
    if (!_mBgView) {
        self.mBgView = [[CrazyBasisView alloc]init];
        [self addSubview:self.mBgView];
    }
    return _mBgView;
}


-(CrazyBasisLabel *)mNameLabel
{
    if (!_mNameLabel) {
        self.mNameLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mNameLabel]; 
        self.mNameLabel.font = [UIFont pingFangOfSize:13];
        self.mNameLabel.textColor = C3;
        self.mNameLabel.backgroundColor = [UIColor whiteColor];
    }
    return _mNameLabel;
}


-(CrazyBasisLabel *)mTime
{
    if (!_mTime) {
        self.mTime = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mTime];
    }
    return _mTime;
}

-(CrazyBasisLabel *)mContentLabel
{
    if (!_mContentLabel) {
        self.mContentLabel = [[CrazyBasisLabel alloc]init];
        [self.mBgView addSubview:self.mContentLabel];
        self.mContentLabel.font = [UIFont pingFangOfSize:12];
        self.mContentLabel.textColor = C4;
        self.mContentLabel.backgroundColor = [UIColor whiteColor];

    }
    return _mContentLabel;
}

-(CrazyBasisImageView *)mImageView
{
    if (_mImageView == nil) {
        self.mImageView = [[CrazyBasisImageView alloc]init];
        [self.mBgView addSubview:self.mImageView];
    }
    return _mImageView;
}

-(CrazyBasisButton *)mSelectButton
{
    if (!_mSelectButton) {
        self.mSelectButton = [CrazyBasisButton buttonWithType:UIButtonTypeCustom];
        [self.mBgView addSubview:self.mSelectButton];
        [self.mSelectButton addTarget:self action:@selector(tapSelectButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _mSelectButton;
}


-(CrazyBasisImageView *)mLineImageView
{
    if (!_mLineImageView) {
        self.mLineImageView = [[CrazyBasisImageView alloc]init];
        [self.mBgView addSubview:self.mLineImageView];
        self.mLineImageView.backgroundColor = LINE_COLOR;
    }
    return _mLineImageView;
}

-(CrazyBasisImageView *)mDirectionImageView
{
    if (!_mDirectionImageView) {
        self.mDirectionImageView = [[CrazyBasisImageView alloc]init];
        [self.mBgView addSubview:self.mDirectionImageView];
    }
    return _mDirectionImageView;
}


-(void)setSelected:(BOOL)selected animated:(BOOL)animated
{

}

-(void)crazyCellShowDirectionWithCellHeight:(float)height
{
    UIImage *image =[UIImage imageNamed:@"youjian_"];
    self.mDirectionImageView.image = image;
    self.mDirectionImageView.frame = CGRectMake(SCREENWIDTH  - DISTANCEX - image.size.width, (height - image.size.height)/2 , image.size.width, image.size.height);
}

-(void)crazyBasisCellContent:(id)info
{
    
}


-(void)tapSelectButton:(CrazyBasisButton *)button
{
    button.selected = !button.selected;
}


@end
