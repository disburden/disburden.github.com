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
<!--more-->
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
