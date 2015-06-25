//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateUserContactsChanged.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ContactRecord.h"
#include "im/actor/model/api/updates/UpdateUserContactsChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APUpdateUserContactsChanged () {
 @public
  jint uid_;
  id<JavaUtilList> contactRecords_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateUserContactsChanged, contactRecords_, id<JavaUtilList>)

@implementation APUpdateUserContactsChanged

+ (APUpdateUserContactsChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateUserContactsChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid
           withJavaUtilList:(id<JavaUtilList>)contactRecords {
  APUpdateUserContactsChanged_initWithInt_withJavaUtilList_(self, uid, contactRecords);
  return self;
}

- (instancetype)init {
  APUpdateUserContactsChanged_init(self);
  return self;
}

- (jint)getUid {
  return self->uid_;
}

- (id<JavaUtilList>)getContactRecords {
  return self->contactRecords_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  id<JavaUtilList> _contactRecords = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:4]; i++) {
    [_contactRecords addWithId:new_APContactRecord_init()];
  }
  self->contactRecords_ = [values getRepeatedObjWithInt:4 withJavaUtilList:_contactRecords];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeRepeatedObjWithInt:4 withJavaUtilList:self->contactRecords_];
}

- (NSString *)description {
  NSString *res = @"update UserContactsChanged{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"contactRecords=", [((id<JavaUtilList>) nil_chk(self->contactRecords_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateUserContactsChanged_HEADER;
}

@end

APUpdateUserContactsChanged *APUpdateUserContactsChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateUserContactsChanged_initialize();
  return ((APUpdateUserContactsChanged *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateUserContactsChanged_init(), data));
}

void APUpdateUserContactsChanged_initWithInt_withJavaUtilList_(APUpdateUserContactsChanged *self, jint uid, id<JavaUtilList> contactRecords) {
  (void) APUpdate_init(self);
  self->uid_ = uid;
  self->contactRecords_ = contactRecords;
}

APUpdateUserContactsChanged *new_APUpdateUserContactsChanged_initWithInt_withJavaUtilList_(jint uid, id<JavaUtilList> contactRecords) {
  APUpdateUserContactsChanged *self = [APUpdateUserContactsChanged alloc];
  APUpdateUserContactsChanged_initWithInt_withJavaUtilList_(self, uid, contactRecords);
  return self;
}

void APUpdateUserContactsChanged_init(APUpdateUserContactsChanged *self) {
  (void) APUpdate_init(self);
}

APUpdateUserContactsChanged *new_APUpdateUserContactsChanged_init() {
  APUpdateUserContactsChanged *self = [APUpdateUserContactsChanged alloc];
  APUpdateUserContactsChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateUserContactsChanged)