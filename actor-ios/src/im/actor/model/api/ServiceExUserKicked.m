//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExUserKicked.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceExUserKicked.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExUserKicked () {
 @public
  jint kickedUid_;
}
@end

@implementation ImActorModelApiServiceExUserKicked

- (instancetype)initWithInt:(jint)kickedUid {
  if (self = [super init]) {
    self->kickedUid_ = kickedUid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getKickedUid {
  return self->kickedUid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->kickedUid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->kickedUid_];
}

- (void)copyAllFieldsTo:(ImActorModelApiServiceExUserKicked *)other {
  [super copyAllFieldsTo:other];
  other->kickedUid_ = kickedUid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExUserKicked)