//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/User.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Sex.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/UserState.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUser () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *name_;
  NSString *localName_;
  ImActorModelApiSexEnum *sex_;
  id<JavaUtilList> keyHashes_;
  jlong phone_;
  ImActorModelApiAvatar *avatar_;
  id<JavaUtilList> contacts_;
  ImActorModelApiUserStateEnum *userState_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUser, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, localName_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, sex_, ImActorModelApiSexEnum *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, keyHashes_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, avatar_, ImActorModelApiAvatar *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, contacts_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, userState_, ImActorModelApiUserStateEnum *)

@implementation ImActorModelApiUser

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
 withImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex
           withJavaUtilList:(id<JavaUtilList>)keyHashes
                   withLong:(jlong)phone
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
           withJavaUtilList:(id<JavaUtilList>)contacts
withImActorModelApiUserStateEnum:(ImActorModelApiUserStateEnum *)userState {
  if (self = [super init]) {
    self->id__ = id_;
    self->accessHash_ = accessHash;
    ImActorModelApiUser_set_name_(self, name);
    ImActorModelApiUser_set_localName_(self, localName);
    ImActorModelApiUser_set_sex_(self, sex);
    ImActorModelApiUser_set_keyHashes_(self, keyHashes);
    self->phone_ = phone;
    ImActorModelApiUser_set_avatar_(self, avatar);
    ImActorModelApiUser_set_contacts_(self, contacts);
    ImActorModelApiUser_set_userState_(self, userState);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (NSString *)getName {
  return self->name_;
}

- (NSString *)getLocalName {
  return self->localName_;
}

- (ImActorModelApiSexEnum *)getSex {
  return self->sex_;
}

- (id<JavaUtilList>)getKeyHashes {
  return self->keyHashes_;
}

- (jlong)getPhone {
  return self->phone_;
}

- (ImActorModelApiAvatar *)getAvatar {
  return self->avatar_;
}

- (id<JavaUtilList>)getContacts {
  return self->contacts_;
}

- (ImActorModelApiUserStateEnum *)getUserState {
  return self->userState_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->id__ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  ImActorModelApiUser_set_name_(self, [values getStringWithInt:3]);
  ImActorModelApiUser_set_localName_(self, [values optStringWithInt:4]);
  jint val_sex = [values getIntWithInt:5 withInt:0];
  if (val_sex != 0) {
    ImActorModelApiUser_set_sex_(self, ImActorModelApiSexEnum_parseWithInt_(val_sex));
  }
  ImActorModelApiUser_set_keyHashes_(self, [values getRepeatedLongWithInt:6]);
  self->phone_ = [values getLongWithInt:7];
  ImActorModelApiUser_set_avatar_(self, [values optObjWithInt:8 withImActorModelDroidkitBserBserObject:[[[ImActorModelApiAvatar alloc] init] autorelease]]);
  ImActorModelApiUser_set_contacts_(self, [values getRepeatedIntWithInt:9]);
  ImActorModelApiUser_set_userState_(self, ImActorModelApiUserStateEnum_parseWithInt_([values getIntWithInt:11]));
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->name_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:3 withNSString:self->name_];
  if (self->localName_ != nil) {
    [writer writeStringWithInt:4 withNSString:self->localName_];
  }
  if (self->sex_ != nil) {
    [writer writeIntWithInt:5 withInt:[self->sex_ getValue]];
  }
  [writer writeRepeatedLongWithInt:6 withJavaUtilList:self->keyHashes_];
  [writer writeLongWithInt:7 withLong:self->phone_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:8 withImActorModelDroidkitBserBserObject:self->avatar_];
  }
  [writer writeRepeatedIntWithInt:9 withJavaUtilList:self->contacts_];
  if (self->userState_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeIntWithInt:11 withInt:[((ImActorModelApiUserStateEnum *) nil_chk(self->userState_)) getValue]];
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(localName_);
  RELEASE_(sex_);
  RELEASE_(keyHashes_);
  RELEASE_(avatar_);
  RELEASE_(contacts_);
  RELEASE_(userState_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiUser *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->accessHash_ = accessHash_;
  ImActorModelApiUser_set_name_(other, name_);
  ImActorModelApiUser_set_localName_(other, localName_);
  ImActorModelApiUser_set_sex_(other, sex_);
  ImActorModelApiUser_set_keyHashes_(other, keyHashes_);
  other->phone_ = phone_;
  ImActorModelApiUser_set_avatar_(other, avatar_);
  ImActorModelApiUser_set_contacts_(other, contacts_);
  ImActorModelApiUser_set_userState_(other, userState_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withNSString:withNSString:withImActorModelApiSexEnum:withJavaUtilList:withLong:withImActorModelApiAvatar:withJavaUtilList:withImActorModelApiUserStateEnum:", "User", NULL, 0x1, NULL },
    { "init", "User", NULL, 0x1, NULL },
    { "getId", NULL, "I", 0x1, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getLocalName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getSex", NULL, "Lim.actor.model.api.Sex;", 0x1, NULL },
    { "getKeyHashes", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getPhone", NULL, "J", 0x1, NULL },
    { "getAvatar", NULL, "Lim.actor.model.api.Avatar;", 0x1, NULL },
    { "getContacts", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getUserState", NULL, "Lim.actor.model.api.UserState;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "I", NULL,  },
    { "accessHash_", NULL, 0x2, "J", NULL,  },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "localName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "sex_", NULL, 0x2, "Lim.actor.model.api.Sex;", NULL,  },
    { "keyHashes_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "phone_", NULL, 0x2, "J", NULL,  },
    { "avatar_", NULL, 0x2, "Lim.actor.model.api.Avatar;", NULL,  },
    { "contacts_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "userState_", NULL, 0x2, "Lim.actor.model.api.UserState;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUser = { 1, "User", "im.actor.model.api", NULL, 0x1, 14, methods, 10, fields, 0, NULL};
  return &_ImActorModelApiUser;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUser)