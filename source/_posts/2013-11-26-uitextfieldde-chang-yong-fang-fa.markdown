---
layout: post
title: "UITextField的常用方法"
date: 2013-11-26 20:27:50 +0800
comments: true
categories: objc
---
介绍UITextField的常用方法以及计算中英文混合的字符长度

<!--more-->
```objective-c code
//创建一个UITextField
self.moblieTf=[[UITextField alloc] initWithFrame:CGRectMake(132, 164, 110, 30)];

//指定获取焦点时弹出的键盘的类型,UIKeyboardTypeNumberPad是指弹出数字类型的键盘 
[self.moblieTf setKeyboardType:UIKeyboardTypeNumberPad];

//指定键盘中完成操作的按钮,UIReturnKeyDone指键盘上显示Done按钮,默认的是Return,可以通过方法指定按下
//Done之后要做什么 
[self.moblieTf setReturnKeyType:UIReturnKeyDone];

//指定done键要处理的事件
[self.moblieTf addTarget:self action:@selector(proDone:)
forControlEvents:UIControlEventEditingDidEndOnExit];

//实现类似于Delphi中的onChange事件
[self.moblieTf addTarget:self action:@selector(valueChanged:)
forControlEvents:UIControlEventEditingChanged];

//关闭英文自动改正(联想)功能
self.moblieTf.autocorrectionType=UITextAutocorrectionTypeNo;

//关闭自动首字母大写功能
self.moblieTf.autocapitalizationType=UITextAutocapitalizationTypeNone;

//当获取焦点的时候执行的方法 
[self.moblieTf addTarget:self action:@selector(moblieGetFocus:)
forControlEvents:UIControlEventEditingDidBegin];

//失去焦点的时候执行的方法 
[self.moblieTf addTarget:self action:@selector(moblieLostFocus:)
forControlEvents:UIControlEventEditingDidEnd];

//当按下键盘上的Done键时执行的方法 
[self.moblieTf addTarget:self action:@selector(proDone:)
forControlEvents:UIControlEventEditingDidEndOnExit];

//设置文本框为焦点,会自动弹出键盘.
[self.moblieTf becomeFirstResponder];

//失去焦点,通常作为关闭键盘的一种方式
[self.moblieTf resignFirstResponder];

//指定文本框的默认文本
self.moblieTf.text=@"只是测试一下";

//指定文本框的背景颜色
[self.moblieTf setBackgroundColor:[UIColor blackColor]];

//指定输入的文本的颜色
[self.moblieTf setTextColor:[UIColor whiteColor]];
```
--------------------
通过uitextfield的协议方法实现控制uitextfield输入的长度(中英混合字符)
首先实现一个方法计算中英混合字符串的长度,中文算两个字节,英文及数字算1个字节
``` objective-c code
-(int)calculateTextNumber:(NSString *) textA
{
    float number = 0.0;
    int index;
    for (index=0; index < [textA length]; index++) {
       
        NSString *character = [textA substringWithRange:NSMakeRange(index, 1)];
       
        if ([character lengthOfBytesUsingEncoding:NSUTF8StringEncoding] == 3) {
            number++;
        } else {
            number = number+0.5;
        }
    }
    return ceil(number);
}
```
然后通过代理方法控制长度
```objective-c code
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    NSMutableString *text = [textField.text mutableCopy] ;
    [text replaceCharactersInRange:range withString:string];
    return [self calculateTextNumber:text] <= 8; //这里的8指的是双字节的长度,实际的长度就是16
    return YES;
}
```
