---
layout: post
title: "UIImagePickerController详解"
date: 2014-02-24 17:11:43 +0800
comments: true
categories: objc
---

### 1.UIImagePickerController的静态方法:
```objective-c  
    imagepicker = [[UIImagePickerController alloc]init];
    //UIImagePickerController静态方法判断设备是否支持照相机／图片库／相册功能
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerSourceType) {
     UIImagePickerControllerSourceTypePhotoLibrary,
     UIImagePickerControllerSourceTypeCamera,
     UIImagePickerControllerSourceTypeSavedPhotosAlbum
     };
     */
    BOOL isCameraSupport = [UIImagePickerController
isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    NSLog(@"support camera:%d",isCameraSupport);
    
<!--more-->

    //UIImagePickerController静态方法判断设备是否支持前置摄像头／后置摄像头
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerCameraDevice) {
     UIImagePickerControllerCameraDeviceRear,
     UIImagePickerControllerCameraDeviceFront
     };
     */
    BOOL isRearSupport = [UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceRear];
    NSLog(@"rear support:%d",isRearSupport);
    
    //UIImagePickerController静态方法判断设备是否支持前置摄像头闪光灯／后置摄像头闪光灯
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerCameraDevice) {
     UIImagePickerControllerCameraDeviceRear,
     UIImagePickerControllerCameraDeviceFront
     };
     */
    BOOL isFlushSupport = [UIImagePickerController isFlashAvailableForCameraDevice:UIImagePickerControllerCameraDeviceRear];
    NSLog(@"rear flash support:%d",isFlushSupport);
    
    //UIImagePickerController静态方法返回前置摄像头／后置摄像头支持的拍摄类型
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerCameraDevice) {
     UIImagePickerControllerCameraDeviceRear,
     UIImagePickerControllerCameraDeviceFront
     };
     */
    //返回类型有照片和视频
    /*
     enum {
     UIImagePickerControllerCameraCaptureModePhoto,
     UIImagePickerControllerCameraCaptureModeVideo
     };
     typedef NSUInteger UIImagePickerControllerCameraCaptureMode;
     */
    NSArray* captureModes = [UIImagePickerController availableCaptureModesForCameraDevice:UIImagePickerControllerCameraDeviceRear];
    for (NSNumber* mode in captureModes) {
        NSLog(@"capture modes:%d",[mode integerValue]);
    }
    
    //UIImagePickerController静态方法返回照相机／相册／照片库所支持的媒体类型
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerSourceType) {
     UIImagePickerControllerSourceTypePhotoLibrary,
     UIImagePickerControllerSourceTypeCamera,
     UIImagePickerControllerSourceTypeSavedPhotosAlbum
     };
     */
    //返回类型有kUTTypeMovie,kUTTypeImage，其他类型均在<MobileCoreServices/MobileCoreServices.h>下
    NSArray* mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
    for (NSString* type in mediaTypes) {
        NSLog(@"media types:%@",type);
    }
```  
### 2.UIImagePickerController属性详解：
```objective-c  
    //指定使用照相机模式,可以指定使用相册／照片库
    imagepicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    //设置当拍照完或在相册选完照片后，是否跳到编辑模式进行图片剪裁。只有当showsCameraControls属性为
    //true时才有效果
    imagepicker.allowsEditing = YES;
    //设置拍照时的下方的工具栏是否显示，如果需要自定义拍摄界面，则可把该工具栏隐藏
    imagepicker.showsCameraControls  = YES;
    //设置使用后置摄像头，可以使用前置摄像头
    imagepicker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    //设置闪光灯模式
    /*
     typedef NS_ENUM(NSInteger, UIImagePickerControllerCameraFlashMode) {
     UIImagePickerControllerCameraFlashModeOff  = -1,
     UIImagePickerControllerCameraFlashModeAuto = 0,
     UIImagePickerControllerCameraFlashModeOn   = 1
     };
     */
    imagepicker.cameraFlashMode = UIImagePickerControllerCameraFlashModeAuto;
    //设置相机支持的类型，拍照和录像
    imagepicker.mediaTypes = @[(NSString*)kUTTypeImage,(NSString*)kUTTypeMovie];
    //设置拍摄时屏幕的view的transform属性，可以实现旋转，缩放功能
   // imagepicker.cameraViewTransform = CGAffineTransformMakeRotation(M_PI*45/180);
   // imagepicker.cameraViewTransform = CGAffineTransformMakeScale(1.5, 1.5);
    //所有含有cameraXXX的属性都必须要sourceType是UIImagePickerControllerSourceTypeCamera时设置才有效
    //果，否则会有异常
    //设置UIImagePickerController的代理
    imagepicker.delegate = self;

-(void)showCamera{
    //用模态方式呈现imagepicker
    [self presentModalViewController:imagepicker animated:YES];
}
```  
使用 imagepicker.cameraViewTransform = CGAffineTransformMakeRotation(M_PI*45/180);旋转45度的效果：
{% img /images/2014/02/camera1.jpg %}

使用imagepicker.cameraViewTransform = CGAffineTransformMakeScale(1.5, 1.5);全屏的效果，同时
imagepicker.showsCameraControls  =NO;隐藏工具栏：
{% img /images/2014/02/camera2.jpg %}

使用imagepicker.allowsEditing = YES;出现的图片编辑效果，只有当imagepicker.showsCameraControls  = YES;才有效果：
{% img /images/2014/02/camera3.jpg %}

使用 imagepicker.mediaTypes = @[(NSString*)kUTTypeImage,(NSString*)kUTTypeMovie];支持拍照和视频的前后对比效果：
{% img /images/2014/02/camera4.jpg %}{% img /images/2014/02/camera5.jpg %}  


### 3.UIImagePickerController回调详解：
```objective-c  
//成功获得相片还是视频后的回调
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //通过UIImagePickerControllerMediaType判断返回的是照片还是视频
    NSString* type = [info objectForKey:UIImagePickerControllerMediaType];
    //如果返回的type等于kUTTypeImage，代表返回的是照片,并且需要判断当前相机使用的sourcetype是拍照还是相册
    if ([type isEqualToString:(NSString*)kUTTypeImage]&&picker.sourceType==UIImagePickerControllerSourceTypeCamera) {
        //获取照片的原图
        UIImage* original = [info objectForKey:UIImagePickerControllerOriginalImage];
        //获取图片裁剪的图
        UIImage* edit = [info objectForKey:UIImagePickerControllerEditedImage];
        //获取图片裁剪后，剩下的图
        UIImage* crop = [info objectForKey:UIImagePickerControllerCropRect];
        //获取图片的url
        NSURL* url = [info objectForKey:UIImagePickerControllerMediaURL];
        //获取图片的metadata数据信息
        NSDictionary* metadata = [info objectForKey:UIImagePickerControllerMediaMetadata];
        //如果是拍照的照片，则需要手动保存到本地，系统不会自动保存拍照成功后的照片
        UIImageWriteToSavedPhotosAlbum(edit, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }else{
    
    }
    //模态方式退出uiimagepickercontroller
    [imagepicker dismissModalViewControllerAnimated:YES];
}
//取消照相机的回调
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //模态方式退出uiimagepickercontroller
    [imagepicker dismissModalViewControllerAnimated:YES];
}
//保存照片成功后的回调
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error
  contextInfo:(void *)contextInfo{
    
    NSLog(@"saved..");
}
```  
### 4.自定义相机拍照画面：
```objective-c  
   //设置拍照时的下方的工具栏是否显示，如果需要自定义拍摄界面，则可把该工具栏隐藏
    imagepicker.showsCameraControls  = NO;

    UIToolbar* tool = [[UIToolbar alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-55,
self.view.frame.size.width, 75)];
    tool.barStyle = UIBarStyleBlackTranslucent;
    UIBarButtonItem* cancel = [[UIBarButtonItem
alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self
action:@selector(cancelCamera)];
    UIBarButtonItem* add = [[UIBarButtonItem
alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self
action:@selector(savePhoto)];
    [tool setItems:[NSArray arrayWithObjects:cancel,add, nil]];
   //把自定义的view设置到imagepickercontroller的overlay属性中

   imagepicker.cameraOverlayView = tool;

-(void)cancelCamera{
    [imagepicker dismissModalViewControllerAnimated:YES];
}
-(void)savePhoto{
    //拍照，会自动回调- (void)imagePickerController:(UIImagePickerController *)picker
    //didFinishPickingMediaWithInfo:(NSDictionary *)info，对于自定义照相机界面，拍照后回调可以不退出
    //实现连续拍照效果
    [imagepicker takePicture];
}
```  
{% img /images/2014/02/camera6.jpg %}



### 5.UIImagePickerController是继承UINavigationController,所以可以push和pop一些viewcontroller进行导
航效果。例如，自定义照相机画面的时候可以在拍摄完后push一个viewcontroller用于对照片进行编辑。
  
原文来自:http://blog.csdn.net/kingsley_cxz/article/details/9157093
