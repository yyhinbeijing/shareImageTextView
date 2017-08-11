//
//  UIButton+Tool.m
//  isellishot
//
//  Created by secoo on 15/11/30.
//  Copyright © 2015年 SecooArt. All rights reserved.
//

#import "UIButton+Tool.h"
#import "UIView+LZFrame.h"

#define DISTANCEX 10

@implementation UIButton (Tool)


-(void)setRightImage:(UIImage *)image
{
    [self setImage:image forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake((self.lz_height - image.size.height)/2 , self.lz_width - image.size.width - DISTANCEX, (self.lz_height - image.size.height)/2, DISTANCEX);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, image.size.width + DISTANCEX);
}

-(void)setUpImageScale:(float)scale
{
    UIImage *image = self.currentImage;
    int height = self.lz_height * scale;
    self.titleEdgeInsets = UIEdgeInsetsMake(height, -image.size.width, 0, 0);
    self.imageEdgeInsets = UIEdgeInsetsMake((height - image.size.height)/2, (self.lz_width - image.size.width)/2, self.lz_height - height + (height - image.size.height)/2, (self.lz_width - image.size.width)/2);

}


-(void)setUpImageSpacing:(float)Spacing
{
    UIImage *image = self.currentImage;
    float lableHeiht = 16;
    
    float top = (self.lz_height - lableHeiht - image.size.height - Spacing)/2;
    self.imageEdgeInsets = UIEdgeInsetsMake(top, (self.lz_width - image.size.width)/2, self.lz_height - top - image.size.height, (self.lz_width - image.size.width)/2);
    
    self.titleEdgeInsets = UIEdgeInsetsMake(top+image.size.height + Spacing , -image.size.width, self.lz_height - (top+image.size.height + Spacing) - lableHeiht , 0);

}

@end
