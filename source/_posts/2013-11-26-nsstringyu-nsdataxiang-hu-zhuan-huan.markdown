---
layout: post
title: "NSString与NSData相互转换"
date: 2013-11-26 00:20:16 +0800
comments: true
categories: objc
---
**NSData转NSString**

	```objective-c   
	NSString *tmpStr;
empStr=[[NSString alloc] initWithData:aNSData encoding:NSUTF8StringEncoding];
```
<!--more--> 

**NSString转NSData**

```objective-c
NSData *tmpData;
tmpData = [tmpStr dataUsingEncoding: NSASCIIStringEncoding];
```

NSASCIIStringEncoding与NSUTF8StringEncoding都是编码,常用的还有

kCFStringEncodingGBK_95

kCFStringEncodingGB_2312_80

kCFStringEncodingGB_18030_2000
