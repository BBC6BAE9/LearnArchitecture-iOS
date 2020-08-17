//
//  HWCellViewModel.h
//  MVVMDemo
//
//  Created by huang on 2019/10/24.
//  Copyright © 2019 huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

 
@class HWTableViewCell, UITableView;
 
@interface HWCellViewModel : NSObject
 
@property (nonatomic, strong) NSMutableArray *HWInfoArray;
 
- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (NSString *)titleForHeaderInSection:(NSInteger)section;
- (NSString *)titleForFooterInSection:(NSInteger)section;
- (HWTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
 
@end

NS_ASSUME_NONNULL_END
