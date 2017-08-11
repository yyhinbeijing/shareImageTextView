//
//  CrazyBasisTableView.m
//  MarketManage
//
//  Created by fielx on 15/4/14.
//  Copyright (c) 2015年 Rice. All rights reserved.
//

#import "CrazyBasisTableView.h"

@implementation CrazyBasisTableView

-(void)reloadData
{
    if ([self.crazyDelegate respondsToSelector:@selector(crazyBasisTableViewReloadData:)]) {
        [self.crazyDelegate crazyBasisTableViewReloadData:self];
       
    }
    [super reloadData];
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.window endEditing:YES];
}


@end
