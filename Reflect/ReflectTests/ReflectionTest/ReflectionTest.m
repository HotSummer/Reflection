//
//  ReflectionTest.m
//  Reflect
//
//  Created by summer.zhu on 3/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "ReflectionTest.h"
#import "Reflection.h"
#import "TestC.h"
#import "TestB.h"
#import "TestArray.h"
#import "TestD.h"

@implementation ReflectionTest

+ (void)test{
////+ (void)setValueForKey:(NSObject *)object propertyName:(NSString *)propertyName value:(id)value
//    TestC *c = [[TestC alloc] init];
//    [Reflection setValueForKey:c propertyName:@"name" value:@"hehehehhe"];
//    [Reflection setValueForKey:c propertyName:@"arr" value:[NSArray array]];
//    [Reflection setValueForKey:c propertyName:@"arr" value:@[@{@"number":@11}, @{@"number":@12}, @{@"number":@13}]];
//    
//    
//    TestB *b = [[TestB alloc] init];
//    b.number = @12.3;
//    [Reflection setValueForKey:c propertyName:@"b" value:b];
//    
//    [Reflection setValueForKey:c propertyName:@"b" value:@[@1, @12]];
//    
//    NSLog(@"%@", c.name);
//    NSLog(@"%@", c.arr);
//    NSLog(@"%@", c.b);
//    
//    [Reflection setValueForKey:c propertyName:@"name" value:@12312];
//    
////setArrayToObject:(NSObject **)object propertyName:(NSString *)property data:(NSArray *)array
//    TestA *a4 = [[TestA alloc] init];
//    [Reflection setArrayToObject:&a4 propertyName:@"arr" data:@[@1, @2, @"1231"]];
//    
//    TestA *a5 = [[TestA alloc] init];
//    [Reflection setArrayToObject:&a5 propertyName:@"arr" data:@[@{@"number":@12}, @{@"number":@12}, @{@"number":@12}]];
//    
////+ (NSArray *)parseObjectInArray:(NSObject *)object arrayName:(NSString *)arrayName contents:(NSArray *)contents className:(NSString *)className
//    NSArray *arrData = [Reflection parseObjectInArray:nil arrayName:nil contents:@[@{@"number":@12}, @{@"number":@15}, @{@"number":@12}] className:@"TestB"];
//    NSLog(@"arrData : %@", arrData);
//    
////+ (void)objectFromContent:(id)content object:(NSObject **)object
//    NSDictionary *dic = @{@"name":@"zbq", @"age":@123123, @"arr":@[@1, @2, @"1231"], @"b":@{@"number":@12}};
//    TestA *a = [[TestA alloc] init];
//    [Reflection objectFromContent:dic object:&a];
//    NSLog(@"%@", a.b.number);
//    
//    NSDictionary *dic1 = @{@"name":@"zbq", @"age":@123123, @"arr":@[@1, @2, @"1231"], @"b":@[@"123", @"23", @"3123"]};
//    TestA *a1 = [[TestA alloc] init];
//    [Reflection objectFromContent:dic1 object:&a1];
//    NSLog(@"%@", a1.b.number);
//    
//    TestA *a2 = [[TestA alloc] init];
//    [Reflection objectFromContent:@[@123, @231, @1231] object:&a2];
//    NSLog(@"%@", a2.b.number);
//    
//    NSDictionary *dic2 = @{@"name":@"zbq", @"age":@123123, @"arr":@[@{@"number":@13}, @{@"number":@12}, @{@"number":@11}], @"b":@{@"number":@12}};
//    TestA *a3 = [[TestA alloc] init];
//    [Reflection objectFromContent:dic2 object:&a3];
//    NSLog(@"%@", a3.b.number);
    
//    NSArray *arr = @[@{@"number":@12}, @{@"number":@12}, @{@"number":@12}];
//    NSArray *testArray = (NSArray *)[Reflection objectFromContent:arr className:@"NSArray"];
//    NSLog(@"testArray : %d", testArray.count);
    
//+ (NSDictionary *)dictionaryFromObject:(NSObject *)object
    TestD *cbject = [[TestD alloc] init];
    cbject.name = @"sda";
    TestB *b1 = [[TestB alloc] init];
    b1.number = @12;
    TestB *b2 = [[TestB alloc] init];
    b2.number = @123;
    cbject.arr = @[b1, b2];
    cbject.cname = @"asda";
//    NSDictionary *dicCObject = [Reflection dictionaryFromObject:cbject class:@"TestA"];
//    NSDictionary *dicCObject1 = [Reflection dictionaryFromObject:cbject];
//    NSDictionary *dicCObject2 = [Reflection dictionaryFromObject:cbject class:@"TestAB"];
    
    TestB *bc = [[TestB alloc] init];
    bc.number = @213123;
    cbject.b = bc;
    
    cbject.dname = @"ddddd";
    NSDictionary *dicCObject3 = [Reflection dictionaryFromObject:cbject class:@"TestA"];
}

@end
