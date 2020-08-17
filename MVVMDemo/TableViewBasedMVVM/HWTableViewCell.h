//
//  HWTableViewCell.h
//  MVVMDemo
//
//  Created by huang on 2019/10/24.
//  Copyright © 2019 huang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
 
@class HWCellModel;
 
@interface HWTableViewCell : UITableViewCell
 
@property (nonatomic, weak) UILabel *lable;
@property (nonatomic, strong) HWCellModel *model;
 
+ (instancetype)cellWIthTableView:(UITableView *)tableView;
 
@end


NS_ASSUME_NONNULL_END
