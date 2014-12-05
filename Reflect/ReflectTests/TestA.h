//
//  TestA.h
//  Reflect
//
//  Created by summer.zhu on 2/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestB.h"

@interface TestA : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSNull *null;//无意义的变量
@property(nonatomic) int age;
@property(nonatomic, strong) NSArray *arr;
@property(nonatomic, strong) TestB *b;

@end
