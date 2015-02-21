//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestRemoveContact.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestRemoveContact () {
 @public
  jint uid_;
  jlong accessHash_;
}
@end

@implementation ImActorModelApiRpcRequestRemoveContact

+ (ImActorModelApiRpcRequestRemoveContact *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestRemoveContact_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash {
  if (self = [super init]) {
    self->uid_ = uid;
    self->accessHash_ = accessHash;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestRemoveContact_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestRemoveContact *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->accessHash_ = accessHash_;
}

@end

ImActorModelApiRpcRequestRemoveContact *ImActorModelApiRpcRequestRemoveContact_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestRemoveContact_init();
  return ((ImActorModelApiRpcRequestRemoveContact *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestRemoveContact alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestRemoveContact)