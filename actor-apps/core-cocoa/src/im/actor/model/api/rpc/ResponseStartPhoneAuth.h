//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseStartPhoneAuth.java
//

#ifndef _APResponseStartPhoneAuth_H_
#define _APResponseStartPhoneAuth_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseStartPhoneAuth_HEADER 193

@interface APResponseStartPhoneAuth : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)transactionHash
                     withBoolean:(jboolean)isRegistered;

+ (APResponseStartPhoneAuth *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getTransactionHash;

- (jboolean)isRegistered;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseStartPhoneAuth)

J2OBJC_STATIC_FIELD_GETTER(APResponseStartPhoneAuth, HEADER, jint)

FOUNDATION_EXPORT APResponseStartPhoneAuth *APResponseStartPhoneAuth_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseStartPhoneAuth_initWithNSString_withBoolean_(APResponseStartPhoneAuth *self, NSString *transactionHash, jboolean isRegistered);

FOUNDATION_EXPORT APResponseStartPhoneAuth *new_APResponseStartPhoneAuth_initWithNSString_withBoolean_(NSString *transactionHash, jboolean isRegistered) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseStartPhoneAuth_init(APResponseStartPhoneAuth *self);

FOUNDATION_EXPORT APResponseStartPhoneAuth *new_APResponseStartPhoneAuth_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseStartPhoneAuth)

typedef APResponseStartPhoneAuth ImActorModelApiRpcResponseStartPhoneAuth;

#endif // _APResponseStartPhoneAuth_H_