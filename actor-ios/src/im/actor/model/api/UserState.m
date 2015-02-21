//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/UserState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/UserState.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"

@interface ImActorModelApiUserStateEnum () {
 @public
  jint value_;
}
@end

BOOL ImActorModelApiUserStateEnum_initialized = NO;

ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_values_[3];

@implementation ImActorModelApiUserStateEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  if (self = [super initWithNSString:__name withInt:__ordinal]) {
    self->value_ = value;
  }
  return self;
}

- (jint)getValue {
  return value_;
}

+ (ImActorModelApiUserStateEnum *)parseWithInt:(jint)value {
  return ImActorModelApiUserStateEnum_parseWithInt_(value);
}

IOSObjectArray *ImActorModelApiUserStateEnum_values() {
  ImActorModelApiUserStateEnum_init();
  return [IOSObjectArray arrayWithObjects:ImActorModelApiUserStateEnum_values_ count:3 type:ImActorModelApiUserStateEnum_class_()];
}
+ (IOSObjectArray *)values {
  return ImActorModelApiUserStateEnum_values();
}

+ (ImActorModelApiUserStateEnum *)valueOfWithNSString:(NSString *)name {
  return ImActorModelApiUserStateEnum_valueOfWithNSString_(name);
}

ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_valueOfWithNSString_(NSString *name) {
  ImActorModelApiUserStateEnum_init();
  for (int i = 0; i < 3; i++) {
    ImActorModelApiUserStateEnum *e = ImActorModelApiUserStateEnum_values_[i];
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
  if (self == [ImActorModelApiUserStateEnum class]) {
    ImActorModelApiUserStateEnum_REGISTERED = [[ImActorModelApiUserStateEnum alloc] initWithInt:1 withNSString:@"REGISTERED" withInt:0];
    ImActorModelApiUserStateEnum_EMAIL = [[ImActorModelApiUserStateEnum alloc] initWithInt:2 withNSString:@"EMAIL" withInt:1];
    ImActorModelApiUserStateEnum_DELETED = [[ImActorModelApiUserStateEnum alloc] initWithInt:3 withNSString:@"DELETED" withInt:2];
    J2OBJC_SET_INITIALIZED(ImActorModelApiUserStateEnum)
  }
}

@end

ImActorModelApiUserStateEnum *ImActorModelApiUserStateEnum_parseWithInt_(jint value) {
  ImActorModelApiUserStateEnum_init();
  switch (value) {
    case 1:
    return ImActorModelApiUserStateEnum_REGISTERED;
    case 2:
    return ImActorModelApiUserStateEnum_EMAIL;
    case 3:
    return ImActorModelApiUserStateEnum_DELETED;
  }
  @throw [[JavaIoIOException alloc] init];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUserStateEnum)