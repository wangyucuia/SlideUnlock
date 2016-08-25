//
//  CheckCodeSlider.h
//  SlideUnlock
//
//  Created by 王玉翠 on 16/8/23.
//  Copyright © 2016年 WYC. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SlideWidth 240
#define SlideHeight 40
#define SlideLabelTextColor [UIColor colorWithRed:193/255.0 green:193/255.0 blue:193/255.0 alpha:1]
#define SlideLabelBorderColor [UIColor colorWithRed:193/255.0 green:193/255.0 blue:193/255.0 alpha:1].CGColor
#define SlideMinimumTrackTinColor [UIColor redColor]
#define SlideLabelFont 14
#define SlideLableText @"滑动解锁/获取验证码"
#define ThumbImageHeight 40
#define ThumbImageWidth 40

@interface CheckCodeSlider : UISlider

@end
