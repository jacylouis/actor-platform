//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/ResponseGetVoxUser.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetVoxUser.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface APResponseGetVoxUser () {
 @public
  NSString *callNumber_;
}

@end

J2OBJC_FIELD_SETTER(APResponseGetVoxUser, callNumber_, NSString *)

@implementation APResponseGetVoxUser

+ (APResponseGetVoxUser *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseGetVoxUser_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)callNumber {
  APResponseGetVoxUser_initWithNSString_(self, callNumber);
  return self;
}

- (instancetype)init {
  APResponseGetVoxUser_init(self);
  return self;
}

- (NSString *)getCallNumber {
  return self->callNumber_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->callNumber_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->callNumber_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->callNumber_];
}

- (NSString *)description {
  NSString *res = @"tuple GetVoxUser{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseGetVoxUser_HEADER;
}

@end

APResponseGetVoxUser *APResponseGetVoxUser_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseGetVoxUser_initialize();
  return ((APResponseGetVoxUser *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseGetVoxUser_init(), data));
}

void APResponseGetVoxUser_initWithNSString_(APResponseGetVoxUser *self, NSString *callNumber) {
  (void) APResponse_init(self);
  self->callNumber_ = callNumber;
}

APResponseGetVoxUser *new_APResponseGetVoxUser_initWithNSString_(NSString *callNumber) {
  APResponseGetVoxUser *self = [APResponseGetVoxUser alloc];
  APResponseGetVoxUser_initWithNSString_(self, callNumber);
  return self;
}

void APResponseGetVoxUser_init(APResponseGetVoxUser *self) {
  (void) APResponse_init(self);
}

APResponseGetVoxUser *new_APResponseGetVoxUser_init() {
  APResponseGetVoxUser *self = [APResponseGetVoxUser alloc];
  APResponseGetVoxUser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseGetVoxUser)