//
//  BBScrollTitleMenuLabel.m
//  CustomMoonbasa
//
//  Created by mbs008 on 16/8/29.
//  Copyright © 2016年 mbs008. All rights reserved.
//

#import "BBScrollTitleMenuLabel.h"

static const CGFloat MBSRed = 0.0;
static const CGFloat MBSGreen = 0.0;
static const CGFloat MBSBlue = 0.0;

/**
 *  滚动的标题菜单label
 */
@implementation BBScrollTitleMenuLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.font = [UIFont systemFontOfSize:15];
        self.textColor = [UIColor colorWithRed:MBSRed green:MBSGreen blue:MBSBlue alpha:1.0]; // 黑
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = YES;
    }
    
    return self;
}

- (void)setScale:(CGFloat)scale {
    _scale = scale;
    
    // 变红  1 0 0
    CGFloat red = MBSRed + (1 - MBSRed) * scale;
    CGFloat green = MBSGreen + (0 - MBSGreen) * scale;
    CGFloat blue = MBSBlue + (0 - MBSBlue) * scale;
    self.textColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    // 大小缩放比例
    CGFloat transformScale = 1 + scale * 0.2;
    self.transform = CGAffineTransformMakeScale(transformScale, transformScale);
}

@end
