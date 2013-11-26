---
layout: post
title: "NSArray的常用方法"
date: 2013-11-27 00:27:29 +0800
comments: true
categories: objc
---
+ 1.创建一个数组  
```objective-c 
NSArray *array = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];
```  

+ 2.获取数组对象的个数  
```objective-c  
NSArray *array = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];

NSLog(@"array count:%d",[array count]);

=====

2013-03-05 21:27:14.277 testNSString[2581:c07] array count:4
```  

<!--more-->

+ 3.获取指定索引处的对象  
```objective-c 
    NSArray *array = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];

    NSLog(@"array index 2:%@",[array objectAtIndex:2]);

=====

2013-03-05 21:26:04.835 testNSString[2556:c07] array index 2:Three
```  

+ 4.从一个数组拷贝数据到另一数组(或者可变数组) 
 ```objective-c 
    NSArray *array1 = [[NSArray alloc] init];
    NSMutableArray *MutableArray = [[NSMutableArray alloc] init];
    NSArray *array = [NSArray arrayWithObjects:
                      @"a",@"b",@"c",nil];
    NSLog(@"array:%@",array);
    MutableArray = [NSMutableArray arrayWithArray:array];
    NSLog(@"MutableArray:%@",MutableArray);
   
    array1 = [NSArray arrayWithArray:array];

    NSLog(@"array1:%@",array1);

=====

2013-03-05 21:29:17.021 testNSString[2616:c07] array:(
    a,
    b,
    c
)
2013-03-05 21:29:17.023 testNSString[2616:c07] MutableArray:(
    a,
    b,
    c
)
2013-03-05 21:29:17.023 testNSString[2616:c07] array1:(
    a,
    b,
    c
)
```  

+ 5.从一个数组复制数据到另一数组  
```objective-c 
<b>   id obj;
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    NSArray *oldArray = [NSArray arrayWithObjects:
                         @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];
   
    NSLog(@"oldArray:%@",oldArray);
    for(int i = 0; i < [oldArray count]; i++)
    {
        obj = [[oldArray objectAtIndex:i] copy];
        [newArray addObject: obj];
    }

    NSLog(@"newArray:%@", newArray);

=====

2013-03-05 21:32:32.584 testNSString[2664:c07] oldArray:(
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h
)
2013-03-05 21:32:32.586 testNSString[2664:c07] newArray:(
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h
)</b>
```  

+ 6.快速枚举数组中的元素  
```objective-c 
   NSArray *oldArray = [NSArray arrayWithObjects:
                         @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];
    NSLog(@"oldArray:%@",oldArray);
   
    for(id obj in oldArray)
    {
        NSLog(@"%@",obj);
    }

=====

2013-03-05 21:34:56.611 testNSString[2719:c07] oldArray:(
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h
)
2013-03-05 21:34:56.612 testNSString[2719:c07] a
2013-03-05 21:34:56.613 testNSString[2719:c07] b
2013-03-05 21:34:56.613 testNSString[2719:c07] c
2013-03-05 21:34:56.614 testNSString[2719:c07] d
2013-03-05 21:34:56.614 testNSString[2719:c07] e
2013-03-05 21:34:56.615 testNSString[2719:c07] f
2013-03-05 21:34:56.615 testNSString[2719:c07] g
2013-03-05 21:34:56.616 testNSString[2719:c07] h
```  

+ 7.数组的深度拷贝(deep copy)  
```objective-c 
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    NSArray *oldArray = [NSArray arrayWithObjects:
                         @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",nil];
    NSLog(@"oldArray:%@",oldArray);
    newArray = (NSMutableArray*)CFBridgingRelease(CFPropertyListCreateDeepCopy(kCFAllocatorDefault, (CFPropertyListRef)oldArray, kCFPropertyListMutableContainers));
    NSLog(@"newArray:%@", newArray);

=====

2013-03-05 21:37:06.342 testNSString[2753:c07] oldArray:(
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h
)
2013-03-05 21:37:06.344 testNSString[2753:c07] newArray:(
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h
)
```  

+ 8.用枚举对象枚举数组所有元素  
```objective-c 
    NSArray *oldArray = [NSArray arrayWithObjects:
                         @"b",@"a",@"e",@"d",@"c",@"f",@"h",@"g",nil];
    NSLog(@"oldArray:%@",oldArray);
    NSEnumerator *enumerator;
    enumerator = [oldArray objectEnumerator];
    id obj;
    while(obj = [enumerator nextObject])
    {
        NSLog(@"%@",obj);
    }

=====

2013-03-05 21:40:00.890 testNSString[2804:c07] oldArray:(
    b,
    a,
    e,
    d,
    c,
    f,
    h,
    g
)
2013-03-05 21:40:00.891 testNSString[2804:c07] b
2013-03-05 21:40:00.892 testNSString[2804:c07] a
2013-03-05 21:40:00.892 testNSString[2804:c07] e
2013-03-05 21:40:00.893 testNSString[2804:c07] d
2013-03-05 21:40:00.893 testNSString[2804:c07] c
2013-03-05 21:40:00.894 testNSString[2804:c07] f
2013-03-05 21:40:00.894 testNSString[2804:c07] h
2013-03-05 21:40:00.895 testNSString[2804:c07] g
```  

+ 9.将字符串切分到一个数组中
```objective-c 
    NSString *string = [[NSString alloc] initWithFormat:@"One,Two,Three,Four"];
    NSLog(@"string:%@",string);
    NSArray *array = [string componentsSeparatedByString:@","];
    NSLog(@"array:%@",array);

=====

2013-03-05 21:41:34.496 testNSString[2833:c07] string:One,Two,Three,Four
2013-03-05 21:41:34.497 testNSString[2833:c07] array:(
    One,
    Two,
    Three,
    Four
)
```  

+ 10.将数组元素合并到一个字符串中
```objective-c 
    NSArray *array = [[NSArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",nil];
    NSString *string = [array componentsJoinedByString:@","];
    NSLog(@"string:%@",string);

=====

2013-03-05 21:42:38.695 testNSString[2859:c07] string:One,Two,Three,Four
```  
