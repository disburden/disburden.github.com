---
layout: post
title: "UILabel常用方法"
date: 2013-11-26 00:28:15 +0800
comments: true
categories: objc
---
UILabel的常用方法(强力建议用RTLable代替UILabel.支持html标注)
```objective-c code
    //创建一个label
    UILabel *fourLbl = [[UILabel alloc] initWithFrame:CGRectMake(59, 168, 184, 21)];

    //设置标签的背景色clearColor就是透明
    fourLbl.backgroundColor = [UIColor clearColor];

    //设置字体,好像objective-c中没有单独设字体或者设置字体大小的方法,捆绑在一起了
    fourLbl.font=[UIFont systemFontOfSize:14];

    //设置字体的粗体和斜体
fourLbl.font = [UIFont boldSystemFontOfSize:16.0f]
fourLbl.font = [UIFont italicSystemFontOfSize:16.0f];

//设置标签文字的颜色
    fourLbl.textColor=[UIColor whiteColor];

    //设置文字阴影     
     [fourLbl setShadowColor:[UIColor grayColor]]; &nbsp;
     [fourLbl setShadowOffset:CGSizeMake(-1, 0)];

    //设置显示行数
    [fourLbl setNumberOfLines:0];

    //UILabel宽度不变，根据字体多少，自动调整UILabel的高度，并折行显示。
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 200, 20)];  
    label.font = [UIFont boldSystemFontOfSize:20.0f];  //UILabel的字体大小  
    label.numberOfLines = 0;  //必须定义这个属性，否则UILabel不会换行  
    label.textColor = [UIColor whiteColor];   
    label.textAlignment = NSTextAlignmentLeft;  //文本对齐方式  
    [label setBackgroundColor:[UIColor redColor]];  
    //宽度不变，根据字的多少计算label的高度  
    NSString *str = @"可以更改此内容进行测试，宽度不变，高度根据内容自动调节";  
    CGSize size = [str sizeWithFont:label.font constrainedToSize:CGSizeMake(label.frame.size.width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];  
    //根据计算结果重新设置UILabel的尺寸  
    [label setFrame:CGRectMake(0, 10, 200, size.height)];  
     label.text = str;  

    //UILabel高度不变，根据字体多少，自动调整UILabel的宽度，并折行显示
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 20, 20)];  
    label.font = [UIFont boldSystemFontOfSize:20.0f];  //UILabel的字体大小  
    label.numberOfLines = 0;  //必须定义这个属性，否则UILabel不会换行  
    label.textColor = [UIColor whiteColor];   
    label.textAlignment = NSTextAlignmentLeft;  //文本对齐方式  
    [label setBackgroundColor:[UIColor redColor]];  
    //高度固定不折行，根据字的多少计算label的宽度  
    NSString *str = @"高度不变获取宽度，获取字符串不折行单行显示时所需要的长度";  
    CGSize size = [str sizeWithFont:label.font constrainedToSize:CGSizeMake(MAXFLOAT,
label.frame.size.height)];  
    NSLog(@"size.width=%f, size.height=%f", size.width, size.height);  
    //根据计算结果重新设置UILabel的尺寸  
    [label setFrame:CGRectMake(0, 10, size.width, 20)];  
    label.text = str;  
```

利用objective-c的category特性解决uilabel顶部对齐的问题
```objective-c code
// -- file: UILabel+VerticalAlign.h

@interface UILabel (VerticalAlign)
- (void)alignTop;
- (void)alignBottom;
@end

// -- file: UILabel+VerticalAlign.m
@implementation UILabel (VerticalAlign)
- (void)alignTop {
    CGSize fontSize = [self.text sizeWithFont:self.font];
    double finalHeight = fontSize.height * self.numberOfLines;
    double finalWidth = self.frame.size.width;    //expected width of label
    CGSize theStringSize = [self.text sizeWithFont:self.font
constrainedToSize:CGSizeMake(finalWidth, finalHeight) lineBreakMode:self.lineBreakMode];
    int newLinesToPad = (finalHeight  - theStringSize.height) / fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text = [self.text stringByAppendingString:@"\n "];
}

- (void)alignBottom {
    CGSize fontSize = [self.text sizeWithFont:self.font];
    double finalHeight = fontSize.height * self.numberOfLines;
    double finalWidth = self.frame.size.width;    //expected width of label
    CGSize theStringSize = [self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(finalWidth, finalHeight) lineBreakMode:self.lineBreakMode];
    int newLinesToPad = (finalHeight  - theStringSize.height) / fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text = [NSString stringWithFormat:@" \n%@",self.text];
}
@end
```
