//
//  UIButton+OJButton.h
//  OJButton
//
//  Created by One'J on 2017/3/9.
//  Copyright © 2017年 One'J. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, OJButtonEdgeInsetsStyle) {
    OJButtonEdgeInsetsStyleTop, // image在上，label在下
    OJButtonEdgeInsetsStyleLeft, // image在左，label在右
    OJButtonEdgeInsetsStyleBottom, // image在下，label在上
    OJButtonEdgeInsetsStyleRight // image在右，label在左
};
@interface UIButton (OJButton)

/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(OJButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space;

@end
