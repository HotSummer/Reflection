//
//  TestData.m
//  Reflect
//
//  Created by summer.zhu on 24/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "TestData.h"

@implementation Item

@end

@implementation TestData

- (NSDictionary *)classForArrayProperty{
    return @{@"items":@"Item"};
}

@end
