//
//  NSString+LZExt.m
//  isellishot
//
//  Created by Leo on 16/9/14.
//  Copyright © 2016年 SecooArt. All rights reserved.
//

#import "NSString+LZExt.h"

@implementation NSString (LZExt)

- (BOOL)lz_available
{
    return self.length > 0;
}

@end
