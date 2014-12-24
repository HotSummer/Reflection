//
//  ReflectTests.m
//  ReflectTests
//
//  Created by summer.zhu on 1/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ReflectionTypeTest.h"
#import "ReflectExceptionTest.h"
#import "ReflectionTest.h"
#import "ReflectionDataTest.h"

@interface ReflectTests : XCTestCase

@end

@implementation ReflectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    
    //ReflectionProperty 测试
//    [ReflectionPropertyTest test];
    
    //ReflectionException 测试
//    [ReflectExceptionTest test];
    
    //ReflectionTest 测试
//    [ReflectionTest test];
    
    [ReflectionDataTest test];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
