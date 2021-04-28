//
//  LLObject.h
//  LLObject
//
//  Created by ZHK on 2021/4/28.
//  
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LLObject)

/// 使用 `objc_setAssociatedObject` 添加的属性
@property (nonatomic, strong, readonly, nonnull) NSMutableDictionary *ll_KVMap;

/// 获取继承链上所有的方法列表
- (NSString *)ll_methodList;

/// 获取当前类的方法列表 (不包含继承链上的父类等)
- (NSString *)ll_shortMethodList;

/// 获取所有的成员变量列表
- (NSString *)ll_ivarList;

@end

NS_ASSUME_NONNULL_END
