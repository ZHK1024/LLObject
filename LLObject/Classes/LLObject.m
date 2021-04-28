//
//  LLObject.m
//  LLObject
//
//  Created by ZHK on 2021/4/28.
//  
//

#import "LLObject.h"
#import <objc/runtime.h>

@implementation NSObject (LLObject)

const void *kKVMap = @"D96E8B17C98D5B0A";

- (NSMutableDictionary *)ll_KVMap {
    NSMutableDictionary *map = objc_getAssociatedObject(self, kKVMap);
    if (map == nil) {
        map = [NSMutableDictionary new];
        objc_setAssociatedObject(self, kKVMap, map, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return map;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Warc-performSelector-leaks"

- (NSString *)ll_methodList {
    SEL selector = NSSelectorFromString(@"_methodDescription");
    if ([self respondsToSelector:selector]) {
        return [self performSelector:selector];
    }
    return @"";
}

- (NSString *)ll_shortMethodList {
    SEL selector = NSSelectorFromString(@"_shortMethodDescription");
    if ([self respondsToSelector:selector]) {
        return [self performSelector:selector];
    }
    return @"";
}

- (NSString *)ll_ivarList {
    SEL selector = NSSelectorFromString(@"_ivarDescription");
    if ([self respondsToSelector:selector]) {
        return [self performSelector:selector];
    }
    return @"";
}

#pragma clang diagnostic pop

@end
