//
//  UIImage+ChangeColor.h
//  LaundryFaction
//
//  Created by fielx on 15/5/6.
//  Copyright (c) 2015年 SecooArt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ChangeColor)

- (UIImage *) imageWithTintColor:(UIColor *)tintColor;


+ (UIImage *)imageWithColor:(UIColor *)color  size:(CGSize)size;
@end
