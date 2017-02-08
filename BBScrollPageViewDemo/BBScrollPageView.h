//
//  BBScrollPageView.h
//  CustomMoonbasa
//
//  Created by mbs008 on 16/8/29.
//  Copyright © 2016年 mbs008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBScrollTitleView.h"
#import "BBScrollContentView.h"

@protocol BBScrollPageViewDelegate <NSObject>



@end

/**
 *  滚动分页视图
 */
@interface BBScrollPageView : UIView
/**
 *  scrollTitleView(外面只读，可供使用)
 */
@property (nonatomic, strong, readonly) BBScrollTitleView *scrollTitleView;
/**
 *  scrollContentView(外面只读，可供使用)
 */
@property (nonatomic, strong, readonly) BBScrollContentView *scrollContentView;
/**
 *  代理放在头文件，可以让它成为别的类的代理
 */
@property (nonatomic, weak) id<BBScrollPageViewDelegate> delegate;

/**
 *  初始化
 *
 *  @param frame                frame
 *  @param segmentStyle         标题的风格
 *  @param titles               标题数组
 *  @param parentViewController 父控制器
 *
 *  @return 自身
 */
- (instancetype)initWithFrame:(CGRect)frame
                 segmentStyle:(BBScrollTitleViewStyle *)segmentStyle
                       titles:(NSArray<NSString *> *)titles
                    childVcs:(NSArray *)childVcs
         parentViewController:(UIViewController *)parentViewController
                     delegate:(id<BBScrollPageViewDelegate>) delegate;

- (instancetype)initWithFrame:(CGRect)frame style:(BBScrollTitleViewStyle *)style;

- (void)setTiltes:(NSArray<NSString *> *)titles childVcs:(NSArray<UIViewController *> *)childVcs parentViewController:(UIViewController *)parentViewController delegate:(id<BBScrollPageViewDelegate>)delegate;
- (void)generate;
@end
