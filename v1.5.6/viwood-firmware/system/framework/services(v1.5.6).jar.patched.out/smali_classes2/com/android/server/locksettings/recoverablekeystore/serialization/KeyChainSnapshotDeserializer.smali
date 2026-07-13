.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotDeserializer.java"


# direct methods
.method public static deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 2

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 82
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Malformed KeyChainSnapshot XML"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 13

    .line 88
    const-string/jumbo v0, "serverParams"

    const-string v1, "counterId"

    const-string/jumbo v2, "snapshotVersion"

    const-string/jumbo v3, "thmCertPath"

    const-string/jumbo v4, "recoveryKeyMaterial"

    const-string/jumbo v5, "maxAttempts"

    const/4 v6, 0x3

    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 91
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "keyChainSnapshot"

    invoke-interface {p0, v8, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v7, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v7}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 94
    :goto_0
    :pswitch_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    if-eq v10, v6, :cond_a

    .line 95
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v8, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x8

    goto :goto_1

    :sswitch_1
    const-string v12, "keyChainProtectionParamsList"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_3
    const-string v12, "applicationKeysList"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    move v11, v6

    goto :goto_1

    :sswitch_6
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    move v11, v8

    goto :goto_1

    :sswitch_7
    const-string v12, "backendPublicKey"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    goto :goto_1

    :sswitch_8
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_1

    :cond_9
    const/4 v11, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 146
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyChainSnapshot"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :pswitch_1
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 138
    :pswitch_2
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParamsList(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 112
    :pswitch_3
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readLongTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 142
    :pswitch_4
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKeys(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 103
    :pswitch_5
    invoke-static {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 126
    :pswitch_6
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readCertPathTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v10

    .line 125
    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 128
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Could not set trustedHardwareCertPath"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :pswitch_7
    invoke-static {p0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v10

    .line 107
    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 120
    :pswitch_8
    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto/16 :goto_0

    .line 151
    :cond_a
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v6, v0, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :try_start_1
    invoke-virtual {v7}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 155
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainSnapshot"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x66841336 -> :sswitch_8
        -0x52c1d0fe -> :sswitch_7
        -0x51ae5e2f -> :sswitch_6
        -0x5190b3fe -> :sswitch_5
        0x1caf9a74 -> :sswitch_4
        0x46f25222 -> :sswitch_3
        0x5099d037 -> :sswitch_2
        0x5f2e61bf -> :sswitch_1
        0x6bb456a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B
    .locals 4

    .line 372
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 374
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 377
    :try_start_0
    invoke-static {v1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 379
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected base64 encoded bytes but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 380
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readCertPathTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 3

    .line 389
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object p0

    .line 391
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 394
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse CertPath in tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .locals 4

    .line 336
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 338
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 342
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected int but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 343
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .locals 8

    .line 230
    const-string/jumbo v0, "userSecretType"

    const-string v1, "lockScreenUiType"

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "keyChainProtectionParams"

    invoke-interface {p0, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v2, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 233
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 234
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v3, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "keyDerivationParams"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 254
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyChainProtectionParams"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyDerivationParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_0

    .line 262
    :cond_4
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v6, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 267
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build KeyChainProtectionParams"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_2
        -0x298abfcb -> :sswitch_1
        0x3662dd9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readKeyChainProtectionParamsList(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5

    .line 214
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "keyChainProtectionParamsList"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 218
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readKeyDerivationParams(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .locals 12

    .line 274
    const-string v0, "algorithm"

    const/4 v1, 0x1

    const-string/jumbo v2, "salt"

    const-string/jumbo v3, "memoryDifficulty"

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "keyDerivationParams"

    invoke-interface {p0, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v7, 0x0

    move v8, v4

    move v9, v8

    .line 280
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    .line 281
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v5, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 287
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_1
    move v11, v4

    goto :goto_2

    :sswitch_0
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    move v11, v5

    goto :goto_2

    :sswitch_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v11, v1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 301
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in keyDerivationParams"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 302
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :pswitch_0
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-static {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_7

    if-eq v8, v1, :cond_6

    if-ne v8, v5, :cond_5

    .line 321
    invoke-static {v7, v9}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    goto :goto_3

    .line 326
    :cond_5
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v0, "Unknown algorithm in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_6
    invoke-static {v7}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    .line 330
    :goto_3
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v11, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 310
    :cond_7
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v0, "salt was not set in keyDerivationParams"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a02fc64 -> :sswitch_2
        0x35c056 -> :sswitch_1
        0xd70b46f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readLongTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J
    .locals 4

    .line 350
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 352
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 356
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s expected long but got \'%s\'"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 357
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readStringTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 364
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 366
    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 402
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 403
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    return-object v0

    .line 406
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static readWrappedApplicationKey(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .locals 9

    .line 175
    const-string v0, "alias"

    const-string v1, "keyMaterial"

    const-string v2, "keyMetadata"

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "applicationKey"

    invoke-interface {p0, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v3, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 177
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 178
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 198
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unexpected tag %s in wrappedApplicationKey"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :pswitch_0
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readStringTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-static {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_0

    .line 202
    :cond_4
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v7, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_0
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 207
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v1, "Failed to build WrappedApplicationKey"

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x660f5152 -> :sswitch_2
        -0x3969675a -> :sswitch_1
        0x5899650 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readWrappedApplicationKeys(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5

    .line 161
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKeysList"

    invoke-interface {p0, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 164
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKey(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
