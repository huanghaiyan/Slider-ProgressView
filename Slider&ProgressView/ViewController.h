//
//  ViewController.h
//  Slider&ProgressView
//
//  Created by 黄海燕 on 16/5/5.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条对象
    //一般用来表示下载或视频播放的进度
    UIProgressView *_progressView;
    
    //滑动条的定义
    //一般用来进行调整音乐的音量等
    UISlider *_slider;
}
//定义一个进度条属性
@property (nonatomic,retain) UIProgressView *pview;
//定义滑动条属性
@property (nonatomic,retain) UISlider *slider;

@end

