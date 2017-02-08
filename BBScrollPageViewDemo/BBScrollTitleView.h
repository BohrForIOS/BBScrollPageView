//
//  BBScrollTitleView.h
//  CustomMoonbasa
//
//  Created by mbs008 on 16/8/29.
//  Copyright © 2016年 mbs008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBScrollTitleViewStyle.h"

/**
 *  滚动标题视图
 */
@interface BBScrollTitleView : UIView

/**
 *  所有标题的设置
 */
@property (strong, nonatomic) BBScrollTitleViewStyle *style;

/**
 *  menuLabel数组，只读
 */
@property (nonatomic, strong, readonly) NSMutableArray *menuLabels;
/**
 *  titleScrollView, 只读
 */
@property (nonatomic, strong, readonly) UIScrollView *titleScrollView;
/**
 *  滚动条
 */
@property (nonatomic, strong) UIImageView *scrollBar;

/**
 *  初始化
 *
 *  @param frame         尺寸
 *  @param segmentStyle  风格
 *  @param titles        标题数组
 *  @param titleDidClick 标题按钮点击block，以block形式与外界通信
 *
 *  @return 本身
 */
- (instancetype)initWithFrame:(CGRect )frame
                 style:(BBScrollTitleViewStyle *)style
                       titles:(NSArray<NSString *> *)titles
                titleDidClick:(void (^) (UILabel *label, NSInteger index))titleBtnOnClickBlock;
@end
