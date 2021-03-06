//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/ProtoStruct.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoObject.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation MTProtoStruct

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTProtoStruct_initWithBSDataInput_(self, stream);
  return self;
}

- (instancetype)init {
  MTProtoStruct_init(self);
  return self;
}

- (void)writeObjectWithBSDataOutput:(BSDataOutput *)bs {
  jbyte header = [self getHeader];
  if (header != 0) {
    [((BSDataOutput *) nil_chk(bs)) writeByteWithByte:header];
  }
  [self writeBodyWithBSDataOutput:bs];
}

- (MTProtoObject *)readObjectWithBSDataInput:(BSDataInput *)bs {
  [self readBodyWithBSDataInput:bs];
  return self;
}

@end

void MTProtoStruct_initWithBSDataInput_(MTProtoStruct *self, BSDataInput *stream) {
  (void) MTProtoObject_initWithBSDataInput_(self, stream);
}

void MTProtoStruct_init(MTProtoStruct *self) {
  (void) MTProtoObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTProtoStruct)
