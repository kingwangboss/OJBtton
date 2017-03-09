//
//  OJButton.m
//  OJButton
//
//  Created by One'J on 2017/3/9.
//  Copyright © 2017年 One'J. All rights reserved.
//

#import "OJButton.h"

@implementation OJButton

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    // 1. 得到imageView和titleLabel的宽、高
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    // 2. 声明全局的imageEdgeInsets和labelEdgeInsets
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    if (self.space) {
        imageEdgeInsets = UIEdgeInsetsMake(-labelHeight, 0, 0, -labelWidth);
        labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight, 0);
    }else {
        imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-self.space/2.0, 0, 0, -labelWidth);
        labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-self.space/2.0, 0);
    }
    // 4. 赋值
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}


@end
