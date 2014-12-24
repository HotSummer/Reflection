//
//  TestData.h
//  Reflect
//
//  Created by summer.zhu on 24/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property(nonatomic) int btid;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *largePicture;
@property(nonatomic, strong) NSString *smallPicture;

@end

@interface TestData : NSObject

@property(nonatomic, strong) NSArray *items;

@end
