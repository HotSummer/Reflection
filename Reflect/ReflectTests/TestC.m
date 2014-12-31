//
//  TestC.m
//  Reflect
//
//  Created by summer.zhu on 2/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "TestC.h"

@implementation TestC

- (NSDictionary *)classForArrayProperty{
//    NSDictionary *dic = nil;
//    if ([super respondsToSelector:@selector(classForArrayProperty)]) {
//        dic = [super performSelector:@selector(classForArrayProperty) withObject:nil];
//    }
//    NSDictionary *dicSelf = @{@"arrD":@"TestD"};
//    NSMutableDictionary *mutableDic = [NSMutableDictionary dictionaryWithDictionary:dicSelf];
//    [mutableDic addEntriesFromDictionary:dic];
    
    return @{@"arrD":@"TestD"};
}

@end
