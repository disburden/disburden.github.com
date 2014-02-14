---
layout: post
title: "XCode工程内多Targets教程"
date: 2014-02-14 11:41:15 +0800
comments: true
categories: objc
---

相信很多人都注意到XCode中, 有个Target的概念. 这在很多地方都有所体现, 比如打开一个工程后, 左侧的列表
中有Targets一项, 而在工程界面的顶部菜单中, project里面也有多个涉及到Target的项目, 那么这个Target到底
是什么呢?  
 Apple 的人是这样说的:“ Targets that define the products to build. A target organizes the files
and instructions needed to build a product into a sequence of build actions that can be taken.”  
 简单的理解的话, 可以认为一个target对应一个新的product(基于同一份代码的情况下). 但都一份代码了,
弄个新product做啥呢? 折腾这个有意思么?  
 其实这不是单纯的瞎折腾, 虽然代码是同一份, 但编译设置(比如编译条件), 以及包含的资源文件却可以有很
大的差别. 于是即使同一份代码, 产出的product也可能大不相同.  
 我们来举几个典型的应用多Targets的情况吧, 比如完整版和lite版; 比如同一个游戏的20关, 30关, 50关版;
再或者比如同一个游戏换些资源和名字就当新游戏卖的(喂喂, 你在教些什么...)  

<!--more-->

## Targets之间, 什么相同, 什么不同!  

 既然是利用同一份代码产出不同的product, 那么到底不同Target之间存在着什么样的差异呢?  
 要解释这个问题, 我们就要来看看一个Target指定了哪些内容.  

 从XCode左侧的列表中, 我们可以看到一个Target包含了Copy Bundle Resources, Compile Sources, Link
Binary With Libraries. 其中   
 Copy Bundle Resources 是指生成的product的.app内将包含哪些资源文件   
 Compile Sources 是指将有哪些源代码被编译    
 Link Binary With Libraries 是指编译过程中会引用哪些库文件  
 通过Copy Bundle Resources中内容的不同设置, 我们可以让不同的product包含不同的资源, 包括程序的主图
标等, 而不是把XCode的工程中列出的资源一股脑的包含进去.  
 而这还不是一个target所指定的全部内容. 每个target可以使用一个独立, 不同的Info.plist文件.  
 我们都知道, 这个Info.plist文件内定义了一个iPhone项目的很多关键性内容, 比如程序名称, 最终生成
product的全局唯一id等等.  
    
  而且不同的target还可以定义完整的差异化的编译设置, 从简单的调整优化选项, 到增加条件编译所使用的编
译条件, 以至于所使用的base SDK都可以差异化指定.  

## 创建第二个Target!
  为什么是第二个? 因为第一个就是创建好工程后的默认Target呀! (废话这么多, 拖走...)  

  创建target有多种方法, 我们可以从现有的target上复制出一份, 然后略加改动, 也可以完全新建一个target
出来. 但其实说穿了, 两个方法大同小异  
  首先我们来看看利用复制的方法创建target  

###    利用复制创建target 
  我们在XCode左侧的列表中, 展开 Targets 项, 在现有的target上, 右键选择 "Duplicate", 或者选中现有
target后, 在顶部菜单的Edit内选择"Duplicate"也可以.  
  此时我们就得到了一个新的target, 而在Resource里面也会得到一个 xxxx copy.plist. 这个新的target与原
有的target是完全一致的, 余下的就是一些差异化的修改, 这个我们后面再说  

###    创建全新的target 
  类似复制的方法, 我们可以在左侧的列表中很多地方按下右键菜单, 都可以看到Add中会有"New Target..."一
项, 而在工程顶部菜单的Project内, 也可以看到这个"New Target..."的身影.  
  点击后, 首先会让你选择target的类型, 既然我一直所指的都是程序本身, 那么自然选择Application了(至于
其他的嘛, 有兴趣的自己研究吧, 比如我们可以把程序中的部分提取成一个Static Library).   
  Next后, 会让你输入一个新的Target的名字, 而不像复制的方法中, 默认生成 xxxxx copy这样的target名. 
  但是这样生成出的Target几乎是空的. Copy Bundle Resources, Compile Sources, Link Binary With
Libraries里面都没有任何内容. 编译设置也是完全原始的状态.  
  可以通过拖拽内容到这些target的设置中, 以及调整编译选项来完成Target的配置.  


## Target中部分内容的修改方法!
  其实这段的部分内容, 在非多Targets的工程中也可能会用得到.   
  由于修改基本都是在工程/编译设置中完成, 因此没有特殊情况, 就不再声明了, 打开target对应的工程/编译
设置的方法可以采用在该target上右键, 选择get info来做到.  

  生成的product名称的修改: Packing段内的Product Name一项  

  Info.plist文件名: Packing段内的Info.plist File一项, 比如复制出来的target觉得那个xxxxx copy.plist
太傻就可以在这里改  

  条件编译: 增加一个User-Defined Setting(Target "xxxx" Info的build页的左下角那个齿轮中可以看到这
个内容), 在Other C Flag里面填入, 比如要定义一个叫做LITE\_VERSION的define值, 我们可以写上
"-DLITE\_VERSION" 或 "-DLITE\_VERSION=1". 那么在程序中就可以用  
  #if defined(LITE\_VERSION)  
  #else  
  #endif 这样的条件编译来部分差异化代码了  

  也许有些朋友记得我在代码区贴过的检测破解版的代码, 其中有一种检测方法就是看info.plist是文本还是二
进制的, 那么我们能否建议一个模拟破解的target, 直接生成文本的info.plist以便测试呢?   
  当然可以, 在packing段内, 有一项叫"Info.plist Output Encoding", 默认值是Binary, 我们只要选成xml,
那么生成出的product.app内的info.plist就直接是文本样式的了.  


    另 外, 向Copy Bundle Resources, Compile Sources, Link Binary With Libraries内添加/删除文件, 可以
在要改动的文件上, 选择get info, 并且切换到Target页, 勾选要引用这个文件的target即可. 比如icon.png可以
指定给默认target, 而icon\_lite.png指定给lite verion的target  
 
原文来自:http://www.cocoachina.com/bbs/read.php?tid-10972-fpage-0-toread--page-1.html
