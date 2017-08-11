//
//  UIView+LZFrame.m
//  seller
//
//  Created by Leo on 16/4/18.
//  Copyright © 2016年 womaiwopai. All rights reserved.
//

#import "UIView+LZFrame.h"

@implementation UIView (LZFrame)

- (void)setLz_x:(CGFloat)lz_x
{
    CGRect frame = self.frame;
    frame.origin.x = lz_x;
    self.frame = frame;
}

- (CGFloat)lz_x
{
    return self.frame.origin.x;
}

- (void)setLz_y:(CGFloat)lz_y
{
    CGRect frame = self.frame;
    frame.origin.y = lz_y;
    self.frame = frame;
}

- (CGFloat)lz_y
{
    return self.frame.origin.y;
}

- (void)setLz_left:(CGFloat)lz_left
{
    CGRect frame = self.frame;
    frame.origin.x = lz_left;
    self.frame = frame;
}

- (CGFloat)lz_left
{
    return self.frame.origin.x;
}

- (void)setLz_top:(CGFloat)lz_top
{
    CGRect frame = self.frame;
    frame.origin.y = lz_top;
    self.frame = frame;
}

- (CGFloat)lz_top
{
    return self.frame.origin.y;
}

- (CGFloat)lz_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setLz_right:(CGFloat)lz_right
{
    CGRect frame = self.frame;
    frame.origin.x = lz_right - self.frame.size.width;
    self.frame = frame;
}

- (CGFloat)lz_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLz_bottom:(CGFloat)lz_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = lz_bottom - self.frame.size.height;
    self.frame = frame;
}

- (void)setLz_width:(CGFloat)lz_width
{
    CGRect frame = self.frame;
    frame.size.width = lz_width;
    self.frame = frame;
}

- (CGFloat)lz_width
{
    return self.frame.size.width;
}

- (void)setLz_height:(CGFloat)lz_height
{
    CGRect frame = self.frame;
    frame.size.height = lz_height;
    self.frame = frame;
}

- (CGFloat)lz_height
{
    return self.frame.size.height;
}

- (void)setLz_origin:(CGPoint)lz_origin
{
    CGRect frame = self.frame;
    frame.origin = lz_origin;
    self.frame = frame;
}

- (CGPoint)lz_origin
{
    return self.frame.origin;
}

- (void)setLz_size:(CGSize)lz_size
{
    CGRect frame = self.frame;
    frame.size = lz_size;
    self.frame = frame;
}

- (CGSize)lz_size
{
    return self.frame.size;
}

- (void)setLz_centerX:(CGFloat)lz_centerX
{
    CGPoint center = self.center;
    center.x = lz_centerX;
    self.center = center;
}

- (CGFloat)lz_centerX
{
    return self.center.x;
}

- (void)setLz_centerY:(CGFloat)lz_centerY
{
    CGPoint center = self.center;
    center.y = lz_centerY;
    self.center = center;
}

- (CGFloat)lz_centerY
{
    return self.center.y;
}

- (CGSize)lz_layoutSize
{
    return [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
}

- (CGFloat)lz_layoutWidth
{
    return [self lz_layoutSize].width;
}

- (CGFloat)lz_layoutHeight
{
    return [self lz_layoutSize].height;
}

@end
