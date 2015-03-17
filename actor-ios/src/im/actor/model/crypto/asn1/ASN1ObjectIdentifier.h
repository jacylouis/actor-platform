//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/asn1/ASN1ObjectIdentifier.java
//

#ifndef _BCASN1ObjectIdentifier_H_
#define _BCASN1ObjectIdentifier_H_

@class BSDataInput;
@class BSDataOutput;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"

@interface BCASN1ObjectIdentifier : BCASN1Primitive {
}

+ (BCASN1ObjectIdentifier *)readObjectIdentifierWithBSDataInput:(BSDataInput *)dataInput;

- (instancetype)initWithNSString:(NSString *)identifier;

- (NSString *)getIdentifier;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(BCASN1ObjectIdentifier)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT BCASN1ObjectIdentifier *BCASN1ObjectIdentifier_readObjectIdentifierWithBSDataInput_(BSDataInput *dataInput);
CF_EXTERN_C_END

typedef BCASN1ObjectIdentifier ImActorModelCryptoAsn1ASN1ObjectIdentifier;

J2OBJC_TYPE_LITERAL_HEADER(BCASN1ObjectIdentifier)

#endif // _BCASN1ObjectIdentifier_H_