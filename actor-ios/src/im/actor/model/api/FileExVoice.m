//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileExVoice.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileExVoice.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFileExVoice () {
 @public
  jint duration_;
}
@end

@implementation ImActorModelApiFileExVoice

- (instancetype)initWithInt:(jint)duration {
  if (self = [super init]) {
    self->duration_ = duration;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getDuration {
  return self->duration_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->duration_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->duration_];
}

- (void)copyAllFieldsTo:(ImActorModelApiFileExVoice *)other {
  [super copyAllFieldsTo:other];
  other->duration_ = duration_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "FileExVoice", NULL, 0x1, NULL },
    { "init", "FileExVoice", NULL, 0x1, NULL },
    { "getDuration", NULL, "I", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "duration_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiFileExVoice = { 1, "FileExVoice", "im.actor.model.api", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ImActorModelApiFileExVoice;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFileExVoice)