---
layout: post
title: "NSMutableArray的基本用法"
date: 2014-02-13 15:53:48 +0800
comments: true
categories: objc
---

MutableArray和NSArry只是可变的区别,所以有许多方法两种是通用的,如果这里找不到你想要的内容可能在另一篇
介绍NSArray的博客中有你想要的.
 
### 1.常用创建方式
NSMutableArray \*muArray=[[NSMutableArray alloc] init];

参数20只是一个预估值,对实际的使用没有任何影响,你可以随意增加数组的个数,估计是为了系统优化用的.
NSMutableArray \*muArray = [NSMutableArray arrayWithCapacity:20];

以下这种创建方式要注意,这样添加的数据的内容是指向aArray中数据的指针.在遍历muArray的时候可能会有意向
的错误
NSMutableArray \*muArray=[NSMutableArray arrayWithArray:aArray];
要避免这种错误的话可以先遍历aArray数据的数据,一个一个添加到muArray中
```objective-c
eg
    for (NSNumber *tmp in aArray) {
        int i=[tmp intValue];
        [muArray addObject:[NSNumber numberWithInt:i]];
    }

NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
```
<!--more-->

### 2.在数组末尾添加对象
```objective-c
    NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
    [muArray addObject:@"Four"];
    NSLog(@"array:%@",muArray);
===============
2013-05-16 17:06:25.041 justTest[2829:c07] array:(
    One,
    Two,
    Three,
    Four
)
```

### 3.删除数组中指定索引处对象
```objective-c
NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
[muArray removeObjectAtIndex:1];
NSLog(@"array:%@", muArray);
================
2013-05-16 17:07:54.969 justTest[2903:c07] array:(
    One,
    Three
)
``` 
### 4.数组枚举(NSEnumerator \*)objectEnumerator;从前向后  
```objective-c
NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
NSEnumerator *enumerator;
enumerator = [muArray objectEnumerator];

id thingie;
while (thingie = [enumerator nextObject]) {
NSLog(@"thingie:%@",thingie);
}
=================
2013-05-16 17:10:07.888 justTest[3002:c07] thingie:One
2013-05-16 17:10:07.889 justTest[3002:c07] thingie:Two
2013-05-16 17:10:07.889 justTest[3002:c07] thingie:Three
```

### 5.数组枚举(NSEnumerator \*)objectEnumerator;从后向前
```objective-c
NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
NSEnumerator *enumerator;
enumerator = [muArray reverseObjectEnumerator];

id thingie;
while (thingie = [enumerator nextObject]) {
NSLog(@"thingie:%@",thingie);
}
==================
2013-05-16 17:11:49.437 justTest[3096:c07] thingie:Three
2013-05-16 17:11:49.438 justTest[3096:c07] thingie:Two
2013-05-16 17:11:49.438 justTest[3096:c07] thingie:One
```

### 6.快速枚举
```objective-c
NSMutableArray  *muArray = [NSMutableArray arrayWithObjects:@"One",@"Two",@"Three",nil];
for(NSString *string in muArray)
{
NSLog(@"string:%@",string);
}
=================
2013-05-16 17:13:00.184 justTest[3155:c07] string:One
2013-05-16 17:13:00.185 justTest[3155:c07] string:Two
2013-05-16 17:13:00.185 justTest[3155:c07] string:Three
 ```
### 7.排序方法一,如果全是int类型的可以用自带的方法直接排序
```objective-c
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[NSNumber numberWithInt:20]];
    [array addObject:[NSNumber numberWithInt:1]];
    [array addObject:[NSNumber numberWithInt:4]];

    NSArray*sortedArray = [array sortedArrayUsingSelector:@selector(compare:)];
    for(int i =0; i < [sortedArray count]; i++)
    {
        int x = [[sortedArray objectAtIndex:i]intValue];
        NSLog(@"%d\n", x);
    }
``` 

### 8.排序方法二
```objective-c
array=[[NSMutableArray alloc] initWithCapacity:11];
    
    NSMutableDictionary *dir6=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir6 setObject:@"曹磊" forKey:@"FriendName"];
    [dir6 setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir6];

    NSMutableDictionary *dir=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir setObject:@"王军" forKey:@"FriendName"];
    [dir setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir];

    
    NSMutableDictionary *dir1=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir1 setObject:@"111" forKey:@"FriendName"];
    [dir1 setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir1];

    
    NSMutableDictionary *dir2=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir2 setObject:@"王兴朝" forKey:@"FriendName"];
    [dir2 setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir2];

    
    NSMutableDictionary *dir3=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir3 setObject:@"wangjun" forKey:@"FriendName"];
    [dir3 setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir3];

    
    NSMutableDictionary *dir4=[[NSMutableDictionary alloc] initWithCapacity:1];
    [dir4 setObject:@"apk" forKey:@"FriendName"];
    [dir4 setObject:@"曹磊" forKey:@"FriendID"];
    [array addObject:dir4];

    
    

    NSLog(@">>>>>>排序前>>>>>>>>");
    for (int i=0; i<[array count]; i++) {
        NSLog(@"%@",[[array objectAtIndex:i] objectForKey:@"FriendName"]);
    }
    
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:@"FriendName" ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:&sorter count:1];
    NSArray *sortedArray1 = [array sortedArrayUsingDescriptors:sortDescriptors];
    
    
    NSLog(@"\n\n\n\n\n>>>>>>排序后>>>>>>>>");
    for (int i=0; i<[sortedArray1 count]; i++) {
        NSLog(@"%@",[[sortedArray1 objectAtIndex:i] objectForKey:@"FriendName"]);
    }
 ```

### 9.在指定位置插入对象
```objective-c
    NSObject *obj = [[NSObject alloc]init];
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
    [muArray insertObject:@"搅局的" atIndex:2];
    [muArray addObject:obj];
    for (NSObject * object in muArray) {
        NSLog(@"数组对象:%@", object);
    }
=================
2013-05-16 17:20:02.062 justTest[3429:c07] 数组对象:对象1
2013-05-16 17:20:02.063 justTest[3429:c07] 数组对象:对象2
2013-05-16 17:20:02.063 justTest[3429:c07] 数组对象:搅局的
2013-05-16 17:20:02.063 justTest[3429:c07] 数组对象:对象3
2013-05-16 17:20:02.063 justTest[3429:c07] 数组对象:对象4
2013-05-16 17:20:02.063 justTest[3429:c07] 数组对象:<NSObject: 0x824ee10>
``` 

### 10.删除数组中指定元素，removeObject 根据对象isEqual消息判断  
```objective-c
    NSString *str1 = [[NSString alloc] init];
    NSString *str2 = [[NSString alloc] init];
    NSString *str3 = [str1 stringByAppendingFormat:@"字符串"];
    NSString *str4 = [str2 stringByAppendingFormat:@"字符串"];
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象"];
    [muArray addObject:str3];
    [muArray addObject:str4];
    
    for (NSObject * object in muArray)
    {
        NSLog(@"数组对象:%@", object);
    }
    
    if ([str3 isEqual:str4])
    {
        NSLog(@"str1 isEqual str2");
    }
    
    if (str3  == str4)
    {
        NSLog(@"str1 == str2");
    }
    
    [muArray removeObject:str3];
    
    for (NSObject * object in muArray)
    {
        NSLog(@"数组对象:%@", object);
    }
==================
2013-05-16 18:28:14.175 justTest[4056:c07] 数组对象:对象
2013-05-16 18:28:14.175 justTest[4056:c07] 数组对象:字符串
2013-05-16 18:28:14.176 justTest[4056:c07] 数组对象:字符串
2013-05-16 18:28:14.176 justTest[4056:c07] str1 isEqual str2
2013-05-16 18:28:14.176 justTest[4056:c07] 数组对象:对象
此时你会发现"字符串"全部被删除了,因为isEqual是判断内容的,所以内容为"字符串"的都会被删除
```

### 11.删除数组中指定元素，removeObjectIdenticalTo 根据对象地址判断
```objective-c
将上例中的removeObject改成removeObjectIdenticalTo
=====================
2013-05-16 18:36:25.076 justTest[4379:c07] 数组对象:对象
2013-05-16 18:36:25.076 justTest[4379:c07] 数组对象:字符串
2013-05-16 18:36:25.076 justTest[4379:c07] 数组对象:字符串
2013-05-16 18:36:25.077 justTest[4379:c07] str1 isEqual str2
2013-05-16 18:36:25.077 justTest[4379:c07] 数组对象:对象
2013-05-16 18:36:25.077 justTest[4379:c07] 数组对象:字符串
结果在意料之中,只有str3被移除了
``` 

### 12,根据范围删除数据
```objective-c
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象0"];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
    [muArray addObject:@"对象5"];
    [muArray addObject:@"对象6"];
    [muArray addObject:@"对象7"];
    [muArray addObject:@"对象8"];

    
    for (NSObject * object in muArray)
    {
        NSLog(@"数组对象:%@", object);
    }
    
    NSRange rang = NSMakeRange(2, 3);
    
    [muArray removeObjectsInRange:rang];
   // [muArray removeObject:obj inRange:rang];
    
    for (NSObject * object in muArray)
    {
        NSLog(@"移除后数组对象:%@", object);
    }
====================
2013-05-16 18:48:10.713 justTest[4820:c07] 数组对象:对象0
2013-05-16 18:48:10.713 justTest[4820:c07] 数组对象:对象1
2013-05-16 18:48:10.714 justTest[4820:c07] 数组对象:对象2
2013-05-16 18:48:10.714 justTest[4820:c07] 数组对象:对象3
2013-05-16 18:48:10.714 justTest[4820:c07] 数组对象:对象4
2013-05-16 18:48:10.714 justTest[4820:c07] 数组对象:对象5
2013-05-16 18:48:10.714 justTest[4820:c07] 数组对象:对象6
2013-05-16 18:48:10.715 justTest[4820:c07] 数组对象:对象7
2013-05-16 18:48:10.715 justTest[4820:c07] 数组对象:对象8

2013-05-16 18:48:10.715 justTest[4820:c07] 移除后数组对象:对象0
2013-05-16 18:48:10.715 justTest[4820:c07] 移除后数组对象:对象1
2013-05-16 18:48:10.715 justTest[4820:c07] 移除后数组对象:对象5
2013-05-16 18:48:10.716 justTest[4820:c07] 移除后数组对象:对象6
2013-05-16 18:48:10.716 justTest[4820:c07] 移除后数组对象:对象7
2013-05-16 18:48:10.716 justTest[4820:c07] 移除后数组对象:对象8
``` 

### 13.替换某索引值对应的对象
```objective-c
    NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];
    [muArray addObject:@"对象1"];
    [muArray addObject:@"对象2"];
    [muArray addObject:@"对象3"];
    [muArray addObject:@"对象4"];
   
    for (NSObject * object in muArray)
    {
        NSLog(@"数组对象:%@", object);
    }
    
    [muArray replaceObjectAtIndex:2 withObject:@"字符串替换回来"];
    
    for (NSObject * object in muArray)
    {
        NSLog(@"数组对象:%@", object);
    }
================
2013-05-16 18:51:40.674 justTest[4941:c07] 数组对象:对象1
2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:对象2
2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:对象3
2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:对象4

2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:对象1
2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:对象2
2013-05-16 18:51:40.675 justTest[4941:c07] 数组对象:字符串替换回来
2013-05-16 18:51:40.676 justTest[4941:c07] 数组对象:对象4
```
 
参考:
http://www.cnblogs.com/stoic/archive/2012/07/09/2582773.html
http://blog.csdn.net/dirknow/article/details/6604033

