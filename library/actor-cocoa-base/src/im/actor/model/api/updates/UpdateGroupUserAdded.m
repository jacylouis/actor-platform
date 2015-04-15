//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupUserAdded.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupUserAdded.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupUserAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupUserAdded () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jint inviterUid_;
  jlong date_;
}
@end


#line 20
@implementation ImActorModelApiUpdatesUpdateGroupUserAdded


#line 23
+ (ImActorModelApiUpdatesUpdateGroupUserAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  if (self = [super init]) {
    
#line 34
    self->groupId_ = groupId;
    
#line 35
    self->rid_ = rid;
    
#line 36
    self->uid_ = uid;
    
#line 37
    self->inviterUid_ = inviterUid;
    
#line 38
    self->date_ = date;
  }
  return self;
}


#line 41
- (instancetype)init {
  return [super init];
}

- (jint)getGroupId {
  
#line 46
  return self->groupId_;
}


#line 49
- (jlong)getRid {
  
#line 50
  return self->rid_;
}


#line 53
- (jint)getUid {
  
#line 54
  return self->uid_;
}


#line 57
- (jint)getInviterUid {
  
#line 58
  return self->inviterUid_;
}


#line 61
- (jlong)getDate {
  
#line 62
  return self->date_;
}


#line 66
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->inviterUid_ = [values getIntWithInt:3];
  self->date_ = [values getLongWithInt:4];
}


#line 75
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 76
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeIntWithInt:3 withInt:self->inviterUid_];
  [writer writeLongWithInt:4 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update GroupUserAdded{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", inviterUid=", self->inviterUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 97
  return ImActorModelApiUpdatesUpdateGroupUserAdded_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateGroupUserAdded *)other {
  [super copyAllFieldsTo:other];
  other->groupId_ = groupId_;
  other->rid_ = rid_;
  other->uid_ = uid_;
  other->inviterUid_ = inviterUid_;
  other->date_ = date_;
}

@end

ImActorModelApiUpdatesUpdateGroupUserAdded *ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupUserAdded_init();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateGroupUserAdded *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateGroupUserAdded alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupUserAdded)