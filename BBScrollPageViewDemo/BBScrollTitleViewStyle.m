//
//  BBScrollTitleViewStyle.m
//  CustomMoonbasa
//
//  Created by mbs008 on 16/9/7.
//  Copyright © 2016年 mbs008. All rights reserved.
//

#import "BBScrollTitleViewStyle.h"

@implementation BBScrollTitleViewStyle

- (instancetype)init {
    if(self = [super init]) {
        self.showLine = NO;
        self.scrollLineHeight = 2.0;
        self.scrollLineColor = [UIColor brownColor];
        self.titleMargin = 15.0;
        self.titleFont = [UIFont systemFontOfSize:14.0];
        self.titleBigScale = 1.3;
        self.segmentHeight = 44.0;
    }
    return self;
}


@end
