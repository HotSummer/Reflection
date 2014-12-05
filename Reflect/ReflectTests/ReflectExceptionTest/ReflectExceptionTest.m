//
//  ReflectExceptionTest.m
//  Reflect
//
//  Created by summer.zhu on 2/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "ReflectExceptionTest.h"
#import "ReflectionException.h"
#import "TestA.h"
#import "TestB.h"
#import "TestC.h"

@implementation ReflectExceptionTest

+ (void)test{
    TestA *a = [[TestA alloc] init];
    [ReflectionException canAssignment:a propertyName:@"names" value:@1];
    [ReflectionException canAssignment:a propertyName:@"name" value:@1];
    [ReflectionException canAssignment:a propertyName:@"name" value:@"xxxxx"];
    [ReflectionException canAssignment:a propertyName:@"age" value:@25];
    [ReflectionException canAssignment:a propertyName:@"b" value:[NSArray array]];
    
}

@end
