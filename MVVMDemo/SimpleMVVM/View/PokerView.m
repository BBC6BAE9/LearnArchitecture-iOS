//
//  PokerView.m
//  MVVMDemo
//
//  Created by huang on 2019/10/23.
//  Copyright © 2019 huang. All rights reserved.
//

#import "PokerView.h"
#import "NSObject+FBKVOController.h"

@interface PokerView()

@property (nonatomic, weak) UIImageView *iconView;

@property (nonatomic, weak) UILabel *nameLabel;

@end

@implementation PokerView

- (instancetype)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {

        UIImageView *iconView = [[UIImageView alloc] init];
        _iconView = iconView;
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        
        UILabel *nameLabel = [[UILabel alloc] init];
        _nameLabel = nameLabel;
        nameLabel.font = [UIFont systemFontOfSize:10];
        nameLabel.textAlignment = NSTextAlignmentCenter;
        nameLabel.frame = CGRectMake(0, 100, 100, 50);
        [self addSubview:nameLabel];
        
    }
    return self;
}

- (void)setName:(NSString *)nameStr andImage:(NSString *)image{
    
    _iconView.image = [UIImage imageNamed:image];
    _nameLabel.text = nameStr;
    
}

- (void)setViewModel:(PokerViewModel *)viewModel{
    _viewModel = viewModel;
    /**
        监听ViewModel属性的改变
        1、RAC
        2、KVO
        3、KVOController （demo选用KVOController监听属性的变化）
     */
    __weak typeof (self) weakSelf = self;
    [self.KVOController observe:viewModel keyPath:@"name" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.nameLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    [self.KVOController observe:viewModel keyPath:@"image" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        
        weakSelf.iconView.image = [UIImage imageNamed:change[NSKeyValueChangeNewKey]];
        
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if ([self.delegate respondsToSelector:@selector(pokerViewDidClick:)]) {
        
        [self.delegate pokerViewDidClick:self];
        
    }
    
}
@end
