//
//  UIButton+ExpandClickRange.h
//  ExpandBtnClickRange
//
//  Created by zhangzhenyun on 2018/7/30.
//  Copyright © 2018年 Beijing Youjiu Network. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct {
    CGFloat dx;
    CGFloat dy;
} ExpandRange;

@interface UIButton (ExpandClickRange)
/**创造结构体函数*/
ExpandRange ExpandRangeMake (CGFloat width, CGFloat height);

/**
 扩大按钮的点击范围
 * 按钮沿着 dx ,dy 平移
 * 新宽度 = self.width - 2 * dx 新高度 = self.height - 2 * dy
 
 @param range 扩大的范围值
 */
- (void)expandClickRangeWithExpandRange:(ExpandRange)range;

@end
