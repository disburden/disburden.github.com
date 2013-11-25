---
layout: post
title: "试用一下Octopress"
date: 2013-11-24 02:06:54 +0800
comments: true
categories: 
---
感觉还不错的样子,最近好像挺流行的
<p>代码高亮测试:</p>

```objective-c test http://blog.wanggq.cn
MyQuestionCell *cell=(MyQuestionCell *)sender.superview.superview;
NSIndexPath *aIndexPath=[tbv_myQuestion indexPathForCell:cell];
NSDictionary *tmpInfo=[[dateSourece getDataAtIndex:aIndexPath.section]
objectAtIndex:aIndexPath.row];

//安全起见,这里给个alertview提示用户确认一下
URBAlertView *alertView = [URBAlertView dialogWithTitle:@&quot;确定删除该谜题吗?&quot;
subtitle:@&quot;删除之后对方已经回答的答案也会一起删除&quot;];
alertView.blurBackground = NO;
[alertView addButtonWithTitle:@&quot;确定&quot;];
[alertView addButtonWithTitle:@&quot;取消&quot;];
[alertView setHandlerBlock:^(NSInteger buttonIndex, URBAlertView *alertView) {
    NSLog(@&quot;button tapped: index=%i&quot;, buttonIndex);
    [alertView hideWithCompletionBlock:^{
        if (buttonIndex==0)
        {
            [ar_netOperation addObject:[self doDeleteGameWithGid:[[tmpInfo
valueForKey:@&quot;id&quot;] intValue] ablock:^{
                [dateSourece delRecordByIndexPath:aIndexPath];
                [tbv_myQuestion reloadData];
                [publicTools showMsg:@&quot;删除谜题成功&quot; msg:@&quot;&quot;];
            }]];
        }
    }];
}];
```

