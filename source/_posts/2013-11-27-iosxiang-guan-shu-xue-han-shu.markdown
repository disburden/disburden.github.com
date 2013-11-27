---
layout: post
title: "ios相关数学函数"
date: 2013-11-27 12:25:57 +0800
comments: true
categories: objc
---
在实际 工作中有些程序不可避免的需要使用数学函数进行计算，比如地图程序的地理坐标到地图坐标的变换。
Objective-C做为ANSI C的扩展，使用C标准库头文件<math.h>中定义的数学常量宏及数学函数来实现基本的数学计
算操作，所以不必费神再在Cocoa Foundation中寻找相应的函数和类了。这里列出一些常用宏和数学函数，更详细
的信息还是需要去查阅<math.h>头文件。
<!--more-->

```objective-c 
//数学常量：
#define M\_E         2.71828182845904523536028747135266250   // e
#define M\_LOG2E     1.44269504088896340735992468100189214   // log 2e
#define M\_LOG10E    0.434294481903251827651128918916605082  // log 10e
#define M\_LN2       0.693147180559945309417232121458176568  // log e2
#define M\_LN10      2.30258509299404568401799145468436421   // log e10
#define M\_PI        3.14159265358979323846264338327950288   // pi
#define M\_PI\_2      1.57079632679489661923132169163975144   // pi/2
#define M\_PI\_4      0.785398163397448309615660845819875721  // pi/4
#define M\_1\_PI      0.318309886183790671537767526745028724  // 1/pi
#define M\_2\_PI      0.636619772367581343075535053490057448  // 2/pi
#define M\_2\_SQRTPI  1.12837916709551257389615890312154517   // 2/sqrt(pi)
#define M\_SQRT2     1.41421356237309504880168872420969808   // sqrt(2)
#define M\_SQRT1\_2   0.707106781186547524400844362104849039  // 1/sqrt(2)

//常用函数：
//指数运算
NSLog(@"%.f", pow(3,2) ); //result 9
NSLog(@"%.f", pow(3,3) ); //result 27

//开平方运算
NSLog(@"%.f", sqrt(16) ); //result 4
NSLog(@"%.f", sqrt(81) ); //result 9

//上舍入
NSLog(@"res: %.f", ceil(3.000000000001)); //result 4
NSLog(@"res: %.f", ceil(3.00)); //result 3

//下舍入
NSLog(@"res: %.f", floor(3.000000000001)); //result 3
NSLog(@"res: %.f", floor(3.9999999)); //result 3

//四舍五入
NSLog(@"res: %.f", round(3.5)); //result 4
NSLog(@"res: %.f", round(3.46)); //result 3
NSLog(@"res: %.f", round(-3.5)); //NB: this one returns -4

//最小值
NSLog(@"res: %.f", fmin(5,10)); //result 5

//最大值
NSLog(@"res: %.f", fmax(5,10)); //result 10



//绝对值
NSLog(@"res: %.f", fabs(10)); //result 10
NSLog(@"res: %.f", fabs(-10)); //result 10

 

//求余 
%运算是求余数,11 % 2=1   4%2=0 10%3=1
```  
这里没有列出的三角函数也是属于C标准数学函数的一部分，也可以在<math.h>中查阅。

