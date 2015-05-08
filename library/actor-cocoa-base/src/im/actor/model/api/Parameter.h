//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Parameter.java
//

#ifndef _ImActorModelApiParameter_H_
#define _ImActorModelApiParameter_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiParameter : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value;

- (NSString *)getKey;

- (NSString *)getValue;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiParameter)

FOUNDATION_EXPORT void ImActorModelApiParameter_initWithNSString_withNSString_(ImActorModelApiParameter *self, NSString *key, NSString *value);

FOUNDATION_EXPORT ImActorModelApiParameter *new_ImActorModelApiParameter_initWithNSString_withNSString_(NSString *key, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiParameter_init(ImActorModelApiParameter *self);

FOUNDATION_EXPORT ImActorModelApiParameter *new_ImActorModelApiParameter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiParameter)

#endif // _ImActorModelApiParameter_H_