---
layout: post
title: "ios扩展属性"
date: 2013-12-05 00:26:35 +0800
comments: true
categories: objc
---
大家都知道通过category类别,可以很方便的为某个类添加新的方法,但是为某个类添加属性就比较少人用了.其实
有些时候还是蛮方便的,要添加属性其实也很简单.我就以为UIButton类添加新的属性为例说明一下怎么添加属性  

1.首先创建新的文件,作为UIButton的类别,比如就取名叫UIButton+extend,然后在头文件中声明你要添加的新的属
性,声明方法就和你自己创建类的时候声明一样的.这里声明了两个新的属性,一个BOOL标志是否被选择,另一个字符
串型tt用来放一些你想放的任何东西.  

```objective-c code
#import <UIKit/UIKit.h>

@interface UIButton (extend)
@property (nonatomic,assign) BOOL hasSelected;
@property (nonatomic,strong) NSString *tt;
@end
```  
<!--more-->

2.因为新的属性是你自己新加的,原来的类里面没有,所以他没办法帮你生成set和get方法,所以你要到m文件中自己
现实这两个方法,由于新的属性是你在运行时加入的,所以要包含objc的运行时头文件#import <objc/runtime.h>,
直接给出完整的代码再做说明吧  

```objective-c code
#import "UIButton+extend.h"
#import <objc/runtime.h>

@implementation UIButton (extend)
@dynamic hasSelected;
@dynamic tt;


-(BOOL)hasSelected
{
    return [objc_getAssociatedObject(self,@"isSelected") boolValue];
}

-(void)setHasSelected:(BOOL)hasSelected
{
    objc_setAssociatedObject(self, @"isSelected", [NSNumber numberWithBool:hasSelected],
OBJC_ASSOCIATION_ASSIGN);
    if (hasSelected) {
        [self setImage:[UIImage imageNamed:@"btn_miti1"] forState:UIControlStateNormal];
    }else
    {
        [self setImage:[UIImage imageNamed:@"btn_biaoqing1"] forState:UIControlStateNormal];
    }

}

-(NSString*)tt
{
   return objc_getAssociatedObject(self,@"tt");
}

-(void)setTt:(NSString *)tt
{
    objc_setAssociatedObject(self, @"tt", tt, OBJC_ASSOCIATION_ASSIGN);
}

@end
```  


3.既然要自己实现get和set方法,那么就要用关键字@dynamic来同步属性,(@syncthesize是自动生成get和set方法
).如果不声明的话好像也可以,他自己会找到,没试过,最好还是规范一点.  

4.最关键的就是在get方法中的
objc_setAssociatedObject(self, @"isSelected", [NSNumber numberWithBool:hasSelected],
OBJC_ASSOCIATION_ASSIGN);
这句话.objc_setAssociatedObject是实现动态添加属性的关键,他有4个参数  
a.源对象,就是你的属性要添加给谁  
b.key,属性的标识,必须唯一,set方法就是通过这个来读取的,一般定义为static  
c.属相的值(必须是个对象)  
d.关联方式,可以通过 objc_AssociationPolicy来查看有哪些方式  

5.set方法就是直接通过新增属性的key来读取对应的值
return [objc_getAssociatedObject(self,@"isSelected") boolValue];


