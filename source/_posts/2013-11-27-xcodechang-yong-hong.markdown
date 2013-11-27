---
layout: post
title: "xcode常用宏"
date: 2013-11-27 15:23:47 +0800
comments: true
categories: objc
---
1.判断是否为iphone5  
\#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ?
CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

2.判断是否为ipad  
\#define isPad (UI\_USER\_INTERFACE\_IDIOM() == UIUserInterfaceIdiomPad)

3.屏幕的长和宽  
\#define SCREEN\_WIDTH ([UIScreen mainScreen].bounds.size.width)
\#define SCREEN\_HEIGHT ([UIScreen mainScreen].bounds.size.height)

<!--more-->

4.获取系统的版本号    
\#define CurrentSystemVersion ([[UIDevice currentDevice] systemVersion]) 

5.获取语言  
\#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

6.判断是iphone还是模拟器  
\#if TARGET\_OS\_IPHONE
//iPhone Device
\#endif
 
\#if TARGET\_IPHONE\_SIMULATOR
//iPhone Simulator
\#endif

7.判断是否用arc  
\#if \_\_has\_feature(objc\_arc)
//compiling with ARC
\#else
// compiling without ARC
\#endif

8.默认配置保存  
\#define USER\_DEFAULT [NSUserDefaults standardUserDefaults]

9.直接用0-255定义rgba颜色  
\#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
\#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f
alpha:(a)]

10.加载图片(不会自己是不@2x)  

\#define LOADIMAGE(file,ext) [UIImage imageWithContentsOfFile:[[NSBundle
mainBundle]pathForResource:file ofType:ext]]

 

11.系统代理  

\#define sysDege (AppDelegate \*)[[UIApplication sharedApplication] delegate]

 

12.从bundle加载图片  

\#define LOADIMAGE(file,ext) [UIImage imageWithContentsOfFile:[[NSBundle
mainBundle]pathForResource:file ofType:ext]]
