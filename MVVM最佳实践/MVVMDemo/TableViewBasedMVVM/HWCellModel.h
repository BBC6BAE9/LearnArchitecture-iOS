//
//  HWCellModel.h
//  MVVMDemo
//
//  Created by huang on 2019/10/24.
//  Copyright © 2019 huang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HWCellModel : NSObject
 
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;
 
- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)HWInfoWithDictionary:(NSDictionary *)dict;
 
@end
NS_ASSUME_NONNULL_END
