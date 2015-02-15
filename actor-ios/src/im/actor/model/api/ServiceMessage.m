//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceMessage () {
 @public
  NSString *text_;
  jint extType_;
  IOSByteArray *ext_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiServiceMessage, text_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiServiceMessage, ext_, IOSByteArray *)

@implementation ImActorModelApiServiceMessage

- (instancetype)initWithNSString:(NSString *)text
                         withInt:(jint)extType
                   withByteArray:(IOSByteArray *)ext {
  if (self = [super init]) {
    ImActorModelApiServiceMessage_set_text_(self, text);
    self->extType_ = extType;
    ImActorModelApiServiceMessage_set_ext_(self, ext);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (NSString *)getText {
  return self->text_;
}

- (jint)getExtType {
  return self->extType_;
}

- (IOSByteArray *)getExt {
  return self->ext_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  ImActorModelApiServiceMessage_set_text_(self, [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getStringWithInt:1]);
  self->extType_ = [values getIntWithInt:2];
  ImActorModelApiServiceMessage_set_ext_(self, [values optBytesWithInt:3]);
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  if (self->text_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
  [writer writeIntWithInt:2 withInt:self->extType_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:self->ext_];
  }
}

- (void)dealloc {
  RELEASE_(text_);
  RELEASE_(ext_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiServiceMessage *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiServiceMessage_set_text_(other, text_);
  other->extType_ = extType_;
  ImActorModelApiServiceMessage_set_ext_(other, ext_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withByteArray:", "ServiceMessage", NULL, 0x1, NULL },
    { "init", "ServiceMessage", NULL, 0x1, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getExtType", NULL, "I", 0x1, NULL },
    { "getExt", NULL, "[B", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "text_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "extType_", NULL, 0x2, "I", NULL,  },
    { "ext_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiServiceMessage = { 1, "ServiceMessage", "im.actor.model.api", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiServiceMessage;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceMessage)