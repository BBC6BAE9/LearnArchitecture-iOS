//
//  ViewController.m
//  MVVMDemo
//
//  Created by huang on 2019/10/23.
//  Copyright © 2019 huang. All rights reserved.
//

#import "ViewController.h"
#import "PokerViewModel.h"
#import "TableViewController.h"

@interface ViewController ()

@property(nonatomic, strong) PokerViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[PokerViewModel alloc] initWithController:self];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    TableViewController *tableVC = [[TableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tableVC];
    [self presentViewController:nav animated:YES completion:nil];
 
}
@end
