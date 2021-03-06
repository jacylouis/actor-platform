//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestJoinGroupDirect.java
//

#ifndef _APRequestJoinGroupDirect_H_
#define _APRequestJoinGroupDirect_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APGroupOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestJoinGroupDirect_HEADER 199

@interface APRequestJoinGroupDirect : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)peer;

+ (APRequestJoinGroupDirect *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (APGroupOutPeer *)getPeer;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestJoinGroupDirect)

J2OBJC_STATIC_FIELD_GETTER(APRequestJoinGroupDirect, HEADER, jint)

FOUNDATION_EXPORT APRequestJoinGroupDirect *APRequestJoinGroupDirect_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestJoinGroupDirect_initWithAPGroupOutPeer_(APRequestJoinGroupDirect *self, APGroupOutPeer *peer);

FOUNDATION_EXPORT APRequestJoinGroupDirect *new_APRequestJoinGroupDirect_initWithAPGroupOutPeer_(APGroupOutPeer *peer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestJoinGroupDirect_init(APRequestJoinGroupDirect *self);

FOUNDATION_EXPORT APRequestJoinGroupDirect *new_APRequestJoinGroupDirect_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestJoinGroupDirect)

typedef APRequestJoinGroupDirect ImActorModelApiRpcRequestJoinGroupDirect;

#endif // _APRequestJoinGroupDirect_H_
