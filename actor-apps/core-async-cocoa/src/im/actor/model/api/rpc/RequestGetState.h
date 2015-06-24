//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/RequestGetState.java
//

#ifndef _APRequestGetState_H_
#define _APRequestGetState_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestGetState_HEADER 9

@interface APRequestGetState : APRequest

#pragma mark Public

- (instancetype)init;

+ (APRequestGetState *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestGetState)

J2OBJC_STATIC_FIELD_GETTER(APRequestGetState, HEADER, jint)

FOUNDATION_EXPORT APRequestGetState *APRequestGetState_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestGetState_init(APRequestGetState *self);

FOUNDATION_EXPORT APRequestGetState *new_APRequestGetState_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestGetState)

typedef APRequestGetState ImActorModelApiRpcRequestGetState;

#endif // _APRequestGetState_H_