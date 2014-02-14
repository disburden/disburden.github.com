---
layout: post
title: "NSDictionary及NSMutableDictionary的常用方法"
date: 2014-02-14 10:12:44 +0800
comments: true
categories: objc
---

### 1.创建字典
```objective-c
    NSDictionary *dictionary = [[NSDictionary alloc]
initWithObjectsAndKeys:@"One",@"1",@"Two",@"2",@"Three",@"3",nil];
    NSString *string = [dictionary objectForKey:@"1"];
    NSLog(@"string:%@",string);
    NSLog(@"dictionary:%@",dictionary);
===========================
2013-07-03 12:19:54.932 justTest[5438:c07] string:One
2013-07-03 12:19:54.933 justTest[5438:c07] dictionary:{
    1 = One;
    2 = Two;
    3 = Three;
}
```  

### 2.创建可变字典并添加记录
```objective-c
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    //添加字典
    [dictionary setObject:@"One" forKey:@"1"];
    [dictionary setObject:@"Two" forKey:@"2"];
    [dictionary setObject:@"Three" forKey:@"3"];
    [dictionary setObject:@"Four" forKey:@"4"];
    NSLog(@"dictionary:%@",dictionary);
=============================
2013-07-03 12:21:17.901 justTest[5467:c07] dictionary:{
    1 = One;
    2 = Two;
    3 = Three;
    4 = Four;
}

```
### 3.删除指定的字典记录
在前面例子的基础上增加语句
```objective-c
    [dictionary removeObjectForKey:@"3"];
    NSLog(@"dictionary:%@",dictionary);
=============================
2013-07-03 12:22:48.164 justTest[5497:c07] dictionary:{
    1 = One;
    2 = Two;
    4 = Four;
}
```

### 4.遍历字典中所有的key
继续前面的例子
```objective-c
    NSEnumerator *enumerator = [dictionary keyEnumerator];
    id key;
    while ((key = [enumerator nextObject]))
    {
        NSString *tmpkey=(NSString *)key;
        NSLog(@"key :%@",tmpkey);
    }
==============================
2013-07-03 12:27:03.610 justTest[5567:c07] key :1
2013-07-03 12:27:03.611 justTest[5567:c07] key :4
2013-07-03 12:27:03.611 justTest[5567:c07] key :2
```
