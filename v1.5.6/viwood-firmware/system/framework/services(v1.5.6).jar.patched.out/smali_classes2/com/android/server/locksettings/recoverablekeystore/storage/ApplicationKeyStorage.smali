.class public Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
.super Ljava/lang/Object;
.source "ApplicationKeyStorage.java"


# instance fields
.field public final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    return-void
.end method

.method public static getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .locals 3

    .line 62
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 63
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->getAndLoadAndroidKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;-><init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;)V

    return-object v0
.end method


# virtual methods
.method public deleteEntry(IILjava/lang/String;)V
    .locals 3

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Del %d/%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getGrantAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get %d/%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->makeKeystoreEngineGrantString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInternalAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.android.server.locksettings.recoverablekeystore/application/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeKeystoreEngineGrantString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x0

    .line 129
    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v1, -0x1

    .line 130
    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 131
    iput-object p2, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 132
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 137
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object p0

    const/16 p2, 0x105

    invoke-virtual {p0, v0, p1, p2}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget-wide p0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo p1, "recoverable_key:"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s%016X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result p1

    const/4 p2, 0x6

    const-string v0, "RecoverableAppKeyStore"

    if-ne p1, p2, :cond_1

    .line 141
    const-string p1, "Failed to get grant for KeyStore key - key not found"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1e

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    const-string p1, "Failed to get grant for KeyStore key."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public setSymmetricKeyEntry(IILjava/lang/String;[B)V
    .locals 4

    .line 82
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, p3, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 82
    const-string v2, "Set %d/%d/%s: %d bytes of key material"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableAppKeyStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/security/KeyStore$SecretKeyEntry;

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string p3, "AES"

    invoke-direct {p2, p4, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance p2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string p3, "GCM"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    const-string p3, "NoPadding"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-virtual {p2, p3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p2

    .line 85
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 95
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
