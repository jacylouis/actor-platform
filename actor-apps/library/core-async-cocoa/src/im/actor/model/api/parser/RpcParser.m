//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/parser/RpcParser.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/base/FatSeqUpdate.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/base/SeqUpdateTooLong.h"
#include "im/actor/model/api/base/WeakUpdate.h"
#include "im/actor/model/api/parser/RpcParser.h"
#include "im/actor/model/api/rpc/RequestAddContact.h"
#include "im/actor/model/api/rpc/RequestClearChat.h"
#include "im/actor/model/api/rpc/RequestCommitFileUpload.h"
#include "im/actor/model/api/rpc/RequestCreateGroup.h"
#include "im/actor/model/api/rpc/RequestDeleteChat.h"
#include "im/actor/model/api/rpc/RequestDeleteMessage.h"
#include "im/actor/model/api/rpc/RequestDisableInterests.h"
#include "im/actor/model/api/rpc/RequestEditAvatar.h"
#include "im/actor/model/api/rpc/RequestEditGroupAvatar.h"
#include "im/actor/model/api/rpc/RequestEditGroupTitle.h"
#include "im/actor/model/api/rpc/RequestEditName.h"
#include "im/actor/model/api/rpc/RequestEditParameter.h"
#include "im/actor/model/api/rpc/RequestEditUserLocalName.h"
#include "im/actor/model/api/rpc/RequestEnableInterests.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "im/actor/model/api/rpc/RequestGetAvailableInterests.h"
#include "im/actor/model/api/rpc/RequestGetContacts.h"
#include "im/actor/model/api/rpc/RequestGetDifference.h"
#include "im/actor/model/api/rpc/RequestGetFileUploadPartUrl.h"
#include "im/actor/model/api/rpc/RequestGetFileUploadUrl.h"
#include "im/actor/model/api/rpc/RequestGetFileUrl.h"
#include "im/actor/model/api/rpc/RequestGetGroupInviteUrl.h"
#include "im/actor/model/api/rpc/RequestGetIntegrationToken.h"
#include "im/actor/model/api/rpc/RequestGetParameters.h"
#include "im/actor/model/api/rpc/RequestGetState.h"
#include "im/actor/model/api/rpc/RequestGetVoxUser.h"
#include "im/actor/model/api/rpc/RequestImportContacts.h"
#include "im/actor/model/api/rpc/RequestInitLlectro.h"
#include "im/actor/model/api/rpc/RequestInitVoxSupport.h"
#include "im/actor/model/api/rpc/RequestInviteUser.h"
#include "im/actor/model/api/rpc/RequestJoinGroup.h"
#include "im/actor/model/api/rpc/RequestKickUser.h"
#include "im/actor/model/api/rpc/RequestLeaveGroup.h"
#include "im/actor/model/api/rpc/RequestLoadDialogs.h"
#include "im/actor/model/api/rpc/RequestLoadHistory.h"
#include "im/actor/model/api/rpc/RequestMessageRead.h"
#include "im/actor/model/api/rpc/RequestMessageReceived.h"
#include "im/actor/model/api/rpc/RequestNotifyAdView.h"
#include "im/actor/model/api/rpc/RequestRegisterApplePush.h"
#include "im/actor/model/api/rpc/RequestRegisterGooglePush.h"
#include "im/actor/model/api/rpc/RequestRemoveAvatar.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/api/rpc/RequestRemoveGroupAvatar.h"
#include "im/actor/model/api/rpc/RequestRevokeIntegrationToken.h"
#include "im/actor/model/api/rpc/RequestRevokeInviteUrl.h"
#include "im/actor/model/api/rpc/RequestSearchContacts.h"
#include "im/actor/model/api/rpc/RequestSendAuthCall.h"
#include "im/actor/model/api/rpc/RequestSendAuthCode.h"
#include "im/actor/model/api/rpc/RequestSendMessage.h"
#include "im/actor/model/api/rpc/RequestSetOnline.h"
#include "im/actor/model/api/rpc/RequestSignIn.h"
#include "im/actor/model/api/rpc/RequestSignOut.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/api/rpc/RequestTerminateAllSessions.h"
#include "im/actor/model/api/rpc/RequestTerminateSession.h"
#include "im/actor/model/api/rpc/RequestTyping.h"
#include "im/actor/model/api/rpc/RequestUnregisterPush.h"
#include "im/actor/model/api/rpc/ResponseAuth.h"
#include "im/actor/model/api/rpc/ResponseCommitFileUpload.h"
#include "im/actor/model/api/rpc/ResponseCreateGroup.h"
#include "im/actor/model/api/rpc/ResponseEditAvatar.h"
#include "im/actor/model/api/rpc/ResponseEditGroupAvatar.h"
#include "im/actor/model/api/rpc/ResponseGetAuthSessions.h"
#include "im/actor/model/api/rpc/ResponseGetAvailableInterests.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/api/rpc/ResponseGetDifference.h"
#include "im/actor/model/api/rpc/ResponseGetFileUploadPartUrl.h"
#include "im/actor/model/api/rpc/ResponseGetFileUploadUrl.h"
#include "im/actor/model/api/rpc/ResponseGetFileUrl.h"
#include "im/actor/model/api/rpc/ResponseGetParameters.h"
#include "im/actor/model/api/rpc/ResponseGetVoxUser.h"
#include "im/actor/model/api/rpc/ResponseImportContacts.h"
#include "im/actor/model/api/rpc/ResponseInitVoxSupport.h"
#include "im/actor/model/api/rpc/ResponseIntegrationToken.h"
#include "im/actor/model/api/rpc/ResponseInviteUrl.h"
#include "im/actor/model/api/rpc/ResponseJoinGroup.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/api/rpc/ResponseLoadHistory.h"
#include "im/actor/model/api/rpc/ResponseSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSendAuthCode.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/rpc/ResponseSeqDate.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/network/parser/BaseParser.h"
#include "im/actor/model/network/parser/RpcScope.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiParserRpcParser

- (APRpcScope *)readWithInt:(jint)type
              withByteArray:(IOSByteArray *)payload {
  switch (type) {
    case 1:
    return APRequestSendAuthCode_fromBytesWithByteArray_(payload);
    case 90:
    return APRequestSendAuthCall_fromBytesWithByteArray_(payload);
    case 3:
    return APRequestSignIn_fromBytesWithByteArray_(payload);
    case 4:
    return APRequestSignUp_fromBytesWithByteArray_(payload);
    case 80:
    return APRequestGetAuthSessions_fromBytesWithByteArray_(payload);
    case 82:
    return APRequestTerminateSession_fromBytesWithByteArray_(payload);
    case 83:
    return APRequestTerminateAllSessions_fromBytesWithByteArray_(payload);
    case 84:
    return APRequestSignOut_fromBytesWithByteArray_(payload);
    case 96:
    return APRequestEditUserLocalName_fromBytesWithByteArray_(payload);
    case 53:
    return APRequestEditName_fromBytesWithByteArray_(payload);
    case 31:
    return APRequestEditAvatar_fromBytesWithByteArray_(payload);
    case 91:
    return APRequestRemoveAvatar_fromBytesWithByteArray_(payload);
    case 7:
    return APRequestImportContacts_fromBytesWithByteArray_(payload);
    case 87:
    return APRequestGetContacts_fromBytesWithByteArray_(payload);
    case 89:
    return APRequestRemoveContact_fromBytesWithByteArray_(payload);
    case 114:
    return APRequestAddContact_fromBytesWithByteArray_(payload);
    case 112:
    return APRequestSearchContacts_fromBytesWithByteArray_(payload);
    case 92:
    return APRequestSendMessage_fromBytesWithByteArray_(payload);
    case 55:
    return APRequestMessageReceived_fromBytesWithByteArray_(payload);
    case 57:
    return APRequestMessageRead_fromBytesWithByteArray_(payload);
    case 98:
    return APRequestDeleteMessage_fromBytesWithByteArray_(payload);
    case 99:
    return APRequestClearChat_fromBytesWithByteArray_(payload);
    case 100:
    return APRequestDeleteChat_fromBytesWithByteArray_(payload);
    case 118:
    return APRequestLoadHistory_fromBytesWithByteArray_(payload);
    case 104:
    return APRequestLoadDialogs_fromBytesWithByteArray_(payload);
    case 65:
    return APRequestCreateGroup_fromBytesWithByteArray_(payload);
    case 85:
    return APRequestEditGroupTitle_fromBytesWithByteArray_(payload);
    case 86:
    return APRequestEditGroupAvatar_fromBytesWithByteArray_(payload);
    case 101:
    return APRequestRemoveGroupAvatar_fromBytesWithByteArray_(payload);
    case 69:
    return APRequestInviteUser_fromBytesWithByteArray_(payload);
    case 70:
    return APRequestLeaveGroup_fromBytesWithByteArray_(payload);
    case 71:
    return APRequestKickUser_fromBytesWithByteArray_(payload);
    case 177:
    return APRequestGetGroupInviteUrl_fromBytesWithByteArray_(payload);
    case 179:
    return APRequestRevokeInviteUrl_fromBytesWithByteArray_(payload);
    case 180:
    return APRequestJoinGroup_fromBytesWithByteArray_(payload);
    case 182:
    return APRequestGetIntegrationToken_fromBytesWithByteArray_(payload);
    case 184:
    return APRequestRevokeIntegrationToken_fromBytesWithByteArray_(payload);
    case 27:
    return APRequestTyping_fromBytesWithByteArray_(payload);
    case 29:
    return APRequestSetOnline_fromBytesWithByteArray_(payload);
    case 77:
    return APRequestGetFileUrl_fromBytesWithByteArray_(payload);
    case 97:
    return APRequestGetFileUploadUrl_fromBytesWithByteArray_(payload);
    case 122:
    return APRequestCommitFileUpload_fromBytesWithByteArray_(payload);
    case 142:
    return APRequestGetFileUploadPartUrl_fromBytesWithByteArray_(payload);
    case 130:
    return APRequestInitVoxSupport_fromBytesWithByteArray_(payload);
    case 131:
    return APRequestGetVoxUser_fromBytesWithByteArray_(payload);
    case 163:
    return APRequestInitLlectro_fromBytesWithByteArray_(payload);
    case 152:
    return APRequestGetAvailableInterests_fromBytesWithByteArray_(payload);
    case 157:
    return APRequestEnableInterests_fromBytesWithByteArray_(payload);
    case 158:
    return APRequestDisableInterests_fromBytesWithByteArray_(payload);
    case 162:
    return APRequestNotifyAdView_fromBytesWithByteArray_(payload);
    case 134:
    return APRequestGetParameters_fromBytesWithByteArray_(payload);
    case 128:
    return APRequestEditParameter_fromBytesWithByteArray_(payload);
    case 51:
    return APRequestRegisterGooglePush_fromBytesWithByteArray_(payload);
    case 76:
    return APRequestRegisterApplePush_fromBytesWithByteArray_(payload);
    case 52:
    return APRequestUnregisterPush_fromBytesWithByteArray_(payload);
    case 9:
    return APRequestGetState_fromBytesWithByteArray_(payload);
    case 11:
    return APRequestGetDifference_fromBytesWithByteArray_(payload);
    case 32:
    return APRequestSubscribeToOnline_fromBytesWithByteArray_(payload);
    case 33:
    return APRequestSubscribeFromOnline_fromBytesWithByteArray_(payload);
    case 74:
    return APRequestSubscribeToGroupOnline_fromBytesWithByteArray_(payload);
    case 75:
    return APRequestSubscribeFromGroupOnline_fromBytesWithByteArray_(payload);
    case 2:
    return APResponseSendAuthCode_fromBytesWithByteArray_(payload);
    case 5:
    return APResponseAuth_fromBytesWithByteArray_(payload);
    case 81:
    return APResponseGetAuthSessions_fromBytesWithByteArray_(payload);
    case 103:
    return APResponseEditAvatar_fromBytesWithByteArray_(payload);
    case 8:
    return APResponseImportContacts_fromBytesWithByteArray_(payload);
    case 88:
    return APResponseGetContacts_fromBytesWithByteArray_(payload);
    case 113:
    return APResponseSearchContacts_fromBytesWithByteArray_(payload);
    case 119:
    return APResponseLoadHistory_fromBytesWithByteArray_(payload);
    case 105:
    return APResponseLoadDialogs_fromBytesWithByteArray_(payload);
    case 66:
    return APResponseCreateGroup_fromBytesWithByteArray_(payload);
    case 115:
    return APResponseEditGroupAvatar_fromBytesWithByteArray_(payload);
    case 178:
    return APResponseInviteUrl_fromBytesWithByteArray_(payload);
    case 181:
    return APResponseJoinGroup_fromBytesWithByteArray_(payload);
    case 183:
    return APResponseIntegrationToken_fromBytesWithByteArray_(payload);
    case 78:
    return APResponseGetFileUrl_fromBytesWithByteArray_(payload);
    case 121:
    return APResponseGetFileUploadUrl_fromBytesWithByteArray_(payload);
    case 138:
    return APResponseCommitFileUpload_fromBytesWithByteArray_(payload);
    case 141:
    return APResponseGetFileUploadPartUrl_fromBytesWithByteArray_(payload);
    case 129:
    return APResponseInitVoxSupport_fromBytesWithByteArray_(payload);
    case 132:
    return APResponseGetVoxUser_fromBytesWithByteArray_(payload);
    case 153:
    return APResponseGetAvailableInterests_fromBytesWithByteArray_(payload);
    case 135:
    return APResponseGetParameters_fromBytesWithByteArray_(payload);
    case 12:
    return APResponseGetDifference_fromBytesWithByteArray_(payload);
    case 50:
    return APResponseVoid_fromBytesWithByteArray_(payload);
    case 72:
    return APResponseSeq_fromBytesWithByteArray_(payload);
    case 102:
    return APResponseSeqDate_fromBytesWithByteArray_(payload);
    case 13:
    return ImActorModelApiBaseSeqUpdate_fromBytesWithByteArray_(payload);
    case 73:
    return ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(payload);
    case 26:
    return ImActorModelApiBaseWeakUpdate_fromBytesWithByteArray_(payload);
    case 25:
    return ImActorModelApiBaseSeqUpdateTooLong_fromBytesWithByteArray_(payload);
  }
  @throw new_JavaIoIOException_init();
}

- (instancetype)init {
  ImActorModelApiParserRpcParser_init(self);
  return self;
}

@end

void ImActorModelApiParserRpcParser_init(ImActorModelApiParserRpcParser *self) {
  (void) APBaseParser_init(self);
}

ImActorModelApiParserRpcParser *new_ImActorModelApiParserRpcParser_init() {
  ImActorModelApiParserRpcParser *self = [ImActorModelApiParserRpcParser alloc];
  ImActorModelApiParserRpcParser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiParserRpcParser)