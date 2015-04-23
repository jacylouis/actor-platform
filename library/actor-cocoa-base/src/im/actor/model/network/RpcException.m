//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/RpcException.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/RpcException.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/RpcException.h"

@interface AMRpcException () {
 @public
  NSString *tag_;
  jint code_;
  NSString *message_;
  jboolean canTryAgain_;
  IOSByteArray *relatedData_;
}
@end

J2OBJC_FIELD_SETTER(AMRpcException, tag_, NSString *)
J2OBJC_FIELD_SETTER(AMRpcException, message_, NSString *)
J2OBJC_FIELD_SETTER(AMRpcException, relatedData_, IOSByteArray *)


#line 6
@implementation AMRpcException


#line 13
- (instancetype)initWithNSString:(NSString *)tag
                         withInt:(jint)code
                    withNSString:(NSString *)message
                     withBoolean:(jboolean)canTryAgain
                   withByteArray:(IOSByteArray *)relatedData {
  if (self = [super init]) {
    
#line 14
    self->tag_ = tag;
    
#line 15
    self->code_ = code;
    
#line 16
    self->message_ = message;
    
#line 17
    self->canTryAgain_ = canTryAgain;
    
#line 18
    self->relatedData_ = relatedData;
  }
  return self;
}


#line 21
- (jboolean)isCanTryAgain {
  
#line 22
  return canTryAgain_;
}


#line 25
- (IOSByteArray *)getRelatedData {
  
#line 26
  return relatedData_;
}


#line 29
- (NSString *)getTag {
  
#line 30
  return tag_;
}


#line 33
- (jint)getCode {
  
#line 34
  return code_;
}


#line 38
- (NSString *)getMessage {
  return message_;
}

- (void)copyAllFieldsTo:(AMRpcException *)other {
  [super copyAllFieldsTo:other];
  other->tag_ = tag_;
  other->code_ = code_;
  other->message_ = message_;
  other->canTryAgain_ = canTryAgain_;
  other->relatedData_ = relatedData_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMRpcException)