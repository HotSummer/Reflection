//
//  Test.m
//  ReadValueFromPath
//
//  Created by summer.zhu on 31/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "Test.h"
#import "A.h"

#import "ReadValue.h"

@implementation Test

+ (void)test{
    A *a = [[A alloc] init];
    a.age = @12;
    a.name = @"sdas";
    a.number = 25;
    B *b = [[B alloc] init];
    b.bName = @"bNames";
    a.b = b;
    
    id value1 = [ReadValue readValueFromPath:@"a.age" sourceObject:a];
    id value2 = [ReadValue readValueFromPath:@"a.name" sourceObject:a];
    id value3 = [ReadValue readValueFromPath:@"a.number" sourceObject:a];
    id value4 = [ReadValue readValueFromPath:@"a.b.bName" sourceObject:a];
    id value5 = [ReadValue readValueFromPath:@"a.total" sourceObject:a];
    NSLog(@"value5 : %@", value5);
}

@end
