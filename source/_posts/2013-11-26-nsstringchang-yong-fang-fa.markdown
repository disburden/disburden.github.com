---
layout: post
title: "NSString常用方法"
date: 2013-11-26 16:26:12 +0800
comments: true
categories: objc
---
1、创建常量字符串。
 NSString \*astring = @"This is a String!";


 2、创建空字符串，给予赋值。

 NSString \*astring = [[NSString alloc] init];
 astring = @"This is a String!";
 NSLog(@"astring:%@",astring);

 [astring release];

=====

astring:This is a String!


3、在以上方法中，提升速度:initWithString方法

 NSString \*astring = [[NSString alloc] initWithString:@"This is a String!"];
 NSLog(@"astring:%@",astring);

 [astring release];

=====

astring:This is a String!


4、用标准c创建字符串:initWithCString方法(2.0后不怎么支持了)

char \*Cstring = "This is a String!";
NSString \*astring = [[NSString alloc] initWithCString:Cstring];
NSLog(@"astring:%@",astring);

[astring release];

=====

astring:This is a String!


5、创建格式化字符串:占位符（由一个%加一个字符组成）

    int i = 1;
    int j = 2;
    NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"%d.This is %i
string!",i,j]];
    NSLog(@"astring:%@",astring);

    [astring release];

=========

astring:1.This is 2 string!


6、创建临时字符串

    NSString *astring;
    astring = [NSString stringWithCString:"This is a temporary string"];

    NSLog(@"astring:%@",astring);

=====

astring:This is a temporary string


7、判断字符串为空

    NSString *urlString = nil;
    if (!urlString) {
        NSLog( @"NO INPUT." );
    }
    if ([urlString length] == 0 ) {
        NSLog( @"NO INPUT." );

    }

=====

2013-03-05 20:53:09.625 testNSString[1825:c07] NO INPUT.

2013-03-05 20:53:09.626 testNSString[1825:c07] NO INPUT.


9、是否以”test”开头;是否以”.move”结尾;
    NSString *fileName = @"test.move";
    if ([fileName hasPrefix:@"test"]) {
        NSLog(@"has Test String !");
    }else{  
        NSLog(@"don’t have Test");
    }
    [fileName hasSuffix:@".move"]?NSLog(@"Yes it got a .Mov in its end"):NSLog(@"no it has no .mov
string");

=====

2013-03-05 20:55:16.150 testNSString[1873:c07] has Test String !
2013-03-05 20:55:16.151 testNSString[1873:c07] Yes it got a .Mov in its end


10、比较两个字符串:

strcmp函数

    char string1[] = "string!";
    char string2[] = "string!";
    if(strcmp(string1, string2) == 0)
    {
        NSLog(@"1");
    }

isEqualToString方法    
    NSString *astring01 = @"This is a String!";
    NSString *astring02 = @"This is a String!";
    BOOL result = [astring01 isEqualToString:astring02];

    NSLog(@"result:%d",result);

=====

2013-03-05 20:56:56.006 testNSString[1911:c07] 1
2013-03-05 20:56:56.007 testNSString[1911:c07] result:1


compare方法(comparer返回的三种值)    
    NSString *astring01 = @"This is a String!";
    NSString *astring02 = @"This is a String!";    
    BOOL result = [astring01 compare:astring02]==NSOrderedSame;    
    NSLog(@"result:%d",result);    

    NSOrderedSame 判断两者内容是否相同

=====

2013-03-05 20:57:50.828 testNSString[1937:c07] result:1

    

    NSString *astring01 = @"This is a String!";
    NSString *astring02 = @"this is a String!";
    BOOL result = [astring01 compare:astring02]==NSOrderedAscending;    
    NSLog(@"result:%d",result);

    NSOrderedAscending 判断两对象值的大小(按字母顺序进行比较，astring02大于astring01为真)

=====

2013-03-05 20:58:23.752 testNSString[1958:c07] result:1


    NSString *astring01 = @"this is a String!";
    NSString *astring02 = @"This is a String!";
    BOOL result = [astring01 compare:astring02]==NSOrderedDescending;    
    NSLog(@"result:%d",result);     

    NSOrderedDescending 判断两对象值的大小(按字母顺序进行比较，astring02小于astring01为真)

=====

2013-03-05 20:59:00.951 testNSString[1978:c07] result:1


不考虑大 小写比较字符串1
    NSString *astring01 = @"this is a String!";
    NSString *astring02 = @"This is a String!";
    BOOL result = [astring01 caseInsensitiveCompare:astring02]==NSOrderedSame;    
    NSLog(@"result:%d",result);

NSOrderedDescending判断两对象值的大小(按字母顺序进行比较，astring02小于astring01为真)

=====

2013-03-05 20:59:36.238 testNSString[2000:c07] result:1


不考虑大小写比较字符串2
    NSString *astring01 = @"this is a String!";
    NSString *astring02 = @"This is a String!";
    BOOL result = [astring01 compare:astring02
                            options:NSCaseInsensitiveSearch | NSNumericSearch]==NSOrderedSame;    

    NSLog(@"result:%d",result);     

 

=====

2013-03-05 21:00:04.709 testNSString[2020:c07] result:1

 
NSCaseInsensitiveSearch:不区分大小写比较 NSLiteralSearch:进行完全比较，区分大小写NSNumericSearch:比
较字符串的字符个数，而不是字符值。


11、声明一个可变字符;长度是40个字符;
    NSMutableString *myMutableString;
    myMutableString = [NSMutableString stringWithCapacity:40];
    NSString *myName = @"Leo";
    [myMutableString appendString:@"Hello ,there"];
    [myMutableString appendFormat:@" i am %@",myName];
    NSLog(@"this is NSMutableString: %@",myMutableString);

　　//this is NSMutableString: Hello ,there i am Leo;

=====

2013-03-05 21:01:44.720 testNSString[2053:c07] this is NSMutableString: Hello ,there i am Leo

　　

12、修改可变字符;先声明一个可变字符 myFriend;长度30;
    NSMutableString *myGirlFriend;
    myGirlFriend = [NSMutableString stringWithCapacity:30];
    //然后给字符加入一些内容;
    [myGirlFriend appendString:@"Here are my GF:Carol Sophia Ashley Helen and Yoyo"];
    NSLog(@"%@",myGirlFriend);
    //声名一个变动范围(NSRange);
    NSRange joneRange;
    joneRange = [myGirlFriend rangeOfString:@"Helen "];
    //下面:就是从myFriend字符中配对,如果有相等的内容就删除了;
    [myGirlFriend deleteCharactersInRange:joneRange];

    NSLog(@"%@",myGirlFriend);

=====

2013-03-05 21:03:06.161 testNSString[2086:c07] Here are my GF:Carol Sophia Ashley Helen and Yoyo
2013-03-05 21:03:06.162 testNSString[2086:c07] Here are my GF:Carol Sophia Ashley and Yoyo


13、在一个字符串后面附加一个新的字符串

NSString \*a = @"a";

NSString \*b = [a stringByAppendingString:@"b"];//b变量的值为“ab”


14、字符串转换整数值

NSString \*age = @"36";

if([age intValue]>35){

}

15、从文件读取字符串:initWithContentsOfFile方法

    NSString *path = @"astring.text";
    NSString *astring = [[NSString alloc] initWithContentsOfFile:path];
    NSLog(@"astring:%@",astring);
    [astring release];

 

16、写字符串到文件:writeToFile方法
    NSString *astring = [[NSString alloc] initWithString:@"This is a String!"];
    NSLog(@"astring:%@",astring);
    NSString *path = @"astring.text";    
    [astring writeToFile: path atomically: YES];
    [astring release];   


17、改变字符串的大小写

    NSString *string1 = @"A String"; 
    NSString *string2 = @"String"; 
    NSLog(@"string1:%@",[string1 uppercaseString]);//大写
    NSLog(@"string2:%@",[string2 lowercaseString]);//小写

    NSLog(@"string2:%@",[string2 capitalizedString]);//首字母大小

=====

2013-03-05 21:04:26.631 testNSString[2118:c07] string1:A STRING
2013-03-05 21:04:26.632 testNSString[2118:c07] string2:string
2013-03-05 21:04:26.632 testNSString[2118:c07] string2:String


18、在串中搜索子串

    NSString *string1 = @"This is a string";
    NSString *string2 = @"string";
    NSRange range = [string1 rangeOfString:string2];
    int location = range.location;
    int leight = range.length;
    NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"Location:%i,Leight:%i",location,leight]];
    NSLog(@"astring:%@",astring);

   ======

2013-03-05 21:04:51.863 testNSString[2135:c07] astring:Location:10,Leight:6

判断某字符串是否包含子字符串可以判断range.length是否大于0,不包含的时候length为0


19、抽取子串

    //-substringToIndex: 从字符串的开头一直截取到指定的位置，但不包括该位置的字符
    NSString *string1 = @"This is a string";
    NSString *string2 = [string1 substringToIndex:3];

    NSLog(@"string2:%@",string2);

=====

2013-03-05 21:05:26.439 testNSString[2158:c07] string2:Thi


    //-substringFromIndex: 以指定位置开始（包括指定位置的字符），并包括之后的全部字符
    NSString *string1 = @"This is a string";
    NSString *string2 = [string1 substringFromIndex:3];

    NSLog(@"string2:%@",string2);

======

2013-03-05 21:05:51.349 testNSString[2175:c07] string2:s is a string

 
    //-substringWithRange: //按照所给出的位置，长度，任意地从字符串中截取子串
    NSString *string1 = @"This is a string";
    NSString *string2 = [string1 substringWithRange:NSMakeRange(0, 4)];

    NSLog(@"string2:%@",string2);

=====

2013-03-05 21:06:17.747 testNSString[2196:c07] string2:This

 
20、扩展路径
    NSString *Path = @"~/NSData.txt";
    NSString *absolutePath = [Path stringByExpandingTildeInPath];
    NSLog(@"absolutePath:%@",absolutePath);
    NSLog(@"Path:%@",[absolutePath stringByAbbreviatingWithTildeInPath]);

  ======

2013-03-05 21:06:51.726 testNSString[2217:c07] absolutePath:/Users/disburden/Library/Application
Support/iPhone Simulator/6.1/Applications/3CF35948-B999-4800-B2FD-C3A142C29F2B/NSData.txt
2013-03-05 21:06:51.728 testNSString[2217:c07] Path:~/NSData.txt

21、文件扩展名
    NSString *Path = @"~/NSData.txt";

    NSLog(@"Extension:%@",[Path pathExtension]);

=====

2013-03-05 21:07:40.762 testNSString[2244:c07] Extension:txt

 
22、在已有字符串后面添加字符  
    NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a
NSMutableString"];
    //[String1 appendString:@", I will be adding some character"];
    [String1 appendFormat:[NSString stringWithFormat:@", I will be adding some character"]];

    NSLog(@"String1:%@",String1);

=====

2013-03-05 21:08:23.010 testNSString[2270:c07] String1:This is a NSMutableString, I will be adding
some character


23、在已有字符串中按照所给出范围和长度删除字符

     NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a
NSMutableString"];
     [String1 deleteCharactersInRange:NSMakeRange(0, 5)];

     NSLog(@"String1:%@",String1);

======

2013-03-05 21:08:53.212 testNSString[2288:c07] String1:is a NSMutableString

 
24、在已有字符串后面在所指定的位置中插入给出的字符串
    //-insertString: atIndex:
    NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
    [String1 insertString:@"Hi! " atIndex:0];

    NSLog(@"String1:%@",String1);

=====

2013-03-05 21:09:28.479 testNSString[2312:c07] String1:Hi! This is a NSMutableString

 
25、将已有的空符串换成其它的字符串
    //-setString:
    NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a NSMutableString"];
    [String1 setString:@"Hello Word!"];

    NSLog(@"String1:%@",String1);

=====

2013-03-05 21:09:52.959 testNSString[2329:c07] String1:Hello Word!

 
26、按照所给出的范围，和字符串替换的原有的字符
    //-setString:
    NSMutableString *String1 = [[NSMutableString alloc] initWithString:@"This is a
NSMutableString"];
    [String1 replaceCharactersInRange:NSMakeRange(0, 4) withString:@"That"];

    NSLog(@"String1:%@",String1);

=====

2013-03-05 21:10:16.370 testNSString[2349:c07] String1:That is a NSMutableString

 
27、判断字符串内是否还包含别的字符串(前缀，后缀)
    //检查字符串是否以另一个字符串开头- (BOOL) hasPrefix: (NSString *) aString;
    NSString *String1 = @"NSStringInformation.txt";
    [String1 hasPrefix:@"NSString"] = = 1 ?  NSLog(@"YES") : NSLog(@"NO");

    [String1 hasSuffix:@".txt"] = = 1 ?  NSLog(@"YES") : NSLog(@"NO");

======

2013-03-05 21:11:13.945 testNSString[2372:c07] YES
2013-03-05 21:11:13.946 testNSString[2372:c07] YES

 

28.NSString一些转意符以及占位附

占位符:
%@ 	Objective-C object, printed as the string returned by descriptionWithLocale: if available, or
%description otherwise. Also works with CFTypeRef objects, returning the result of the
%CFCopyDescription function.
%% 	‘%’ character
%d, %D, %i 	Signed 32-bit integer (int)
%u, %U 	Unsigned 32-bit integer (unsigned int)
%hi 	Signed 16-bit integer (short)
%hu 	Unsigned 16-bit integer (unsigned short)
%qi 	Signed 64-bit integer (long long)
%qu 	Unsigned 64-bit integer (unsigned long long)
%x 	Unsigned 32-bit integer (unsigned int), printed in hexadecimal using the digits 0–9 and
%lowercase a–f
%X 	Unsigned 32-bit integer (unsigned int), printed in hexadecimal using the digits 0–9 and
%uppercase A–F
%qx 	Unsigned 64-bit integer (unsigned long long), printed in hexadecimal using the digits 0–9 and
%lowercase a–f
%qX 	Unsigned 64-bit integer (unsigned long long), printed in hexadecimal using the digits 0–9 and
%uppercase A–F
%o, %O 	Unsigned 32-bit integer (unsigned int), printed in octal
%f 	64-bit floating-point number (double)
%e 	64-bit floating-point number (double), printed in scientific notation using a lowercase e to
%introduce the exponent
%E 	64-bit floating-point number (double), printed in scientific notation using an uppercase E to introduce the exponent
%g 	64-bit floating-point number (double), printed in the style of %e if the exponent is less than –4 or greater than or equal to the precision, in the style of %f otherwise
%G 	64-bit floating-point number (double), printed in the style of %E if the exponent is less than –4 or greater than or equal to the precision, in the style of %f otherwise
%c 	8-bit unsigned character (unsigned char), printed by NSLog() as an ASCII character, or, if not an ASCII character, in the octal format \\ddd or the Unicode hexadecimal format \\udddd, where d is a digit
%C 	16-bit Unicode character (unichar), printed by NSLog() as an ASCII character, or, if not an ASCII character, in the octal format \\ddd or the Unicode hexadecimal format \\udddd, where d is a digit
%s 	Null-terminated array of 8-bit unsigned characters. %s interprets its input in the system encoding rather than, for example, UTF-8.
%S 	Null-terminated array of 16-bit Unicode characters
%p 	Void pointer (void \*), printed in hexadecimal with the digits 0–9 and lowercase a–f, with a
%leading 0x
%L 	Length modifier specifying that a following a, A, e, E, f, F, g, or G conversion specifier
%applies to a long double argument
%a 	64-bit floating-point number (double), printed in scientific notation with a leading 0x and one
%hexadecimal digit before the decimal point using a lowercase p to introduce the exponent
%A 	64-bit floating-point number (double), printed in scientific notation with a leading 0X and one
%hexadecimal digit before the decimal point using a uppercase P to introduce the exponent
%F 	64-bit floating-point number (double), printed in decimal notation
%z 	Length modifier specifying that a following d, i, o, u, x, or X conversion specifier applies to
%a size\_t or the corresponding signed integer type argument
%t 	Length modifier specifying that a following d, i, o, u, x, or X conversion specifier applies to
%a ptrdiff\_t or the corresponding unsigned integer type argument
%j 	Length modifier specifying that a following d, i, o, u, x, or X conversion specifier applies to
%a intmax\_t or uintmax\_t argument

 

 
NSInteger 	%ld or %lx 	Cast the value to long
NSUInteger 	%lu or %lx 	Cast the value to unsigned long
CGFloat 	%f or %g 	%f works for floats and doubles when formatting; but see below warning when scanning
CFIndex 	%ld or %lx 	The same as NSInteger
pointer 	%p 	%p adds 0x to the beginning of the output. If you don’t want that, use %lx and cast to long.
long long 	%lld or %llx 	long long is 64-bit on both 32- and 64-bit platforms
unsigned long long 	%llu or %llx 	unsigned long long is 64-bit on both 32- and 64-bit platforms

 

转意:

\n 表示换行
