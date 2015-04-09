//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateEmailContactRegistered.java
//

#ifndef _ImActorModelApiUpdatesUpdateEmailContactRegistered_H_
#define _ImActorModelApiUpdatesUpdateEmailContactRegistered_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateEmailContactRegistered_HEADER 120

@interface ImActorModelApiUpdatesUpdateEmailContactRegistered : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateEmailContactRegistered *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)emailId
                    withInt:(jint)uid;

- (instancetype)init;

- (jint)getEmailId;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateEmailContactRegistered)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateEmailContactRegistered *ImActorModelApiUpdatesUpdateEmailContactRegistered_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateEmailContactRegistered, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateEmailContactRegistered)

#endif // _ImActorModelApiUpdatesUpdateEmailContactRegistered_H_