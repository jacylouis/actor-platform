//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/log/Log.java
//

#ifndef _AMLog_H_
#define _AMLog_H_

@class JavaLangThrowable;
@protocol AMLogProvider;

#include "J2ObjC_header.h"

@interface AMLog : NSObject {
}

+ (id<AMLogProvider>)getLog;

+ (void)setLogWithAMLogProvider:(id<AMLogProvider>)log;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMLog)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT id<AMLogProvider> AMLog_getLog();

FOUNDATION_EXPORT void AMLog_setLogWithAMLogProvider_(id<AMLogProvider> log);

FOUNDATION_EXPORT void AMLog_wWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void AMLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable);

FOUNDATION_EXPORT void AMLog_dWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void AMLog_vWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT id<AMLogProvider> AMLog_log_;
J2OBJC_STATIC_FIELD_GETTER(AMLog, log_, id<AMLogProvider>)
J2OBJC_STATIC_FIELD_SETTER(AMLog, log_, id<AMLogProvider>)
CF_EXTERN_C_END

typedef AMLog ImActorModelLogLog;

J2OBJC_TYPE_LITERAL_HEADER(AMLog)

#endif // _AMLog_H_