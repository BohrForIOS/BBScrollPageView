BBScrollPageView
###效果图：
![image](https://github.com/BohrForIOS/BBScrollPageView/blob/master/BBScrollPageViewDemo/BBPageScrollView.gif )
###使用
传入标题数组和子控制器数组即可，非常简单
--

`_pageView = [[BBScrollPageView alloc] initWithFrame:pageViewRect 
                                        segmentStyle:scrollTitleViewStyle 
                                              titles:_dataArr 
                                            childVcs:_childVcs 
                                parentViewController:self 
                                            delegate:self];` 

`[_pageView generate]`;

或者

`_pageView = [[BBScrollPageView alloc] initWithFrame:pageViewRect style:scrollTitleViewStyle];`

`[_pageView setTiltes:_dataArr childVcs:_childVcs parentViewController:self delegate:self];`

`[_pageView generate];`

具体介绍见简书：http://www.jianshu.com/p/ca72e405a095
