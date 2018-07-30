//
//  UIButton+ExpandClickRange.m
//  ExpandBtnClickRange
//
//  Created by zhangzhenyun on 2018/7/30.
//  Copyright © 2018年 Beijing Youjiu Network. All rights reserved.
//

#import "UIButton+ExpandClickRange.h"

static ExpandRange _range;

@implementation UIButton (ExpandClickRange)

- (void)expandClickRangeWithExpandRange:(ExpandRange)range {
    _range = range;
}

ExpandRange ExpandRangeMake (CGFloat dx, CGFloat dy) {
    ExpandRange range;
    range.dx = dx;
    range.dy = dy;
    return range;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect currentBounds = self.bounds;
    CGFloat dx = 0, dy = 0;
    if (_range.dx) {
        dx = _range.dx;
    }
    if (_range.dy) {
        dy = _range.dy;
    }
    CGRect expandBounds = CGRectInset(currentBounds, dx, dy);
    //如果点击的点在范围内返回 yes
    return CGRectContainsPoint(expandBounds, point);
}

@end
