//
//  TestViewController.m
//  视频播放
//
//  Created by zhangzhenyun on 2018/7/21.
//  Copyright © 2018年 Beijing Youjiu Network. All rights reserved.
//

#import "TestViewController.h"
#import "UIButton+ExpandClickRange.h"

@interface TestViewController ()
@property (nonatomic, strong) UIButton *btn;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.btn];
}
- (void)expandClickRange {
    NSLog(@"%@",NSStringFromCGRect(self.btn.frame));
}
#pragma mark - getter
- (UIButton *)btn {
    if (_btn == nil) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(160, 160, 50, 50)];
        _btn.backgroundColor = [UIColor blueColor];
        [_btn setTitle:@"扩大点击" forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(expandClickRange) forControlEvents:UIControlEventTouchUpInside];
        ExpandRange range = ExpandRangeMake(-50, -50);
        [_btn expandClickRangeWithExpandRange:range];
    }
    return _btn;
}
@end
