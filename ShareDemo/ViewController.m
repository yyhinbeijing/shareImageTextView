//
//  ViewController.m
//  ShareDemo
//
//  Created by secoo_yonghui on 2017/8/11.
//  Copyright © 2017年 secoo. All rights reserved.
//

#import "ViewController.h"
#import "CrazyShareView.h"
#import "SKImageTextShareView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonAction {
    CrazyShareView *shareView = [[CrazyShareView alloc] init];
    [shareView interactionBlock:^(id obj) {
        UIButton *btn = (UIButton *)obj;
        if (btn.tag == 0) {
            [shareView removeFromSuperview];
            SKImageTextShareView *imagetextShareView = [[SKImageTextShareView alloc] init];
            [imagetextShareView interactionBlock:^(id obj) {
                
            }];
            [self.view.window addSubview:imagetextShareView];
        }
    }];
    [self.view.window addSubview:shareView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
