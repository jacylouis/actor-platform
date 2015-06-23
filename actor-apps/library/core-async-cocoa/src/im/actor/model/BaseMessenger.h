//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core-async/src/main/java/im/actor/model/BaseMessenger.java
//

#ifndef _AMBaseMessenger_H_
#define _AMBaseMessenger_H_

#include "J2ObjC_header.h"
#include "im/actor/model/Messenger.h"

@class AMBindedDisplayList;
@class AMConfiguration;
@class AMConversationVM;
@class AMMessengerEnvironmentEnum;
@class AMPeer;
@protocol AMConversationVMCallback;

@interface AMBaseMessenger : AMMessenger

#pragma mark Public

- (instancetype)initWithEnvironment:(AMMessengerEnvironmentEnum *)environment
                  withConfiguration:(AMConfiguration *)configuration;

- (AMBindedDisplayList *)buildContactDisplayList;

- (AMConversationVM *)buildConversationVMWithPeer:(AMPeer *)peer
                                  withDisplayList:(AMBindedDisplayList *)displayList
                                     withCallback:(id<AMConversationVMCallback>)callback;

- (AMBindedDisplayList *)buildMessagesListWithPeer:(AMPeer *)peer;

- (AMBindedDisplayList *)buildSearchList;

- (AMBindedDisplayList *)getContactsGlobalListWithContact;

- (AMBindedDisplayList *)getDialogsGlobalList;

- (jint)getMediaCountWithPeer:(AMPeer *)peer;

- (AMBindedDisplayList *)getMediaGlobalListWithPeer:(AMPeer *)peer;

- (AMBindedDisplayList *)getMessagesGlobalListWithPeer:(AMPeer *)peer;

- (jlong)loadLastReadState:(AMPeer *)peer;

@end

J2OBJC_EMPTY_STATIC_INIT(AMBaseMessenger)

FOUNDATION_EXPORT void AMBaseMessenger_initWithEnvironment_withConfiguration_(AMBaseMessenger *self, AMMessengerEnvironmentEnum *environment, AMConfiguration *configuration);

FOUNDATION_EXPORT AMBaseMessenger *new_AMBaseMessenger_initWithEnvironment_withConfiguration_(AMMessengerEnvironmentEnum *environment, AMConfiguration *configuration) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMBaseMessenger)

typedef AMBaseMessenger ImActorModelBaseMessenger;

#endif // _AMBaseMessenger_H_