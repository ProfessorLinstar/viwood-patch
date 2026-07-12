.class public Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.super Ljava/lang/Object;
.source "AndroidKeystoreAttestationVerificationAttributes.java"


# instance fields
.field public mApplicationCertificateDigests:Ljava/util/List;

.field public mApplicationPackageNameVersion:Ljava/util/Map;

.field public mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

.field public mAttestationHardwareBacked:Z

.field public mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public mAttestationVersion:Ljava/lang/Integer;

.field public mDeviceBrand:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDeviceProductName:Ljava/lang/String;

.field public mKeyAllowedForAllApplications:Z

.field public mKeyAuthenticatorType:Ljava/lang/Integer;

.field public mKeyBootPatchLevel:Ljava/lang/Integer;

.field public mKeyOsPatchLevel:Ljava/lang/Integer;

.field public mKeyOsVersion:Ljava/lang/Integer;

.field public mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

.field public mKeyVendorPatchLevel:Ljava/lang/Integer;

.field public mKeymasterHardwareBacked:Z

.field public mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

.field public mKeymasterVersion:Ljava/lang/Integer;

.field public mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

.field public mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

.field public mVerifiedBootLocked:Ljava/lang/Boolean;

.field public mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 10

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 106
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 108
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 109
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 111
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 112
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    .line 113
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    .line 117
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    .line 118
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 119
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 120
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 121
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 122
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    .line 123
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    .line 124
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 125
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 126
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 127
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 128
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    .line 286
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 287
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p1, :cond_b

    .line 296
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 299
    sget-object v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    const/4 v2, 0x4

    .line 302
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x2

    .line 304
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 303
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    const/4 v4, 0x5

    .line 306
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 305
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x3

    .line 308
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 307
    invoke-virtual {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v5, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 309
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    const/4 v3, 0x6

    .line 313
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 314
    array-length v5, v3

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    .line 315
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 316
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    const/16 v9, 0x1fd

    if-eq v8, v9, :cond_3

    const/16 v9, 0x2c5

    if-eq v8, v9, :cond_2

    goto :goto_3

    .line 319
    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    .line 318
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->parseAttestationApplicationId([B)V

    goto :goto_3

    .line 322
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x7

    .line 330
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 331
    array-length v3, p1

    move v5, v1

    :goto_4
    if-ge v5, v3, :cond_a

    aget-object v6, p1, v5

    .line 332
    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 333
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/16 v8, 0x1f7

    if-eq v7, v8, :cond_8

    const/16 v8, 0x258

    if-eq v7, v8, :cond_7

    const/16 v8, 0x2ce

    if-eq v7, v8, :cond_6

    const/16 v8, 0x2cf

    if-eq v7, v8, :cond_5

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_5

    .line 369
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    goto/16 :goto_5

    .line 366
    :pswitch_1
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    goto/16 :goto_5

    .line 363
    :pswitch_2
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    goto/16 :goto_5

    .line 360
    :pswitch_3
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    goto :goto_5

    .line 357
    :pswitch_4
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    goto :goto_5

    .line 341
    :pswitch_5
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 343
    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 345
    invoke-virtual {v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 348
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 347
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 350
    iget-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v4, :cond_9

    .line 353
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 352
    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    goto :goto_5

    .line 375
    :cond_5
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    goto :goto_5

    .line 372
    :cond_6
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    goto :goto_5

    .line 338
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    goto :goto_5

    .line 335
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_a
    return-void

    .line 292
    :cond_b
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string p1, "No attestation extension found in certificate."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    invoke-direct {v0, p0}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationPackageNameVersion()Ljava/util/Map;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method public getAttestationVersion()I
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;
    .locals 0

    .line 464
    instance-of p0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz p0, :cond_0

    .line 465
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 0

    .line 459
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    return p0
.end method

.method public final getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 0

    .line 449
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    return p0
.end method

.method public getKeyBootPatchLevel()I
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 219
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyBootPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyOsPatchLevel()I
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyOsPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyOsVersion()I
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 240
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyOsVersion is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyVendorPatchLevel()I
    .locals 1

    .line 232
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyVendorPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeymasterVersion()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J
    .locals 0

    .line 454
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;
    .locals 0

    .line 439
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 431
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid security level."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 429
    :cond_1
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0

    .line 427
    :cond_2
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0
.end method

.method public final getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 1

    .line 444
    new-instance p0, Ljava/lang/String;

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public final getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    .line 417
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 419
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid verified boot state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_1
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 413
    :cond_2
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 411
    :cond_3
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public isAttestationHardwareBacked()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    return p0
.end method

.method public isKeymasterHardwareBacked()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    return p0
.end method

.method public isVerifiedBootLocked()Z
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VerifiedBootLocked is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseAttestationApplicationId([B)V
    .locals 8

    .line 385
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 385
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 389
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    .line 390
    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 393
    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 392
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 391
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 400
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 403
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    return-void
.end method
