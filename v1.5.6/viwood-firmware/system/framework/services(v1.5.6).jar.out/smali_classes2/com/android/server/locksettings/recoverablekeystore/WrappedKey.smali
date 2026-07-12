.class public Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
.super Ljava/lang/Object;
.source "WrappedKey.java"


# instance fields
.field public final mKeyMaterial:[B

.field public final mKeyMetadata:[B

.field public final mNonce:[B

.field public final mPlatformKeyGenerationId:I

.field public final mRecoveryStatus:I


# direct methods
.method public constructor <init>([B[B[BII)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 139
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 140
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    .line 141
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 142
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return-void
.end method

.method public static fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .locals 9

    .line 67
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    :try_start_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v5
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 101
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    .line 104
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getGenerationId()I

    move-result v7

    const/4 v8, 0x1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 85
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 86
    instance-of p2, p1, Ljava/security/KeyStoreException;

    if-eqz p2, :cond_0

    .line 92
    check-cast p1, Ljava/security/KeyStoreException;

    throw p1

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "IllegalBlockSizeException should not be thrown by AES/GCM/NoPadding mode."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 76
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Android does not support AES/GCM/NoPadding. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key does not expose encoded material. It cannot be wrapped."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;
    .locals 10

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v2

    .line 209
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 211
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    .line 224
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x4

    .line 221
    invoke-virtual {v1, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 228
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v6

    const-string v7, "AES"

    const/4 v8, 0x3

    .line 227
    invoke-virtual {v1, v6, v7, v8}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v5

    .line 230
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Error unwrapping recoverable key with alias \'%s\'"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 231
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 230
    const-string v6, "WrappedKey"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 217
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v4, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 212
    const-string v1, "WrappedKey with alias \'%s\' was wrapped with platform key %d, not platform key %d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getKeyMaterial()[B
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    return-object p0
.end method

.method public getKeyMetadata()[B
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    return-object p0
.end method

.method public getNonce()[B
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    return-object p0
.end method

.method public getPlatformKeyGenerationId()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    return p0
.end method

.method public getRecoveryStatus()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return p0
.end method
