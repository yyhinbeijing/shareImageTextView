//
//  UIView+LZFrame.h
//  seller
//
//  Created by Leo on 16/4/18.
//  Copyright © 2016年 womaiwopai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LZFrame)

@property (nonatomic, assign) CGFloat lz_x;
@property (nonatomic, assign) CGFloat lz_y;
@property (nonatomic, assign) CGFloat lz_left;
@property (nonatomic, assign) CGFloat lz_top;
@property (nonatomic, assign) CGFloat lz_right;
@property (nonatomic, assign) CGFloat lz_bottom;

@property (nonatomic, assign) CGFloat lz_width;
@property (nonatomic, assign) CGFloat lz_height;

@property (nonatomic, assign) CGPoint lz_origin;
@property (nonatomic, assign) CGSize lz_size;

@property (nonatomic, assign) CGFloat lz_centerX;
@property (nonatomic, assign) CGFloat lz_centerY;

@property (nonatomic, assign, readonly) CGSize lz_layoutSize;
@property (nonatomic, assign, readonly) CGFloat lz_layoutWidth;
@property (nonatomic, assign, readonly) CGFloat lz_layoutHeight;

@end
