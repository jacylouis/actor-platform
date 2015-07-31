//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/utils/ModuleActor.java
//

#ifndef _ImActorModelModulesUtilsModuleActor_H_
#define _ImActorModelModulesUtilsModuleActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/Actor.h"

@class AMConfiguration;
@class AMGroup;
@class AMGroupVM;
@class AMPeer;
@class AMUser;
@class AMUserVM;
@class APOutPeer;
@class APPeer;
@class APRequest;
@class DKActorRef;
@class ImActorModelModulesModules;
@class ImActorModelModulesUpdates;
@protocol AMRpcCallback;
@protocol DKKeyValueEngine;
@protocol DKListEngine;
@protocol DKPreferencesStorage;

#define ImActorModelModulesUtilsModuleActor_CURSOR_RECEIVED 0LL
#define ImActorModelModulesUtilsModuleActor_CURSOR_READ 1LL
#define ImActorModelModulesUtilsModuleActor_CURSOR_OWN_READ 2LL
#define ImActorModelModulesUtilsModuleActor_CURSOR_DELETE 3LL

@interface ImActorModelModulesUtilsModuleActor : DKActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (APOutPeer *)buidOutPeerWithAMPeer:(AMPeer *)peer;

- (APPeer *)buildApiPeerWithAMPeer:(AMPeer *)peer;

- (AMConfiguration *)config;

- (DKActorRef *)getConversationActorWithAMPeer:(AMPeer *)peer;

- (AMGroup *)getGroupWithInt:(jint)gid;

- (AMGroupVM *)getGroupVMWithInt:(jint)gid;

- (AMUser *)getUserWithInt:(jint)uid;

- (AMUserVM *)getUserVMWithInt:(jint)uid;

- (id<DKKeyValueEngine>)groups;

- (id<DKListEngine>)mediaWithAMPeer:(AMPeer *)peer;

- (id<DKListEngine>)messagesWithAMPeer:(AMPeer *)peer;

- (ImActorModelModulesModules *)modules;

- (jint)myUid;

- (id<DKPreferencesStorage>)preferences;

- (void)requestWithAPRequest:(APRequest *)request;

- (void)requestWithAPRequest:(APRequest *)request
           withAMRpcCallback:(id<AMRpcCallback>)callback;

- (ImActorModelModulesUpdates *)updates;

- (id<DKKeyValueEngine>)users;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUtilsModuleActor)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUtilsModuleActor, CURSOR_RECEIVED, jlong)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUtilsModuleActor, CURSOR_READ, jlong)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUtilsModuleActor, CURSOR_OWN_READ, jlong)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUtilsModuleActor, CURSOR_DELETE, jlong)

FOUNDATION_EXPORT void ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(ImActorModelModulesUtilsModuleActor *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesUtilsModuleActor *new_ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUtilsModuleActor)

#endif // _ImActorModelModulesUtilsModuleActor_H_