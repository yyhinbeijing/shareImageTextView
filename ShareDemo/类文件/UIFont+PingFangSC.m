//
//  UIFont+PingFangSC.m
//  isellishot
//
//  Created by uliag on 2017/3/23.
//  Copyright © 2017年 SecooArt. All rights reserved.
//

#import "UIFont+PingFangSC.h"

@implementation UIFont(PingFangSC)
+(UIFont*)pingFangLightOfSize:(CGFloat)size{
    UIFont* font = [UIFont fontWithName:@"PingFangSC-Light" size:size];
    if (!font) {
        font = [UIFont fontWithName:@"Helvetica-Light" size:size];
    }
    return font;
}

+(UIFont*)pingFangBoldOfSize:(CGFloat)size{
    UIFont* font = [UIFont fontWithName:@"PingFangSC-Medium" size:size];
    if (!font) {
        font = [UIFont fontWithName:@"Helvetica-Bold" size:size];
    }
    return font;
}

+(UIFont*)pingFangOfSize:(CGFloat)size{
    UIFont* font = [UIFont fontWithName:@"PingFangSC-Regular" size:size];
    if (!font) {
        font = [UIFont fontWithName:@"Helvetica" size:size];
    }
    return font;
}



@end
