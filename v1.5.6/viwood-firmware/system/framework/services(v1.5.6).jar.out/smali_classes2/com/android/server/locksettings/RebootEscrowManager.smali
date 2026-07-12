.class public Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# static fields
.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"


# instance fields
.field public final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field public final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field public final mKeyGenerationLock:Ljava/lang/Object;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mLoadEscrowDataErrorCode:I

.field public mLoadEscrowDataWithRetry:Z

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field public mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field public mRebootEscrowReady:Z

.field public mRebootEscrowTimedOut:Z

.field public mRebootEscrowWanted:Z

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$Q-CnLr-XKfdjc7iQEyOLjKkHmAI(Lcom/android/server/locksettings/RebootEscrowManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$setRebootEscrowReady$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8WdwaS1Kogx-iVAdeEKFEkwF28(Lcom/android/server/locksettings/RebootEscrowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$loadRebootEscrowDataIfAvailable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hOBfdfn-GwwJRsbr8BMi0NbwkA4(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$scheduleLoadRebootEscrowDataOrFail$3(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odHzlpU08jQ5XJFnb676M8RWte4(Lcom/android/server/locksettings/RebootEscrowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$setLoadEscrowDataErrorCode$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s13DP6Opd_6Aslp-C7d-8wPbeOU(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$loadRebootEscrowDataIfAvailable$2(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLoadEscrowDataWithRetry(Lcom/android/server/locksettings/RebootEscrowManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompareAndSetLoadEscrowDataErrorCode(Lcom/android/server/locksettings/RebootEscrowManager;IILandroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monGetRebootEscrowKeyFailed(Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;ILandroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 1

    .line 414
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v0, p1, p3, p5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 182
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 188
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 420
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 421
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 422
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 423
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 426
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public armRebootEscrowIfNeeded()I
    .locals 8

    .line 891
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 897
    const-string v0, "RebootEscrowManager"

    const-string v1, "Not storing escrow key, RebootEscrowProvider is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x3

    return p0

    .line 902
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    .line 905
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 907
    const-string v0, "RebootEscrowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect reboot escrow provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but the RoR is prepared with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please prepare the RoR again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x4

    return p0

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 916
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 917
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 920
    const-string v0, "RebootEscrowManager"

    const-string v1, "Escrow key is null, but escrow was marked as ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x5

    return p0

    .line 926
    :cond_3
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_4

    .line 928
    const-string v0, "RebootEscrowManager"

    const-string v1, "Failed to get encryption key from keystore."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x6

    return p0

    .line 936
    :cond_4
    invoke-interface {v0, v4, v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p0, 0x7

    return p0

    .line 941
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_armed_count"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 942
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 945
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 947
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_other_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v6, 0x1

    .line 948
    invoke-virtual {v4, v6}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    .line 947
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 949
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_provider"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 950
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v5

    :catchall_0
    move-exception p0

    .line 917
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public callToRebootEscrowIfNeeded(IB[B)V
    .locals 3

    .line 809
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v0, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_1

    .line 814
    const-string p0, "Not storing escrow data, RebootEscrowProvider is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v0

    if-nez v0, :cond_2

    .line 820
    const-string p0, "Could not generate escrow key"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 824
    :cond_2
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->generateKeyStoreEncryptionKeyIfNeeded()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_3

    .line 826
    const-string p0, "Failed to generate encryption key from keystore."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 832
    :cond_3
    :try_start_0
    invoke-static {v0, p2, p3, v2}, Lcom/android/server/locksettings/RebootEscrowData;->fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getBlob()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrow(I[B)V

    .line 841
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V

    const/4 p1, 0x1

    .line 843
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 835
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 836
    const-string p0, "Could not escrow reboot data"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final clearMetricsStorage()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 660
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_stored_timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 661
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 662
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 663
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "reboot_escrow_key_provider"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    return-void
.end method

.method public clearRebootEscrow()Z
    .locals 0

    .line 975
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method public final clearRebootEscrowIfNeeded()V
    .locals 3

    const/4 v0, 0x0

    .line 866
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 871
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 872
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 874
    const-string v0, "RebootEscrowManager"

    const-string v1, "RebootEscrowProvider is unavailable for clear request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_0
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 880
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 882
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 883
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 884
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_1

    .line 887
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return-void
.end method

.method public final compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V
    .locals 1

    .line 443
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-ne p1, v0, :cond_0

    .line 444
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1077
    const-string v0, "mRebootEscrowWanted="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1080
    const-string v0, "mRebootEscrowReady="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1083
    const-string v0, "mRebootEscrowListener="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1086
    const-string v0, "mLoadEscrowDataErrorCode="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1092
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    const-string v0, "mPendingRebootEscrowKey is "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1095
    const-string/jumbo v0, "set"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "not set"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1098
    const-string/jumbo v0, "null"

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RebootEscrowProvider type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1102
    const-string v0, "Event log:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1104
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1105
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1106
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    .line 1092
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    .line 849
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 854
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    :try_start_2
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 861
    monitor-exit v0

    return-object v1

    .line 856
    :catch_0
    const-string p0, "RebootEscrowManager"

    const-string v1, "Could not generate reboot escrow key"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 862
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;Landroid/os/Handler;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4

    .line 759
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 760
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 762
    const-string p1, "RebootEscrowManager"

    const-string v0, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-object v1

    .line 770
    :cond_0
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x7

    .line 772
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-object v1

    .line 777
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 779
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    :cond_2
    return-object p1
.end method

.method public final getUsersToUnlock(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 460
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v0

    const-string v2, "RebootEscrowManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const-string p0, "No reboot escrow data found for system user"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 465
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 467
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 468
    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No reboot escrow data found for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 477
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v4}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 481
    :cond_4
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 484
    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 483
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 487
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public final getVbmetaDigestStatusOnRestoreComplete()I
    .locals 5

    .line 667
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_vbmeta_digest"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 670
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 674
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 675
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v4

    .line 684
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 687
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v4
.end method

.method public final synthetic lambda$loadRebootEscrowDataIfAvailable$1()V
    .locals 1

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    return-void
.end method

.method public final synthetic lambda$loadRebootEscrowDataIfAvailable$2(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataOnInternet(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$scheduleLoadRebootEscrowDataOrFail$3(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 535
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$setLoadEscrowDataErrorCode$0(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-void
.end method

.method public final synthetic lambda$setRebootEscrowReady$4(Z)V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-interface {p0, p1}, Lcom/android/internal/widget/RebootEscrowListener;->onPreparedForReboot(Z)V

    return-void
.end method

.method public loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->getUsersToUnlock(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 496
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    const-string p1, "RebootEscrowManager"

    const-string v0, "No reboot escrow data found for users, skipping loading escrow data"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    return-void

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 506
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 507
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLockTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;)V

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 516
    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    move-result v4

    int-to-long v4, v4

    .line 511
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 518
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadRebootEscrowDataOnInternet(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void

    .line 562
    :cond_0
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager$1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 599
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->requestNetworkWithInternet(Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 5

    .line 614
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 615
    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_0

    .line 616
    const-string v2, "Failed to load the key for resume on reboot from key store."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    .line 621
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;Landroid/os/Handler;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 630
    iget p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez p4, :cond_2

    .line 632
    iget-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result p4

    .line 635
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_provider"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    if-eq p4, v0, :cond_1

    const/4 p4, 0x6

    .line 636
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    .line 638
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_2
    :goto_0
    add-int/2addr p2, v2

    .line 641
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void

    .line 645
    :cond_3
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p3, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 648
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 649
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v4

    and-int/2addr p4, v4

    goto :goto_1

    :cond_4
    if-nez p4, :cond_5

    const/4 p3, 0x5

    .line 653
    invoke-virtual {p0, v3, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    :cond_5
    add-int/2addr p2, v2

    .line 655
    invoke-virtual {p0, p4, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void

    :catch_0
    move-exception v0

    .line 623
    const-string v3, "Failed to load escrow key, scheduling retry."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/2addr p2, v2

    .line 624
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onEscrowRestoreComplete(ZILandroid/os/Handler;)V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const-string/jumbo v2, "reboot_escrow_armed_count"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-nez p1, :cond_0

    if-eq v0, v3, :cond_1

    const/4 v0, 0x5

    if-gt v1, v0, :cond_1

    .line 740
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V

    .line 743
    :cond_1
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->clearKeyStoreEncryptionKey()V

    .line 745
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 746
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 748
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_2

    .line 749
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->stopRequestingNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 752
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_3

    .line 753
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void
.end method

.method public final onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V
    .locals 2

    .line 450
    const-string v0, "RebootEscrowManager"

    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 452
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void
.end method

.method public prepareRebootEscrow()Z
    .locals 2

    .line 963
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 964
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 965
    const-string p0, "RebootEscrowManager"

    const-string v0, "No reboot escrow provider, skipping resume on reboot preparation."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 969
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 970
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v0
.end method

.method public final reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V
    .locals 11

    .line 697
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    const-wide/16 v3, -0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v4, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 704
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v3

    if-eqz v0, :cond_1

    cmp-long v0, v8, v6

    if-lez v0, :cond_1

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 706
    div-int/lit16 v0, v0, 0x3e8

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 709
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->getVbmetaDigestStatusOnRestoreComplete()I

    move-result v8

    if-nez p1, :cond_2

    .line 711
    invoke-virtual {p0, v10, v1, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    .line 714
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting RoR recovery metrics, success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", service type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const/4 v9, -0x1

    move v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->reportMetric(ZIIIIII)V

    .line 732
    invoke-virtual {p0, v10, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    return-void
.end method

.method public final restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 4

    .line 786
    const-string v0, "RebootEscrowManager"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 791
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrow(I)[B

    move-result-object v1

    .line 792
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 794
    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2

    .line 796
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSpVersion()B

    move-result v1

    .line 797
    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSyntheticPassword()[B

    move-result-object p2

    .line 796
    invoke-interface {p3, v1, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->onRebootEscrowRestored(B[BI)V

    .line 798
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Restored reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 802
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not load reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 8

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryLimit()I

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryIntervalSeconds()I

    move-result v1

    .line 533
    const-string v2, "RebootEscrowManager"

    if-ge p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling loadRebootEscrowData retry number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long p0, v1

    invoke-virtual {v0, v4, v2, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 541
    iget-boolean p0, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 542
    const-string p0, "Failed to load reboot escrow data within timeout"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    .line 543
    invoke-virtual {v3, p1, p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    goto :goto_0

    .line 545
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load reboot escrow data after "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " attempts"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 546
    invoke-virtual {v3, p1, p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(IILandroid/os/Handler;)V

    .line 549
    :goto_0
    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void
.end method

.method public final setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v1, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;I)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    return-void
.end method

.method public final setRebootEscrowReady(Z)V
    .locals 2

    .line 956
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 959
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    return-void
.end method
