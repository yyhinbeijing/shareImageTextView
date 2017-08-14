//
//  SKImageTextShareView.m
//  isellishot
//
//  Created by secoo_yonghui on 2017/8/11.
//  Copyright © 2017年 SecooArt. All rights reserved.
//
#import "SKImageTextShareView.h"
#import "UIButton+Tool.h"
#import "UIView+Title.h"
#import "UIView+LZFrame.h"
#import "UIImageView+WebCache.h"


@implementation SKImageTextShareView

- (instancetype)init
{
    self = [super init];
    if (self) {
        float height = SCREENHEIGHT - 60;
        CrazyBasisView *view = [[CrazyBasisView alloc]initWithFrame:CGRectMake(0, SCREENHEIGHT, SCREENWIDTH, height)];
        
        
        CGFloat backViewRightPadding = 40;
        CGFloat backViewViewLeftPadding = 40;
        CGFloat backViewViewTopPadding = 40;
        CGFloat backViewWidth = SCREENWIDTH - backViewRightPadding - backViewViewLeftPadding;
        CGFloat backViewHeight = backViewWidth * 1.5;
        UIImageView *backView = [[UIImageView alloc] initWithFrame:CGRectMake(backViewViewLeftPadding, backViewViewTopPadding, backViewWidth, backViewHeight)];
//        [backView sd_setImageWithURL:nil placeholderImage:[UIImage imageNamed:@"a"]];
        [view addSubview:backView];
        backView.layer.masksToBounds = YES;
        backView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        backView.layer.borderWidth = 2;
        
        CGFloat goodImageViewRightPadding = 0;
        CGFloat goodImageViewLeftPadding = 0;
        CGFloat goodImageViewTopPadding = 0;
        CGFloat goodImageViewWidth = backViewWidth - goodImageViewRightPadding - goodImageViewLeftPadding;
        CGFloat goodImageViewHeight = goodImageViewWidth;
        UIImageView *goodImageView = [[UIImageView alloc] initWithFrame:CGRectMake(goodImageViewLeftPadding, goodImageViewTopPadding, goodImageViewWidth, goodImageViewHeight)];
//        [ sd_setImageWithURL:nil placeholderImage:];
        goodImageView.image = [UIImage imageNamed:@"a2x@"];
        [backView addSubview:goodImageView];
        
        
        CGFloat qrCodeViewLeftPadding = 0;
        CGFloat qrCodeViewTopPadding = 0;
        CGFloat qrCodeViewwidth = 20;
        CGFloat qrCodeViewHeight = 20;
        UIImageView *qrCodeView = [[UIImageView alloc] initWithFrame:CGRectMake(qrCodeViewLeftPadding, goodImageView.lz_bottom + qrCodeViewTopPadding, qrCodeViewwidth, qrCodeViewHeight)];
//        [qrCodeView sd_setImageWithURL:nil placeholderImage:];
        qrCodeView.image = [UIImage imageNamed:@"uuuuuuuu@"];
        [backView addSubview:goodImageView];
        
        CGFloat brandAndInfoLeftPadding = 20;
        CGFloat brandAndInfoTopPadding = 23;
        CGFloat brandAndInfoWidth = 100;
        CGFloat brandAndInfoHeight = 23;
        UILabel *brandAndInfo = [[UILabel alloc] initWithFrame:CGRectMake(qrCodeView.lz_x + brandAndInfoLeftPadding, goodImageView.lz_bottom + brandAndInfoTopPadding, brandAndInfoWidth, brandAndInfoHeight)];
        brandAndInfo.text = @"苹果/的点点滴滴多多多多多多多多";
        [backView addSubview:brandAndInfo];
        
        
        CGFloat priceLabelLeftPadding = 20;
        CGFloat priceLabelTopPadding = 23;
        CGFloat priceLabelWidth = 100;
        CGFloat priceLabelHeight = 23;
        UILabel *priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(qrCodeView.lz_x + priceLabelLeftPadding, brandAndInfo.lz_bottom + priceLabelTopPadding, priceLabelWidth, priceLabelHeight)];
        priceLabel.text = @"100000";
        [backView addSubview:priceLabel];
        
        
        view.tag = 1;
        view.backgroundColor = [UIColor whiteColor];
        float interval = 35;
        float buttonWidth = 80;
        [view setContent:@"分享图片" originY:SCREENHEIGHT - 40 - 160 algnment:1 height:20];
        
        NSArray *imageArray = @[[UIImage imageNamed:@"pengyouquan_"],[UIImage imageNamed:@"weixin_"],[UIImage imageNamed:@"lianjie_"]];
        NSArray *titleArray = @[@"微信朋友圈",@"微信好友",@"保存在本地"];
        
        for (int i = 0; i < imageArray.count ; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            [button setImage:imageArray[i] forState:UIControlStateNormal];
            [button setTitle:titleArray[i] forState:UIControlStateNormal];
            [button setTitleColor:C4 forState:UIControlStateNormal];
            button.frame = CGRectMake((SCREENWIDTH - buttonWidth * imageArray.count - interval * (imageArray.count - 1))/2 + i *(buttonWidth + interval), self.frame.size.height - 160, buttonWidth, 70);
            [button setUpImageScale:0.5];
            [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
            button.titleLabel.font = [UIFont systemFontOfSize:H2];
            button.tag = i;
            [view addSubview:button];
            

        }
        
        __unsafe_unretained __typeof(self) weakSelf = self;
        [CrazyBasisButton buttonAddInView:view andFrame:CGRectMake((SCREENWIDTH - 100)/2, height - 30, 100, 20) andButtonTitleText:@"取消" andTextColor:C2 andBackGroundColor:nil andTextFont:H2 tapButtonBlock:^(CrazyBasisButton *button) {
            [weakSelf tapView];
        }];
        
        
        [self addSubview:view];
        
        [UIView animateWithDuration:0.3 animations:^{
            view.transform = CGAffineTransformMakeTranslation(0, -height);
        }];
        
    }
    return self;
}

-(void)tapView
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIView *view = [self viewWithTag:1];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:0.3 animations:^{
                view.transform = CGAffineTransformMakeTranslation(0, view.lz_height);
                self.alpha = 0;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        });
    });
}

-(void)removeTap {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        UIView *view = [self viewWithTag:1];
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:0.3 animations:^{
                view.transform = CGAffineTransformMakeTranslation(0, view.lz_height);
                self.alpha = 0;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        });
    });
    
}


-(void)tapButton:(UIButton *)button
{
    self.mInteractionBlock(button);
}

@end
