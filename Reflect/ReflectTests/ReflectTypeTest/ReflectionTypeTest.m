//
//  ReflectionPropertyTest.m
//  Reflect
//
//  Created by summer.zhu on 2/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "ReflectionTypeTest.h"
#import "ReflectionProperty.h"
#import "TestA.h"
#import "TestB.h"
#import "TestC.h"

@implementation ReflectionPropertyTest

+ (void)test{
    TestA *a = [[TestA alloc] init];
    
    NSString *name = [ReflectionProperty type:[a class] propertyName:@"name"];
    NSLog(@"%@", name);
    
    NSString *age = [ReflectionProperty type:[a class] propertyName:@"age"];
    NSLog(@"%@", age);
    
    NSString *b = [ReflectionProperty type:[a class] propertyName:@"b"];
    NSLog(@"%@", b);
    
    NSString *empty = [ReflectionProperty type:[a class] propertyName:@"empty"];
    NSLog(@"%@", empty);
    
    
    TestC *c = [[TestC alloc] init];
    NSString *cname = [ReflectionProperty type:[c class] propertyName:@"name"];
    NSLog(@"Supper : %@", cname);
    
    NSString *c_bname = [ReflectionProperty type:[c class] propertyName:@"b"];
    NSLog(@"Supper : %@", c_bname);
    
    TestC *c_This = [[TestC alloc] init];
    NSString *c_ThisName = [ReflectionProperty typeInThisClass:[c_This class] propertyName:@"name"];
    NSLog(@"This : %@", c_ThisName);
}

@end
