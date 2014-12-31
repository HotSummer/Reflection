//
//  ReflectionDataTest.m
//  Reflect
//
//  Created by summer.zhu on 24/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import "ReflectionDataTest.h"
#import "Reflection.h"
#import "TestData.h"

@implementation ReflectionDataTest

+ (void)test{
    NSArray *arr = @[@{@"btid":@1, @"name":@"孕妇（怀孕中）", @"largePicture":@"http://kidapi.vipkid.com:80/assets/images/1_large.png", @"smallPicture":@"http://kidapi.vipkid.com:80/assets/images/1_small.png"}, @{@"btid":@2, @"name":@"婴儿（0-3岁）", @"largePicture":@"http://kidapi.vipkid.com:80/assets/images/2_large.png", @"smallPicture":@"http://kidapi.vipkid.com:80/assets/images/2_small.png"}, @{@"btid":@3, @"name":@"幼童（3-6岁）", @"largePicture":@"http://kidapi.vipkid.com:80/assets/images/3_large.png", @"smallPicture":@"http://kidapi.vipkid.com:80/assets/images/3_small.png"}, @{@"btid":@4, @"name":@"男童（6岁以上）", @"largePicture":@"http://kidapi.vipkid.com:80/assets/images/4_large.png", @"smallPicture":@"http://kidapi.vipkid.com:80/assets/images/4_small.png"}, @{@"btid":@5, @"name":@"女童（6岁以上）", @"largePicture":@"http://kidapi.vipkid.com:80/assets/images/5_large.png", @"smallPicture":@"http://kidapi.vipkid.com:80/assets/images/5_small.png"}];
    
    TestData *testData = [[TestData alloc] init];
    
    NSArray *arrValue = [Reflection parseObjectArrayFromArray:testData arrayName:@"items" contents:arr];
    [Reflection objectFromContent:arr object:&testData];
}

@end
