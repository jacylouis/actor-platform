//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/AuthState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/AuthState.h"
#include "java/lang/IllegalArgumentException.h"

BOOL AMAuthStateEnum_initialized = NO;

AMAuthStateEnum *AMAuthStateEnum_values_[4];

@implementation AMAuthStateEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

IOSObjectArray *AMAuthStateEnum_values() {
  AMAuthStateEnum_init();
  return [IOSObjectArray arrayWithObjects:AMAuthStateEnum_values_ count:4 type:AMAuthStateEnum_class_()];
}
+ (IOSObjectArray *)values {
  return AMAuthStateEnum_values();
}

+ (AMAuthStateEnum *)valueOfWithNSString:(NSString *)name {
  return AMAuthStateEnum_valueOfWithNSString_(name);
}

AMAuthStateEnum *AMAuthStateEnum_valueOfWithNSString_(NSString *name) {
  AMAuthStateEnum_init();
  for (int i = 0; i < 4; i++) {
    AMAuthStateEnum *e = AMAuthStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMAuthStateEnum class]) {
    AMAuthStateEnum_AUTH_START = [[AMAuthStateEnum alloc] initWithNSString:@"AUTH_START" withInt:0];
    AMAuthStateEnum_CODE_VALIDATION = [[AMAuthStateEnum alloc] initWithNSString:@"CODE_VALIDATION" withInt:1];
    AMAuthStateEnum_SIGN_UP = [[AMAuthStateEnum alloc] initWithNSString:@"SIGN_UP" withInt:2];
    AMAuthStateEnum_LOGGED_IN = [[AMAuthStateEnum alloc] initWithNSString:@"LOGGED_IN" withInt:3];
    J2OBJC_SET_INITIALIZED(AMAuthStateEnum)
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAuthStateEnum)