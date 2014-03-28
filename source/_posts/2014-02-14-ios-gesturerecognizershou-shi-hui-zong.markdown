---
layout: post
title: "ios GestureRecognizer手势汇总"
date: 2014-02-14 10:01:08 +0800
comments: true
categories: objc
---

### 1.一个手指，拍击两次手势(可以是任意次数)    
```objective-c
// 创建一个手势识别器
UITapGestureRecognizer *oneFingerTwoTaps =
  [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(oneFingerTwoTaps)]
autorelease];
 
// Set required taps and number of touches
[oneFingerTwoTaps setNumberOfTapsRequired:2];
[oneFingerTwoTaps setNumberOfTouchesRequired:1];
 
// Add the gesture to the view
[[self view] addGestureRecognizer:oneFingerTwoTaps];

消息方法oneFingerTwoTaps
- (void)oneFingerTwoTaps
{
  NSLog(@"Action: One finger, two taps");
}
```  

<!--more-->

### 2.两个手指，拍击两次手势  
```objective-c
UITapGestureRecognizer *twoFingersTwoTaps =
  [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingersTwoTaps)]
autorelease];
[twoFingersTwoTaps setNumberOfTapsRequired:2];
[twoFingersTwoTaps setNumberOfTouchesRequired:2];
[[self view] addGestureRecognizer:twoFingersTwoTaps];

消息方法twoFingersTwoTaps
- (void)twoFingersTwoTaps {
  NSLog(@"Action: Two fingers, two taps");
} 
```  

### 3.一个手指向上、向下擦碰手势  
```objective-c
// 向上擦碰
UISwipeGestureRecognizer *oneFingerSwipeUp =
  [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(oneFingerSwipeUp:)]
autorelease];
[oneFingerSwipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
[[self view] addGestureRecognizer:oneFingerSwipeUp];

- (void)oneFingerSwipeUp:(UISwipeGestureRecognizer *)recognizer
{
  CGPoint point = [recognizer locationInView:[self view]];
  NSLog(@"Swipe up - start location: %f,%f", point.x, point.y);
}

// 向下擦碰
UISwipeGestureRecognizer *oneFingerSwipeDown =
  [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(oneFingerSwipeDown:)]
autorelease];
[oneFingerSwipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
[[self view] addGestureRecognizer:oneFingerSwipeDown];

- (void)oneFingerSwipeDown:(UISwipeGestureRecognizer *)recognizer
{
  CGPoint point = [recognizer locationInView:[self view]];
  NSLog(@"Swipe down - start location: %f,%f", point.x, point.y);
}
```  

### 4.旋转手势  
```objective-c
UIRotationGestureRecognizer *twoFingersRotate =
  [[[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingersRotate:)]
autorelease];
[[self view] addGestureRecognizer:twoFingersRotate];

- (void)twoFingersRotate:(UIRotationGestureRecognizer *)recognizer
{
  // Convert the radian value to show the degree of rotation
  NSLog(@"Rotation in degrees since last change: %f", [recognizer rotation] * (180 / M_PI));
}
```  

### 5.向里或向外捏的手势  
```objective-c
UIPinchGestureRecognizer *twoFingerPinch =
  [[[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingerPinch:)]
autorelease];
[[self view] addGestureRecognizer:twoFingerPinch];

- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
  NSLog(@"Pinch scale: %f", recognizer.scale);
}
```  

### 6.单击手势  
```objective-c
UITapGestureRecognizer* singleRecognizer;
    singleRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:selfaction:@selector(handleSingleTapFrom)];
    singleRecognizer.numberOfTapsRequired = 1; // 单击
    [self.view addGestureRecognizer: singleRecognizer];
```  

### 7.双击手势  
```objective-c
UITapGestureRecognizer* doubleRecognizer;
    doubleRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:selfaction:@selector(handleDoubleTapFrom)];
    doubleTapRecognizer.numberOfTapsRequired = 2; // 双击
    [self.view addGestureRecognizer:doubleRecognizer];
```  

### 8.从左向右横扫  
```objective-c
UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(forgotSwipeRight)];
swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
[self.view addGestureRecognizer:swipeRight];
```  
### 9.拖动  
```objective-c
UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
action:@selector(handlePan:)];
```  

