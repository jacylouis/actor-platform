//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/network/mtp/entity/UnsentMessage.java
//

#ifndef _MTUnsentMessage_H_
#define _MTUnsentMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;

#define MTUnsentMessage_HEADER 7

@interface MTUnsentMessage : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId
                     withInt:(jint)len;

- (jint)getLen;

- (jlong)getMessageId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTUnsentMessage)

J2OBJC_STATIC_FIELD_GETTER(MTUnsentMessage, HEADER, jbyte)

FOUNDATION_EXPORT void MTUnsentMessage_initWithLong_withInt_(MTUnsentMessage *self, jlong messageId, jint len);

FOUNDATION_EXPORT MTUnsentMessage *new_MTUnsentMessage_initWithLong_withInt_(jlong messageId, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void MTUnsentMessage_initWithBSDataInput_(MTUnsentMessage *self, BSDataInput *stream);

FOUNDATION_EXPORT MTUnsentMessage *new_MTUnsentMessage_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTUnsentMessage)

typedef MTUnsentMessage ImActorModelNetworkMtpEntityUnsentMessage;

#endif // _MTUnsentMessage_H_