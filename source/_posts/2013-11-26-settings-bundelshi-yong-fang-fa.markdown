---
layout: post
title: "Settings bundel使用方法"
date: 2013-11-26 23:36:15 +0800
comments: true
categories: objc
---
一些需要用户配置,又不需要经常变动的信息,我们可以将他存储在ios的"设置"应用中,在这里配置参数的一个好处
是与你开发的应用是分开的,这样可以节约版面放一些你需要放置的元素,而将这些不需要经常变动的信息统一放到
系统的设置中.具体做法如下
1.首先在xcdoe项目中单击菜单file->new->file...  
2.在弹出的对话框中选择Settings bundle类型的文件  
{% img /images/2013/11/sb1.png %}
<!--more-->
3.创建成功之后将在xcode左边的项目目录树中看到新创建的settings bundle,其中的root.plist就是我们存储信
息的文件  
{% img /images/2013/11/sb2.png %}  
4.在root.plist中默认会创建一些不同类型的值.可以根据需要参考默认的一些设置,自行添加修改内容(最顶上面
始终显示的是iphone settings schema,ipad的应用也一样,没影响)  
{% img /images/2013/11/sb3.png %}  
注意:

1.在图中我们可以看到,可以为自己添加的参数设置默认值.Default Value,这个值其实只是在"设置"中显示用的,
读取的时候是没有值的,在下一篇介绍NSUserDefaults的文章中会有解决办法

2.每个item必须要有key这个键,否则的话NSUserDefaults读取不到对应的值.因为键值对key value一定要有key才
有值.

到此为止settings bundle就设置好了,运行一次你开发的应用后打开系统的"设置"应用程序,在首页的底部将发现
我们开发的应用程序设置菜单.

因为Settings bundle中读取和写入的信息都是通过NSUserDefaults这个对象来实现的,所以具体的操作方法参考
NSUserDefaults的常用方法

