---
layout: post
title: "NSDate常用方法"
date: 2013-11-26 00:45:48 +0800
comments: true
categories: objc
---
如题
<!--more-->
```objective-c code
//获取当前日期(UTC)

NSDate * date = [NSDate date];

 
//从日历获取本地时间

NSDate * date = [NSCalendarDate date];

 
//通过字符串获取指定的日期

NSDate * nationalDate = [NSDate dateWithString:"2012-10-01 00:00:00 +0800"];

 
//通过指定格式的字符串获取时间

NSDateFormatter * formatter = [[NSDateFormatter alloc] init];

[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];

NSDate * nationalDate2 = [formatter dateFromString:@"2012-10-01 00:00:00"];


//同样可以将日期格式化成指定的格式

NSDate * date = [NSCalendarDate date];

NSDateFormatter formatter = [[NSDateFormatter alloc] init];

[formatter setDateFormat:@"yyyy-MM-dd"];

NSString * dateString = [formatter stringFromDate:date];


//在原有时间上加上时间,只能以毫秒为单位,一小时就是3600毫秒(一下加上30天的例子)

NSDate * date = [NSCalendarDate date];

NSDate *newDate = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:([date
timeIntervalSinceReferenceDate] + 30*24*3600)];


//计算两个日期之间比较早的时间

NSDate * earlierDate = [yesterday earlierDate:today];


//计算两个日期之间比较晚的时间

NSDate * laterDate = [tomorrow laterDate:today];


//(没用过)根据format字符串，将当前日期转换成指定时区的calendarDate

NSCalendarDate * cDate = [today dateWithCalendarFormat:@"%d %b %Y" timeZone:[NSTimeZone localTimeZone]];


//(没用过)这个方法用于实现两个日期相减。
timeInternvalSinceDate
```
