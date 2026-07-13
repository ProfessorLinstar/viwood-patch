.class public Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "TestOnlyInsecureCertificateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesCredentialSupportInsecureMode(I[B)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return p0

    .line 117
    :cond_1
    const-string p1, "INSECURE_PSWD_"

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 119
    array-length v0, p2

    array-length v1, p1

    if-ge v0, v1, :cond_2

    return p0

    :cond_2
    move v0, p0

    .line 122
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 123
    aget-byte v1, p2, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_3

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 86
    :cond_1
    :goto_0
    const-string p0, "TestCertHelper"

    const-string/jumbo p1, "rootCertificateAlias is null or empty - use secure default value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string p0, "GoogleCloudKeyVaultServiceV1"

    return-object p0
.end method

.method public getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 59
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 65
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x1c

    const-string v0, "The provided root certificate alias is invalid"

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getValidationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 77
    new-instance p0, Ljava/util/Date;

    const/4 p1, 0x1

    const/16 v0, 0x1e

    const/16 v1, 0x77

    invoke-direct {p0, v1, p1, v0}, Ljava/util/Date;-><init>(III)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isTestOnlyCertificateAlias(Ljava/lang/String;)Z
    .locals 0

    .line 94
    const-string p0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isValidRootCertificateAlias(Ljava/lang/String;)Z
    .locals 1

    .line 99
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    const-string v2, "INSECURE_KEY_ALIAS_KEY_MATERIAL_IS_NOT_PROTECTED_"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 140
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding key with insecure alias "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to the recovery snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestCertHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object p0
.end method
