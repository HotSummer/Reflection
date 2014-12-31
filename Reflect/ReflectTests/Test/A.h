//
//  A.h
//  ReadValueFromPath
//
//  Created by summer.zhu on 31/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "B.h"

@interface A : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSNumber *age;
@property(nonatomic) NSInteger number;
@property(nonatomic, strong) B *b;

- (NSString *)total;

@end
