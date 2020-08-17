//
//  TableViewController.m
//  MVVMDemo
//
//  Created by huang on 2019/10/24.
//  Copyright © 2019 huang. All rights reserved.
//

#import "TableViewController.h"
#import "HWCellViewModel.h"

@interface TableViewController ()

@property (nonatomic, strong) HWCellViewModel *viewModel;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[HWCellViewModel alloc] init];
    self.title = @"MVVM的TableView";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.viewModel numberOfSections];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfItemsInSection:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return (UITableViewCell *)[self.viewModel tableView:tableView cellForRowAtIndexPath:indexPath];
    
}

//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.viewModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}
 
//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel tableView:tableView heightForRowAtIndexPath:indexPath];
}
 
//设置头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.viewModel titleForHeaderInSection:section];
}
 
//设置尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [self.viewModel titleForFooterInSection:section];
}

@end
