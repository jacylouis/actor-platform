//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/ContactRecord.java
//

#ifndef _AMContactRecord_H_
#define _AMContactRecord_H_

#include "J2ObjC_header.h"

@class AMContactRecordTypeEnum;

@interface AMContactRecord : NSObject

#pragma mark Public

- (instancetype)initWithAMContactRecordTypeEnum:(AMContactRecordTypeEnum *)recordType
                                   withNSString:(NSString *)recordData
                                   withNSString:(NSString *)recordTitle;

- (NSString *)getRecordData;

- (NSString *)getRecordTitle;

- (AMContactRecordTypeEnum *)getRecordType;

@end

J2OBJC_EMPTY_STATIC_INIT(AMContactRecord)

FOUNDATION_EXPORT void AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(AMContactRecord *self, AMContactRecordTypeEnum *recordType, NSString *recordData, NSString *recordTitle);

FOUNDATION_EXPORT AMContactRecord *new_AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(AMContactRecordTypeEnum *recordType, NSString *recordData, NSString *recordTitle) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMContactRecord)

typedef AMContactRecord ImActorModelEntityContactRecord;

#endif // _AMContactRecord_H_
