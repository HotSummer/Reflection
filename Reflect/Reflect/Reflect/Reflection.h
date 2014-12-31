//
//  Reflection.h
//  Reflect
//
//  Created by summer.zhu on 1/12/14.
//  Copyright (c) 2014年 summer.zhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Reflection : NSObject

/**
 *  将content数据解析成对象，遍历dictionary，将值setValue:forKey到对象当中
 *
 *  @param content 数据
 *  @param object  对象指针
 */
+ (void)objectFromContent:(id)content object:(NSObject **)object;

/**
 *  将content数据解析成className的对象
 *
 *  @param content 数据
 *  @param className  对象名
 */
+ (NSObject *)objectFromContent:(id)content className:(NSString *)className;

/**
 *  将array数据赋值给对象（object）的property属性
 *
 *  @param object   赋值对象
 *  @param property 对象属性名
 *  @param array    值
 */
+ (void)setArrayToObject:(NSObject **)object propertyName:(NSString *)property data:(NSArray *)array;

/**
 *  将json数组反射成对象的数组
 *
 *  @param object    对象 用于抛出异常用，所要赋值的对象名
 *  @param arrayName 数组名，用于抛出异常用，所要赋值的数组名
 *  @param contents  json数组
 *
 *  @return 对象数组
 */
+ (NSArray *)parseObjectArrayFromArray:(NSObject *)object arrayName:(NSString *)arrayName contents:(NSArray *)contents;

/**
 *  将数组中数据根据className解析成对应的对象，放到数组中返回
 *
 *  @param data      数组中数据
 *  @param className 数组中元素对应的类名，如果为nil，则放回原数组
 *
 *  @return 解析后的数组
 */
+ (NSArray *)parseArrayData:(NSArray *)data classNameInArray:(NSString *)className;

/**
 *  将jsonDictionary转化为NSObject
 *
 *  @param jsonDictionary dictionary
 *  @param className      类名
 *
 *  @return NSObject对象
 */
+ (NSObject *)objectFromJSONDictionary:(NSDictionary *)jsonDictionary className:(NSString *)className;

/**
 *  根据json数据更新object对象
 *
 *  @param jsonDictionary json数据
 *  @param object         object对象
 *
 */
+ (void)objectFromJSONDictionary:(NSDictionary *)jsonDictionary object:(NSObject **)object;

/**
 *  给object赋值。首先判断是不是可以赋值，如果可以赋值则赋，不可以报错
 *
 *  @param object 对象
 *  @param propertyName    对象的属性名
 *  @param value  用来赋值的value
 */
+ (void)setValueForKey:(NSObject *)object propertyName:(NSString *)propertyName value:(id)value;

/**
 *  将NSObject对象的所有属性转化为NSDictionary
 *
 *  @param object 对象
 *
 *  @return object对应的字典
 */
+ (NSDictionary *)dictionaryFromObject:(NSObject *)object;

/**
 *  将NSObject对象的class层属性转化为NSDictionary（class层：object继承链中的某一层）
 *
 *  @param object object对象
 *
 *  @return object本身对应的字典
 */
+ (NSDictionary *)dictionaryFromObject:(NSObject *)object class:(NSString *)class;




@end
