//
//  HWCellModel.m
//  MVVMDemo
//
//  Created by huang on 2019/10/24.
//  Copyright © 2019 huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWCellModel.h"
 
@implementation HWCellModel
 
- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
 
+ (id)HWInfoWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}
 
@end
