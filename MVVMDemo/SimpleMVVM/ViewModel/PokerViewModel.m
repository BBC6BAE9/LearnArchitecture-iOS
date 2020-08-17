//
//  PokerViewModel.m
//  MVVMDemo
//
//  Created by huang on 2019/10/23.
//  Copyright © 2019 huang. All rights reserved.
//  poker的viewModel

#import "PokerViewModel.h"
#import "PokerView.h"
#import "Poker.h"

@interface PokerViewModel()<PokerViewDelegate>
@property (nonatomic, weak) UIViewController *controller;

/**
 以下属性和模型里面的属性是一致的
 */
/// 扑克的名字
@property (nonatomic, copy) NSString *name;

/// 扑克的图片
@property (nonatomic, copy) NSString *image;

@end

@implementation PokerViewModel

- (instancetype)initWithController:(UIViewController *)controller{
    if ([self init]) {
        
        self.controller = controller;
        
        // 创建view
        PokerView *pokerView = [[PokerView alloc] init];
        pokerView.frame = CGRectMake(100, 100, 100, 150);
        pokerView.delegate = self;
        pokerView.viewModel = self;
        [controller.view addSubview:pokerView];
        pokerView.center = controller.view.center;
        
        // 加载模型数据
        Poker *poker = [[Poker alloc] init];
        poker.name = @"queen of heart";
        poker.image = @"queenofheart";
        
        self.name = poker.name;
        self.image = poker.image;
        
    }
    return self;
}

- (void)pokerViewDidClick:(PokerView *)view{
    NSLog(@"ViewModel监听了pokerView的点击");
    self.name = @"红心Q";
}

@end
