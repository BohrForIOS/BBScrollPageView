//
//  ViewController.m
//  BBScrollPageViewDemo
//
//  Created by 王二 on 17/2/8.
//  Copyright © 2017年 mbs008. All rights reserved.
//

#import "ViewController.h"
#import "BBScrollPageView.h"
#import "ChildOneViewController.h"
#import "ChildTwoViewController.h"

@interface ViewController ()<BBScrollPageViewDelegate>
/**
 *  构造数据
 */
@property (nonatomic, strong) NSArray *dataArr;
/**
 *  子控制器
 */
@property (nonatomic, strong) NSMutableArray *childVcs;
/**
 *  分页视图BBSrollPageView
 */
@property (nonatomic, strong) BBScrollPageView *pageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureData];
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)configureData {
    _dataArr = @[@"男装", @"女装", @"美国馆", @"韩国馆", @"衬衣", @"鞋包",  @"鞋包",  @"鞋包"];
    
    UIViewController *childOneVc = [ChildOneViewController new];
    UIViewController *childTwoVc = [ChildTwoViewController new];
    UIViewController *childThreeVc = [ChildOneViewController new];
    UIViewController *childFourVc = [ChildTwoViewController new];
    UIViewController *childFiveVc = [ChildOneViewController new];
    UIViewController *childSixVc = [ChildTwoViewController new];
    UIViewController *childSevenVc = [ChildTwoViewController new];
    UIViewController *childEightVc = [ChildTwoViewController new];
    
    _childVcs = [NSMutableArray new];
    [_childVcs addObjectsFromArray:[NSArray arrayWithObjects:childOneVc, childTwoVc, childThreeVc, childFourVc, childFiveVc, childSixVc, childSevenVc, childEightVc, nil]];
}

- (void)initView {
    BBScrollTitleViewStyle *scrollTitleViewStyle = [[BBScrollTitleViewStyle alloc] init];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height - 64;
    CGRect pageViewRect = CGRectMake(0, 64, width, height);
    
    // 两种方式使用，一种是直接使用，另一种先创建，然后从接口拿到数据后设置数据，不管哪一种都要调用生成方法generate
//    _pageView = [[BBScrollPageView alloc] initWithFrame:pageViewRect segmentStyle:scrollTitleViewStyle titles:_dataArr childVcs:_childVcs parentViewController:self delegate:self];
    
    _pageView = [[BBScrollPageView alloc] initWithFrame:pageViewRect style:scrollTitleViewStyle];
    // 设置pageview的数据
    [_pageView setTiltes:_dataArr childVcs:_childVcs parentViewController:self delegate:self];
    [_pageView generate];
    
    [self.view addSubview:_pageView];
}

@end
