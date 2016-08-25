//
//  ViewController.m
//  SlideUnlock
//
//  Created by 王玉翠 on 16/8/23.
//  Copyright © 2016年 WYC. All rights reserved.
//

#import "ViewController.h"
#import "CheckCodeSlider.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) CheckCodeSlider *slide;

@property (nonatomic, strong) UILabel *label;


@property (nonatomic, strong) UIImageView *iamgeView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createSlider];
    
    
}


-(void)createSlider{
    
    _slide = [[CheckCodeSlider alloc] initWithFrame:CGRectMake(0, 0,SlideWidth , SlideHeight)];
    _slide.center = self.view.center;
    _slide.minimumTrackTintColor = [UIColor yellowColor];
    _slide.maximumTrackTintColor = [UIColor orangeColor];
    _slide.layer.masksToBounds = YES;
    _slide.layer.cornerRadius = SlideHeight / 2.0;
    // 滑块上小圆形图案
   // [_slide setThumbImage:[UIImage imageNamed:@"屏幕快照 2016-08-23 下午1.43.00"] forState:UIControlStateNormal];
    [_slide addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slide];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SlideWidth, SlideHeight)];
    _label.center = self.view.center;
    _label.text = SlideLableText;
    _label.font = [UIFont systemFontOfSize:SlideLabelFont];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.textColor = SlideLabelTextColor;
//    _label.layer.masksToBounds = YES;
//    _label.layer.cornerRadius = SlideHeight / 2;
//    _label.layer.borderWidth = 1;
//    _label.layer.borderColor = SlideLabelBorderColor;
    [self.view addSubview:_label];
    
    //这里创建了一个跟滑块相同的imageview覆盖在文字上面，并在sliderValueChanged方法中让其跟着滑块滑动。
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_slide.frame.origin.x - 2, _slide.frame.origin.y - 2, ThumbImageWidth + 4, ThumbImageHeight + 4)];
    _imageView.image = [UIImage imageNamed:@"屏幕快照 2016-08-23 下午1.43.00"];
   // [self.view addSubview:_imageView];
    
}


-(void)sliderValueChanged:(UISlider *)slider{
    [_slide setValue:slider.value animated:NO];
    if (slider.value > 0) {
        
        _slide.minimumTrackTintColor = SlideMinimumTrackTinColor;
    }else{
        _slide.minimumTrackTintColor = [UIColor magentaColor];
    }
    _imageView.center = CGPointMake(_slide.frame.origin.x + slider.value * (SlideWidth - ThumbImageWidth) + ThumbImageWidth / 2, _slide.frame.origin.y + ThumbImageHeight / 2);
    if (!slider.isTracking && slider.value != 1) {
        _slide.minimumTrackTintColor = SlideMinimumTrackTinColor;
        
    }else{
        _slide.minimumTrackTintColor = [UIColor purpleColor];
        
    }
    _imageView.frame = CGRectMake(_slide.frame.origin.x - 2, _slide.frame.origin.y - 2, ThumbImageWidth + 4, ThumbImageHeight + 4);
    
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
