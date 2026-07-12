.class public Lcom/android/server/locksettings/UnifiedProfilePasswordCache;
.super Ljava/lang/Object;
.source "UnifiedProfilePasswordCache.java"


# static fields
.field public static final CACHE_TIMEOUT_SECONDS:I


# instance fields
.field public final mEncryptedPasswords:Landroid/util/SparseArray;

.field public final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 72
    iput-object p1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public static getEncryptionKeyName(I)Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLegacyEncryptionKeyName(I)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removePassword(I)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getLegacyEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    .line 172
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 176
    :goto_1
    :try_start_2
    const-string v2, "UnifiedProfilePasswordCache"

    const-string v3, "Cannot delete key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 180
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 182
    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 140
    :try_start_2
    monitor-exit v0

    return-object v2

    :cond_1
    const/16 p1, 0xc

    .line 142
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 143
    array-length v4, v1

    invoke-static {v1, p1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 147
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 148
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 158
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 159
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p0

    .line 153
    const-string p1, "UnifiedProfilePasswordCache"

    const-string v1, "Cannot decrypt"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    monitor-exit v0

    return-object v2

    .line 150
    :catch_1
    const-string p0, "UnifiedProfilePasswordCache"

    const-string p1, "Device not unlocked for more than 7 days"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-object v2

    :catch_2
    move-exception p0

    .line 136
    const-string p1, "UnifiedProfilePasswordCache"

    const-string v1, "Cannot get key"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    monitor-exit v0

    return-object v2

    .line 160
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    const-string v2, "AES"

    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 92
    invoke-virtual {v3}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 93
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x100

    .line 95
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    sget p4, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 101
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    .line 102
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p3

    .line 93
    invoke-virtual {v2, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    const-string p4, "AES/GCM/NoPadding"

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 112
    invoke-virtual {p4, v3, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 114
    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p3

    .line 115
    filled-new-array {p3, p2}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p2

    .line 116
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    :try_start_3
    const-string p1, "UnifiedProfilePasswordCache"

    const-string p2, "Cannot encrypt"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 105
    const-string p1, "UnifiedProfilePasswordCache"

    const-string p2, "Cannot generate key"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    monitor-exit v0

    :goto_1
    return-void

    .line 120
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
