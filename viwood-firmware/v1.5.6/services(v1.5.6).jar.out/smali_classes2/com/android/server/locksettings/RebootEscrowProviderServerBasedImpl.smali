.class public Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;
.super Ljava/lang/Object;
.source "RebootEscrowProviderServerBasedImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

.field public mServerBlob:[B

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;-><init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 94
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowKey()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    return-void
.end method

.method public getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrowServerBlob()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    .line 140
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    const/4 v1, 0x0

    const-string v2, "RebootEscrowProviderServerBased"

    if-nez v0, :cond_1

    .line 141
    const-string p0, "Failed to read reboot escrow server blob from storage"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    .line 145
    const-string p0, "Failed to decrypt the escrow key; decryption key from keystore is null."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 150
    :cond_2
    const-string v0, "Loaded reboot escrow server blob from storage"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->unwrapServerBlob([BLjavax/crypto/SecretKey;)[B

    move-result-object p0

    if-nez p0, :cond_3

    .line 154
    const-string p0, "Decrypted reboot escrow key bytes should not be null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 156
    :cond_3
    array-length p1, p0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decrypted reboot escrow key has incorrect size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 162
    :cond_4
    invoke-static {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 164
    :goto_0
    const-string p1, "Failed to decrypt the server blob "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasRebootEscrowSupport()Z
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 2

    .line 200
    const-string v0, "RebootEscrowProviderServerBased"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKeyBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->wrapEscrowKey([BLjavax/crypto/SecretKey;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 204
    const-string p0, "Failed to encrypt the reboot escrow key"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrowServerBlob([B)V

    .line 209
    const-string p0, "Reboot escrow key encrypted and stored."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 212
    :goto_0
    const-string p1, "Failed to encrypt the reboot escrow key "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final unwrapServerBlob([BLjavax/crypto/SecretKey;)[B
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    const-string v2, "RebootEscrowProviderServerBased"

    if-nez v0, :cond_0

    .line 111
    const-string p0, "Had reboot escrow data for users, but resume on reboot server service is unavailable"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 117
    :cond_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 119
    const-string p0, "Decrypted server blob should not be null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 126
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 127
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v1

    .line 126
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unwrap([BJ)[B

    move-result-object p0

    .line 128
    invoke-virtual {v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unbindService()V

    return-object p0
.end method

.method public final wrapEscrowKey([BLjavax/crypto/SecretKey;)[B
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object v1

    const/4 v0, 0x0

    .line 177
    const-string v7, "RebootEscrowProviderServerBased"

    if-nez v1, :cond_0

    .line 178
    const-string p0, "Failed to encrypt the reboot escrow key: resume on reboot server service is unavailable"

    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 185
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 186
    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServerBlobLifetimeInMillis()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v5

    move-object v2, p1

    .line 185
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->wrapBlob([BJJ)[B

    move-result-object p0

    .line 187
    invoke-virtual {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unbindService()V

    if-nez p0, :cond_1

    .line 190
    const-string p0, "Server encrypted reboot escrow key cannot be null"

    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 195
    :cond_1
    invoke-static {p2, p0}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0
.end method
