//
//  CrazyShareView.m
//  isellishot
//
//  Created by secoo on 16/1/13.
//  Copyright © 2016年 SecooArt. All rights reserved.
//

#import "CrazyShareView.h"
#import "UIView+LZFrame.h"

//#import "UIButton+Tool.h"

//#import "UIView+Title.h"
@implementation CrazyShareView



- (instancetype)init
{
    self = [super init];
    if (self) {
        
        float height = 160;
        CrazyBasisView *view = [[CrazyBasisView alloc]initWithFrame:CGRectMake(0, SCREENHEIGHT, SCREENWIDTH, height)];
        view.tag = 1;
        view.backgroundColor = [UIColor whiteColor];
        float interval = 25;
        float buttonWidth = 60;
//        [view setContent:@"分享到" originY:10 algnment:1 height:20];
        
        NSArray *imageArray = @[[UIImage imageNamed:@"weixin_"],[UIImage imageNamed:@"weixin_"],[UIImage imageNamed:@"pengyouquan_"],[UIImage imageNamed:@"lianjie_"]];
        NSArray *titleArray = @[@"图文分享",@"微信好友",@"微信朋友圈",@"复制链接"];

        for (int i = 0; i < imageArray.count ; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            [button setImage:imageArray[i] forState:UIControlStateNormal];
            [button setTitle:titleArray[i] forState:UIControlStateNormal];
            [button setTitleColor:C4 forState:UIControlStateNormal];
            button.frame = CGRectMake((SCREENWIDTH - buttonWidth * imageArray.count - interval * (imageArray.count - 1))/2 + i *(buttonWidth + interval), 48, buttonWidth, 70);
//            [button setUpImageScale:0.5];
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

//-(void)removeTap {
////    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
////        UIView *view = [self viewWithTag:1];
////        
////        
////        dispatch_async(dispatch_get_main_queue(), ^{
////            [UIView animateWithDuration:0.3 animations:^{
////                view.transform = CGAffineTransformMakeTranslation(0, view.lz_height);
////                self.alpha = 0;
////            } completion:^(BOOL finished) {
////                [self removeFromSuperview];
////            }];
////        });
////    });
//
//}


-(void)tapButton:(UIButton *)button
{
    self.mInteractionBlock(button);
}

@end
