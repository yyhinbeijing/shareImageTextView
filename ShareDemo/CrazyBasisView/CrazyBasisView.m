//
//  CrazyBasisView.m
//  MarketManage
//
//  Created by fielx on 15/4/15.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import "CrazyBasisView.h"




@implementation CrazyBasisView





-(void)interactionBlock:(tapInteractionBlock)block
{
    self.mInteractionBlock = block;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];

    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame infoModel:(id)mModel
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];

    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}






@end
