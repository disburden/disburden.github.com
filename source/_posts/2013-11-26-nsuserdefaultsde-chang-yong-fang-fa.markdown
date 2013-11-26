---
layout: post
title: "NSUserDefaults的常用方法"
date: 2013-11-26 17:25:44 +0800
comments: true
categories: objc
---
NSUserDefaults是ios通过内置一个plist文件来存储用户的键值对信息,使用起来很方便.在前面的文章中提到的
settings bundle也是使用NSUserDefaults来存储信息的.由于是键值对的保存方式,所以通常只能存储NSString,
NSNumber, NSDate, NSArray, NSDictionary.以及一些基础类型的数据.常用的一些使用方法如下

<!--more-->

```objective-c code
//要操作NSUserDefaults之前必须先创建他的对象
NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];

//写入bool型数据
[ud setBool:YES forKey:@"firstLaunch"];

//写入字典
[[NSUserDefaults standardUserDefaults] setObject:@{@"name" : @"admin", @"password" : @"123456"}
forKey:@"loginInfo"];

//写入字符串对象
[[NSUserDefaults standardUserDefaults] setObject:@"yyyy-MM-dd HH:mm:ss"
forKey:@"lastUpdatePicTime"];

//读取字典
NSDictionary *tmp=[[NSDictionary alloc] init];
tmp=[[NSUserDefaults standardUserDefaults] objectForKey:@"loginInfo"];

//保存数据,这个很重要.
[NSUserDefaults synchronize];

//设置settings bundle的默认值,在配置settings bundle的root.plist文件中,可以看到允许为字段设置默认值,
//但是一定要注意,这个默认值在其实是无效的.实际上在读取settings bunlde的值之前,我们必须用
//registerDefaults方法向系统注册默认值.假设我们在settings bundle中设置了服务器和路径两个配置值,那么
//执行以下的代码注册默认值
NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
NSDictionary *tmpD=[[NSDictionary alloc] initWithObjectsAndKeys:@"www.wangg.cn",@"hostName",
                        @"test_distr",@"pathName",nil];
[ud registerDefaults:tmpD];
[ud synchronize];
注:可能大家会以为只有系统第一次运行的时候才要执行这个注册默认值的操作,如果每次运行的都执行的话会读取
不到用户配置的值,其实错了,这个方法就是必须每次运行的时候都执行,最好放在appDelegate的
didFinishLaunchingWithOptions方法中每次运行的时候都执行一次,否则你会发现用户到settings bundle中修改
配置信息时,有修改到的值是正常的,没修改到值全部变空.

//上面提到的registerDefaults方法其实不像其字面意思,不是用在第一次运行时注册默认值用的,那么如果需要第
//一次运行的时候指定默认值怎么处理,比如有些应用需要配置服务器信息,如果没有默认值应用就打不开.只有通
//过自己往NSUserDefaults中写标志信息的方法来解决
NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
if (![ud boolForKey:@"everLaunched"]) {
    [ud setBool:YES forKey:@"everLaunched"];
    [ud setBool:YES forKey:@"firstLaunch"];
}
else{
    [ud setBool:NO forKey:@"firstLaunch"];
}
    
if ([ud boolForKey:@"firstLaunch"])
{
    [ud setObject:@"ldl" forKey:@"server"];
    [ud setObject:@"123456" forKey:@"pass"];
    [ud synchronize];
}

[ud synchronize];
```
