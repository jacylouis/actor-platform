//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/GroupVM.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/GroupVM.java"

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/ModelChangedListener.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/GroupVM.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"

__attribute__((unused)) static void AMGroupVM_notifyChange(AMGroupVM *self);

@interface AMGroupVM () {
 @public
  jint id__;
  jlong hash__;
  jlong creatorId_;
  AMValueModel *avatar_;
  AMValueModel *name_;
  AMValueModel *isMember__;
  AMValueModel *members_;
  AMValueModel *presence_;
  JavaUtilArrayList *listeners_;
}

- (void)notifyChange;
@end

J2OBJC_FIELD_SETTER(AMGroupVM, avatar_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, name_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, isMember__, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, members_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, presence_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMGroupVM, listeners_, JavaUtilArrayList *)

@interface AMGroupVM_$1 () {
 @public
  AMGroupVM *this$0_;
}
@end

J2OBJC_FIELD_SETTER(AMGroupVM_$1, this$0_, AMGroupVM *)


#line 18
@implementation AMGroupVM


#line 37
- (instancetype)initWithAMGroup:(AMGroup *)rawObj {
  if (self =
#line 38
  [super initWithId:rawObj]) {
    listeners_ =
#line 29
    [[JavaUtilArrayList alloc] init];
    
#line 39
    self->id__ = [((AMGroup *) nil_chk(rawObj)) getGroupId];
    
#line 40
    self->hash__ = [rawObj getAccessHash];
    
#line 41
    self->creatorId_ = [rawObj getAdminId];
    
#line 42
    self->name_ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"group.", id__, @".title") withId:[rawObj getTitle]];
    
#line 43
    self->avatar_ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"group.", id__, @".avatar") withId:[rawObj getAvatar]];
    
#line 44
    self->isMember__ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"group.", id__, @".isMember") withId:JavaLangBoolean_valueOfWithBoolean_([rawObj isMember])];
    
#line 45
    self->members_ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"group.", id__, @".members") withId:[[JavaUtilHashSet alloc] initWithJavaUtilCollection:[rawObj getMembers]]];
    
#line 46
    self->presence_ = [[AMValueModel alloc] initWithNSString:JreStrcat("$I$", @"group.", id__, @".presence") withId:JavaLangInteger_valueOfWithInt_(0)];
  }
  return self;
}


#line 54
- (jint)getId {
  
#line 55
  return id__;
}


#line 63
- (jlong)getHash {
  
#line 64
  return hash__;
}


#line 72
- (jlong)getCreatorId {
  
#line 73
  return creatorId_;
}


#line 81
- (jint)getMembersCount {
  
#line 82
  return [((JavaUtilHashSet *) nil_chk([((AMValueModel *) nil_chk(members_)) get])) size];
}


#line 90
- (AMValueModel *)getName {
  
#line 91
  return name_;
}


#line 99
- (AMValueModel *)getAvatar {
  
#line 100
  return avatar_;
}


#line 108
- (AMValueModel *)isMember {
  
#line 109
  return isMember__;
}


#line 117
- (AMValueModel *)getMembers {
  
#line 118
  return members_;
}


#line 126
- (AMValueModel *)getPresence {
  
#line 127
  return presence_;
}


#line 131
- (void)updateValuesWithId:(AMGroup *)rawObj {
  jboolean isChanged = NO;
  isChanged |= [((AMValueModel *) nil_chk(name_)) changeWithId:[((AMGroup *) nil_chk(rawObj)) getTitle]];
  isChanged |= [((AMValueModel *) nil_chk(avatar_)) changeWithId:[rawObj getAvatar]];
  isChanged |= [((AMValueModel *) nil_chk(isMember__)) changeWithId:JavaLangBoolean_valueOfWithBoolean_([rawObj isMember])];
  isChanged |= [((AMValueModel *) nil_chk(members_)) changeWithId:[[JavaUtilHashSet alloc] initWithJavaUtilCollection:[rawObj getMembers]]];
  
#line 138
  if (isChanged) {
    AMGroupVM_notifyChange(self);
  }
}


#line 149
- (void)subscribeWithAMModelChangedListener:(id<AMModelChangedListener>)listener {
  
#line 150
  AMMVVMEngine_checkMainThread();
  if ([((JavaUtilArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    return;
  }
  [listeners_ addWithId:listener];
  [((id<AMModelChangedListener>) nil_chk(listener)) onChangedWithId:self];
}


#line 164
- (void)unsubscribeWithAMModelChangedListener:(id<AMModelChangedListener>)listener {
  
#line 165
  AMMVVMEngine_checkMainThread();
  [((JavaUtilArrayList *) nil_chk(listeners_)) removeWithId:listener];
}


#line 169
- (void)notifyChange {
  AMGroupVM_notifyChange(self);
}

- (void)copyAllFieldsTo:(AMGroupVM *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->hash__ = hash__;
  other->creatorId_ = creatorId_;
  other->avatar_ = avatar_;
  other->name_ = name_;
  other->isMember__ = isMember__;
  other->members_ = members_;
  other->presence_ = presence_;
  other->listeners_ = listeners_;
}

@end

void AMGroupVM_notifyChange(AMGroupVM *self) {
  
#line 170
  [((id<AMMainThreadProvider>) nil_chk(AMMVVMEngine_getMainThreadProvider())) postToMainThread:[[AMGroupVM_$1 alloc] initWithAMGroupVM:self]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupVM)

@implementation AMGroupVM_$1


#line 172
- (void)run {
  {
    IOSObjectArray *a__ =
#line 173
    [((JavaUtilArrayList *) nil_chk(this$0_->listeners_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:AMModelChangedListener_class_()]];
    id<AMModelChangedListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<AMModelChangedListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<AMModelChangedListener> l = *b__++;
      
#line 174
      [((id<AMModelChangedListener>) nil_chk(l)) onChangedWithId:this$0_];
    }
  }
}

- (instancetype)initWithAMGroupVM:(AMGroupVM *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(AMGroupVM_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroupVM_$1)
