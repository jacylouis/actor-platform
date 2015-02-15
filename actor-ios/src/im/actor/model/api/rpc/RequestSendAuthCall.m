//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSendAuthCall.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSendAuthCall.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSendAuthCall () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  jint appId_;
  NSString *apiKey_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCall, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCall, apiKey_, NSString *)

@implementation ImActorModelApiRpcRequestSendAuthCall

+ (ImActorModelApiRpcRequestSendAuthCall *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey {
  if (self = [super init]) {
    self->phoneNumber_ = phoneNumber;
    ImActorModelApiRpcRequestSendAuthCall_set_smsHash_(self, smsHash);
    self->appId_ = appId;
    ImActorModelApiRpcRequestSendAuthCall_set_apiKey_(self, apiKey);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getApiKey {
  return self->apiKey_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->phoneNumber_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getLongWithInt:1];
  ImActorModelApiRpcRequestSendAuthCall_set_smsHash_(self, [values getStringWithInt:2]);
  self->appId_ = [values getIntWithInt:3];
  ImActorModelApiRpcRequestSendAuthCall_set_apiKey_(self, [values getStringWithInt:4]);
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  [writer writeIntWithInt:3 withInt:self->appId_];
  if (self->apiKey_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:4 withNSString:self->apiKey_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSendAuthCall_HEADER;
}

- (void)dealloc {
  RELEASE_(smsHash_);
  RELEASE_(apiKey_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSendAuthCall *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  ImActorModelApiRpcRequestSendAuthCall_set_smsHash_(other, smsHash_);
  other->appId_ = appId_;
  ImActorModelApiRpcRequestSendAuthCall_set_apiKey_(other, apiKey_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestSendAuthCall;", 0x9, "Ljava.io.IOException;" },
    { "initWithLong:withNSString:withInt:withNSString:", "RequestSendAuthCall", NULL, 0x1, NULL },
    { "init", "RequestSendAuthCall", NULL, 0x1, NULL },
    { "getPhoneNumber", NULL, "J", 0x1, NULL },
    { "getSmsHash", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAppId", NULL, "I", 0x1, NULL },
    { "getApiKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestSendAuthCall_HEADER },
    { "phoneNumber_", NULL, 0x2, "J", NULL,  },
    { "smsHash_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "appId_", NULL, 0x2, "I", NULL,  },
    { "apiKey_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestSendAuthCall = { 1, "RequestSendAuthCall", "im.actor.model.api.rpc", NULL, 0x1, 10, methods, 5, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestSendAuthCall;
}

@end

ImActorModelApiRpcRequestSendAuthCall *ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSendAuthCall_init();
  return ((ImActorModelApiRpcRequestSendAuthCall *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[[ImActorModelApiRpcRequestSendAuthCall alloc] init] autorelease], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSendAuthCall)