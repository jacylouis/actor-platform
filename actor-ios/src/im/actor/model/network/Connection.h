//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/Connection.java
//

#ifndef _AMConnection_H_
#define _AMConnection_H_

@class IOSByteArray;

#include "J2ObjC_header.h"

@protocol AMConnection < NSObject, JavaObject >

- (void)postWithByteArray:(IOSByteArray *)data
                  withInt:(jint)offset
                  withInt:(jint)len;

- (jboolean)isClosed;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(AMConnection)

#define ImActorModelNetworkConnection AMConnection

J2OBJC_TYPE_LITERAL_HEADER(AMConnection)

#endif // _AMConnection_H_