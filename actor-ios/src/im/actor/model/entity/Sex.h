//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/Sex.java
//

#ifndef _ImActorModelEntitySex_H_
#define _ImActorModelEntitySex_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ImActorModelEntitySex) {
  ImActorModelEntitySex_UNKNOWN = 0,
  ImActorModelEntitySex_MALE = 1,
  ImActorModelEntitySex_FEMALE = 2,
};

@interface ImActorModelEntitySexEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal;

- (jint)getValue;

+ (ImActorModelEntitySexEnum *)fromValueWithInt:(jint)value;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ImActorModelEntitySexEnum_values();

+ (ImActorModelEntitySexEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ImActorModelEntitySexEnum *ImActorModelEntitySexEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ImActorModelEntitySexEnum_initialized;
J2OBJC_STATIC_INIT(ImActorModelEntitySexEnum)

FOUNDATION_EXPORT ImActorModelEntitySexEnum *ImActorModelEntitySexEnum_fromValueWithInt_(jint value);

FOUNDATION_EXPORT ImActorModelEntitySexEnum *ImActorModelEntitySexEnum_values_[];

#define ImActorModelEntitySexEnum_UNKNOWN ImActorModelEntitySexEnum_values_[ImActorModelEntitySex_UNKNOWN]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelEntitySexEnum, UNKNOWN)

#define ImActorModelEntitySexEnum_MALE ImActorModelEntitySexEnum_values_[ImActorModelEntitySex_MALE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelEntitySexEnum, MALE)

#define ImActorModelEntitySexEnum_FEMALE ImActorModelEntitySexEnum_values_[ImActorModelEntitySex_FEMALE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelEntitySexEnum, FEMALE)

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntitySexEnum)

#endif // _ImActorModelEntitySex_H_