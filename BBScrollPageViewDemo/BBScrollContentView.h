//
//  BBScrollContentView.h
//  CustomMoonbasa
//
//  Created by mbs008 on 16/8/29.
//  Copyright © 2016年 mbs008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BBScrollContentView;

@protocol BBScrollContentViewDelegate <NSObject>

/**
 *  结束滚动后调用方法
 *
 *  @param scrollContentView 当前视图
 *  @param index             滚动到的索引
 */
- (void)scrollContentView:(BBScrollContentView *)scrollContentView didScrollToIndex:(NSInteger)index;

/**
 *  滚动时调用的方法
 *
 *  @param scrollContentView 当前视图
 *  @param scale             滚动时的偏移量倍数
 */
- (void)scrollContentView:(BBScrollContentView *)scrollContentView contentOffsetScaleWhileScroll:(CGFloat)scale;

@end
/**
 *  滚动内容视图
 */
@interface BBScrollContentView : UIView

/**
 *  滚动内容scrollView
 */
@property (nonatomic, strong, readonly) UIScrollView *contentScrollView;
/**
 *  初始化
 *
 *  @param frame                frame
 *  @param parentViewController 父控制器
 *  @param childVcs             子控制器
 *  @param delegate             代理，以代理形式与外界通信
 *
 *  @return 自身
 */
- (instancetype)initWithFrame:(CGRect)frame
         parentViewController:(UIViewController *)parentViewController
                     childVcs:(NSArray *)childVcs
                     delegate:(id<BBScrollContentViewDelegate>)delegate;

@end
