//
//  ChildOneViewController.m
//  BBScrollPageViewDemo
//
//  Created by 王二 on 17/2/8.
//  Copyright © 2017年 mbs008. All rights reserved.
//

#import "ChildOneViewController.h"

@interface ChildOneViewController ()

@end

@implementation ChildOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100) / 100.0
                                                green:arc4random_uniform(100) / 100.0
                                                 blue:arc4random_uniform(100) / 100.0
                                                alpha:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
