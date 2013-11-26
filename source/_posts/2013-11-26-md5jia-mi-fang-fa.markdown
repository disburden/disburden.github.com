---
layout: post
title: "MD5加密方法"
date: 2013-11-26 23:58:09 +0800
comments: true
categories: objc
---
```objective-c
#import <CommonCrypto/CommonDigest.h>

- (NSString *)md5HexDigest:(NSString*)password
{
    const char *original_str = [password UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
    {
        [hash appendFormat:@"%02X", result[i]];
    }
    NSString *mdfiveString = [hash lowercaseString];
    
    NSLog(@"Encryption Result = %@",mdfiveString);
    return mdfiveString;
}
```  
原文来自:http://www.oschina.net/code/snippet_260122_17263
