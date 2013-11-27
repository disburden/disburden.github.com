---
layout: post
title: "通过In house方式发布ipa(就是通过safari浏览器直接安装)"
date: 2013-11-27 23:58:11 +0800
comments: true
categories: objc
---
1.首先要将你的项目进行打包  
{% img /images/2013/11/ihi1.png %}  
  
2.在弹出的窗口中选择Distribute..  
{% img /images/2013/11/ihi2.png %}  

3.然后选择打包的方式  
{% img /images/2013/11/ihi3.png %}  

4.然后系统会要求对你的应用进行签名,选择一个证书开始签名(工程大的话这个步骤要很久)  
{% img /images/2013/11/ihi4.png %}  

5.最后选择保存打包后的ipa路径,手别太快,如果已经点保存的同学要从头来过了,关键就是这一步一定要选择底部
的Save for Enterpirse Distribution复选框  
{% img /images/2013/11/ihi5.png %}  

6.选中Save for Enterpirse Distribution复选框后会下拉出对话窗口,这里只要填写必填字段就行了
Application URL:填写你要通过web发布的ipa文件的URL下载地址
比如:http://www.wanggq.cn/test/test.ipa
Title比较无所谓,正常点的话就填你的项目名称
比如:test  
{% img /images/2013/11/ihi6.png %}  

7.最后点save,打包的过程就算完成了,到你选择的保存路径下看看,应该会生成两个文件一个ipa和一个plist文件,
比如项目名称叫test,那么目录下应该有test.ipa和test.pist两个文件

 

8.将ipa和plist文件一起上传到你的web服务器,放在你在上一步填写的Application URL对应的目录中,在本例中你
应该放在web服务器的/test目录下.

 

9.在打算通过web发布你的应用之前先要做个网页,不然用户没有页面显示的话也不知道点哪下载(其实直接把生成
的plist文件通过指定协议的url地址直接告诉客户就能下载了,不过通用的方式还是做个web页面),以下是个简单的
下载页面的
```html  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=320, height=460, user-scalable=no,
initial-scale=1.0" />
<title>Install Dev App</title>
</head>

<br/><br/><br/>
<body>
<div align="center">
<a href="itms-services://?action=download-manifest&url=http://www.wanggq.cn/test/test.plist"
style="color:orange; font-size:24px">
                Install the test App</a>
                </div>
<p />

</body>
<br />
<br />

</html>
```
#注意:其中的链接地址可以自己修改成你的plist文件存放的位置,但一定是
itms-services://?action=download-manifest打头再加上plist文件的url地址的格式,itms-services:这个是特殊
的http协议,目前只有safari浏览器支持(只要是支持这个协议的浏览器应该都能下载安装吧)
{% img /images/2013/11/ihi7.png %}  


