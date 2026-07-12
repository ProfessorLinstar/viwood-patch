.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSerializer.java"


# direct methods
.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .locals 3

    .line 73
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, v0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "keyChainSnapshot"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-static {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainSnapshotProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 80
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-static {p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 82
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-static {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeys(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 83
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static writeApplicationKeyProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "keyMaterial"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 103
    const-string v0, "keyMetadata"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method public static writeApplicationKeys(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 4

    .line 90
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 92
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeyProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V

    .line 94
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 96
    :cond_0
    sget-object p1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyChainProtectionParams(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 4

    .line 109
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 111
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParamsProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V

    .line 113
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyChainProtectionParamsProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    move-result v0

    int-to-long v0, v0

    .line 121
    const-string/jumbo v2, "userSecretType"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 124
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    move-result v0

    int-to-long v0, v0

    .line 123
    const-string v2, "lockScreenUiType"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 129
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParams(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    return-void
.end method

.method public static writeKeyChainSnapshotProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    move-result v0

    int-to-long v0, v0

    .line 154
    const-string/jumbo v2, "snapshotVersion"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 156
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "maxAttempts"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 157
    const-string v0, "counterId"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 158
    const-string/jumbo v0, "recoveryKeyMaterial"

    .line 159
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    move-result-object v1

    .line 158
    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 160
    const-string/jumbo v0, "serverParams"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 161
    const-string/jumbo v0, "thmCertPath"

    .line 162
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    .line 161
    invoke-static {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V

    return-void
.end method

.method public static writeKeyDerivationParams(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 2

    .line 135
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParamsProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 138
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeKeyDerivationParamsProperties(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "algorithm"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 145
    const-string/jumbo v0, "salt"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 147
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    move-result p1

    int-to-long v0, p1

    .line 146
    const-string/jumbo p1, "memoryDifficulty"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    return-void
.end method

.method public static writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 1

    .line 168
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V
    .locals 1

    .line 195
    const-string v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method public static writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[B)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 188
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
