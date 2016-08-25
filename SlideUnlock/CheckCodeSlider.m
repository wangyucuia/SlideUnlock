//
//  CheckCodeSlider.m
//  SlideUnlock
//
//  Created by 王玉翠 on 16/8/23.
//  Copyright © 2016年 WYC. All rights reserved.
//

#import "CheckCodeSlider.h"




@implementation CheckCodeSlider

//重写UISlide的方法改变滑条的frame
-(CGRect)trackRectForBounds:(CGRect)bounds{
    
    return CGRectMake(0, 0, SlideWidth, SlideHeight);
}





@end
