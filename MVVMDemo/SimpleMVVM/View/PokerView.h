//
//  PokerView.h
//  MVVMDemo
//
//  Created by huang on 2019/10/23.
//  Copyright © 2019 huang. All rights reserved.
//  poker的View

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PokerView,PokerViewModel;
@protocol PokerViewDelegate <NSObject>

@optional

- (void)pokerViewDidClick:(PokerView *)view;

@end

@interface PokerView : UIView

-(void)setName:(NSString *)nameStr andImage:(NSString *)image;

@property (nonatomic, weak) PokerViewModel *viewModel;
/// 点击的代理
@property (nonatomic, weak) id<PokerViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
