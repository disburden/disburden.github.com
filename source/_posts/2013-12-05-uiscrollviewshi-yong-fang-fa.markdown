---
layout: post
title: "UIScrollview使用方法"
date: 2013-12-05 00:37:37 +0800
comments: true
categories: objc
---
```objective-c code
//创建一个uiscrollview,这里设置的frame可以理解为你可以看到的scrollview的区域
    scr_view=[[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    scr_view.backgroundColor=[UIColor clearColor];

//垂直拖动的时候显示垂直滚动条(如果有)
    scr_view.showsVerticalScrollIndicator=NO;

//水平拖动时显示水平滚动条(如果有)
    scr_view.showsHorizontalScrollIndicator=NO;

//默认是 NO，可以在垂直和水平方向同时运动。当值是 YES 时，假如一开始是垂直或者是水平运动，那么接下来
//会锁定另外一个方向的滚动。 假如一开始是对角方向滚动，则不会禁止某个方向
    scr_view.directionalLockEnabled=YES;

//是否启用分页,如果启用的话会一页一页的翻,如果不启用的话,可以拖动到任意位置(启用后会自动滚动到边界)
    scr_view.pagingEnabled=YES;

//当到达边界的时候会有弹簧效果,也就是还可以再拉动一下,送松手后会弹回去,为NO的时候就关闭这个效果
    scr_view.bounces=NO;

//这里才是设置显示内容的大小,前面初始化时的frame只是你能看到的大小,这里你实际要显示的内容有多大就设
//置多大.
    CGSize newSize=CGSizeMake(scr_view.frame.size.width, 1704);
    [scr_view setContentSize:newSize];
    [self.view addSubview:scr_view];

//滚动到你想要的区域(y值是指顶部的值)
    [scr_view scrollRectToVisible:CGRectMake(0, 1136, 320, 568) animated:NO];
```  
其他一些属性说明  
<!--more-->
  
indicatorStyle  
滚动条的样式，基本只是设置颜色。总共3个颜色：默认、黑、白  

scrollIndicatorInsets  
设置滚动条的位置  

bouncesZoom  
和 bounces 类似,区别在于：这个效果反映在缩放上面，假如缩放超过最大缩放，那么会反弹效果；假如是 NO，
则到达最大或者最小的时候立即停止。  

scrollEnabled  
决定是否可以滚动  

tracking   
当touch 后还没有拖动的时候值是YES，否则NO  

zoomBouncing  
当内容放大到最大或者最小的时候值是 YES，否则 NO  

zooming  
当正在缩放的时候值是 YES，否则 NO  

decelerating  
当滚动后，手指放开但是还在继续滚动中。这个时候是 YES，其它时候是 NO   

decelerationRate  
设置手指放开后的减速率  

maximumZoomScale  
一个浮点数，表示能放最大的倍数  

minimumZoomScale  
一个浮点数，表示能缩最小的倍数  

delaysContentTouches  
是个布尔值，当值是 YES 的时候，用户触碰开始，scroll view要延迟一会，看看是否用
户有意图滚动。假如滚动了，那么捕捉 touch-down 事件，否则就不捕捉。假如值是NO，当用户触碰， scroll
view 会立即触发 touchesShouldBegin:withEvent:inContentView:，默认是 YES  

canCancelContentTouches  
当值是 YES 的时候，用户触碰后，然后在一定时间内没有移动，scrollView 发送
tracking events，然后用户移动手指足够长度触发滚动事件，这个时候，scrollView 发送了
touchesCancelled:withEvent: 到 subview，然后 scroView 开始滚动。假如值是 NO，scrollView 发送
tracking events 后，就算用户移动手指，scrollView 也不会滚动。
