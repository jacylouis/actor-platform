//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageRead.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageRead.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateMessageRead () {
 @public
  ImActorModelApiPeer *peer_;
  jlong startDate_;
  jlong readDate_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageRead, peer_, ImActorModelApiPeer *)

@implementation ImActorModelApiUpdatesUpdateMessageRead

+ (ImActorModelApiUpdatesUpdateMessageRead *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageRead_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)startDate
                                   withLong:(jlong)readDate {
  if (self = [super init]) {
    ImActorModelApiUpdatesUpdateMessageRead_set_peer_(self, peer);
    self->startDate_ = startDate;
    self->readDate_ = readDate;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getStartDate {
  return self->startDate_;
}

- (jlong)getReadDate {
  return self->readDate_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  ImActorModelApiUpdatesUpdateMessageRead_set_peer_(self, [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withImActorModelDroidkitBserBserObject:[[[ImActorModelApiPeer alloc] init] autorelease]]);
  self->startDate_ = [values getLongWithInt:2];
  self->readDate_ = [values getLongWithInt:3];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withImActorModelDroidkitBserBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->startDate_];
  [writer writeLongWithInt:3 withLong:self->readDate_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateMessageRead_HEADER;
}

- (void)dealloc {
  RELEASE_(peer_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateMessageRead *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiUpdatesUpdateMessageRead_set_peer_(other, peer_);
  other->startDate_ = startDate_;
  other->readDate_ = readDate_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateMessageRead;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiPeer:withLong:withLong:", "UpdateMessageRead", NULL, 0x1, NULL },
    { "init", "UpdateMessageRead", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.Peer;", 0x1, NULL },
    { "getStartDate", NULL, "J", 0x1, NULL },
    { "getReadDate", NULL, "J", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateMessageRead_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.Peer;", NULL,  },
    { "startDate_", NULL, 0x2, "J", NULL,  },
    { "readDate_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateMessageRead = { 1, "UpdateMessageRead", "im.actor.model.api.updates", NULL, 0x1, 9, methods, 4, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateMessageRead;
}

@end

ImActorModelApiUpdatesUpdateMessageRead *ImActorModelApiUpdatesUpdateMessageRead_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageRead_init();
  return ((ImActorModelApiUpdatesUpdateMessageRead *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[[ImActorModelApiUpdatesUpdateMessageRead alloc] init] autorelease], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageRead)