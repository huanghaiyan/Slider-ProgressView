//
//  ViewController.m
//  Slider&ProgressView
//
//  Created by 黄海燕 on 16/5/5.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize slider = _slider;
@synthesize pview = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //进度条的创建
    _progressView = [[UIProgressView alloc]init];
    //进度条的位置大小设置
    //进度条的高度是不可以变化的
    _progressView.frame = CGRectMake(0, 20, 450, 40);

    //设置进度条的风格颜色值
    _progressView.progressTintColor = [UIColor redColor];
    _progressView.trackTintColor = [UIColor blackColor];
    //设置进度条的进度值
    //范围从0~1
    //最小值为0
    //最大值为1
    _progressView.progress = 0.5;
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview:_progressView];

    
    //设置滑动条对象
    _slider = [[UISlider alloc]init];
    //位置设置，高度不可变
    _slider.frame = CGRectMake(10, 100, 320, 40);
    //设置滑动条最大值
    _slider.maximumValue = 100;
    //设置滑动条的最小值，可以为负值
    _slider.minimumValue = 0;

    //设置滑动条的滑块的位置float值
    _slider.value = 30;
    //设置左侧滑条背景颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    //设置右侧滑条背景颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    //设置滑块的颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    //对滑条添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged
    ];
    [self.view addSubview:_slider];

}

-(void)pressSlider
{
    _progressView.progress = (_slider.value -_slider.minimumValue)/(_slider.maximumValue - _slider.minimumValue);
    NSLog(@"%f",_slider.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
