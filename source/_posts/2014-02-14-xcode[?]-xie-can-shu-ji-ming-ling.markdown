---
layout: post
title: "xcode一些参数及命令"
date: 2014-02-14 10:54:20 +0800
comments: true
categories: objc
---

### 1. codesign
codesign -dvvv /path/to/MyGreatApp.app
这个命令可以查看app的一些包括签名等信息
要注意这个命令查看的是app文件,不是ipa,所以打包成ipa后要解压一下,看目录里的app文件

codesign -d --entitlements - /path/to/MyGreatApp.app
这个命令还不知道具体干什么的
--entitlements这个参数认不到,直接删掉可以看到一句话的信息,要再研究一下

<!--more-->

### 2.security
security cms -D -i /path/to/MyAdHocProfile1.mobileprovision
这个是可以查看授权文件内容的命令,可以看到授权文件中添加了哪些设备
查看的授权文件可以是从官网下载回来的,也可以是直接同步到本地的
本地的目录一般是在
~Library/MobileDevice/Provisioning Profiles 这个目录下

### 4. http://support.apple.com/kb/DL1465
苹果官方提供的一个检查签名及预置文件的工具

### 5.根据crash出错的地址找到对应的代码行
比如crash的信息如下
Thread 0 Crashed:
0   libobjc.A.dylib                0x00003ec0 objc\_msgSend + 24
1   MyApp               0x000036d2 0×1000 + 9938﻿
我们得到了用户发生崩溃情况的内存地址：0x000036d2﻿
然后回到我们应用程序的build目录，目录下一定要包含MyApp.app 和MyApp.app.dSYM两个文件。
在控制台使用dwarfdump命令，解析出内存地址，如： 
dwarfdump –lookup 0x000036d2 –arch armv6 MyApp.app.dSYM
输出信息如下：
{% img /images/2014/01/08341385206089.jpg %}
