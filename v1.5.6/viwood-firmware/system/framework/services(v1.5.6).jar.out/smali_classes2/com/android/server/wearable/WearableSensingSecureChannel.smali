.class public final Lcom/android/server/wearable/WearableSensingSecureChannel;
.super Ljava/lang/Object;
.source "WearableSensingSecureChannel.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableSensingSecureChannel"


# instance fields
.field public mAssociationId:Ljava/lang/Integer;

.field public mClosed:Z

.field public final mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field public final mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mLocalIn:Ljava/io/InputStream;

.field public final mLocalOut:Ljava/io/OutputStream;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

.field public final mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

.field public final mOnTransportsChangedListener:Ljava/util/function/Consumer;

.field public final mRemoteFd:Landroid/os/ParcelFileDescriptor;

.field public final mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

.field public final mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$559WS3gaiFnRFy3miioUQSPcA9g(Lcom/android/server/wearable/WearableSensingSecureChannel;I[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onMessageReceived(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$YrHIBGaUY5-Cvpo8dku47unJd88(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->lambda$onTransportAvailable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hH2G6TouiROpvJ_1ufD97vY6Zu0(Lcom/android/server/wearable/WearableSensingSecureChannel;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onTransportsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQ04zdXFJOXafuHjYL6IU1ngmm8(Lcom/android/server/wearable/WearableSensingSecureChannel;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->lambda$onTransportsChanged$0(Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAssociationCreated(Lcom/android/server/wearable/WearableSensingSecureChannel;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onAssociationCreated(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 86
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 88
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    .line 96
    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    .line 103
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 143
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 144
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    .line 145
    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    .line 146
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    .line 147
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    .line 148
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .locals 7

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/android/server/wearable/WearableSensingSecureChannel;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    const/4 v2, 0x1

    aget-object v6, v0, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingSecureChannel;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 133
    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->initialize()V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 290
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    .line 292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 294
    :cond_0
    sget-object v1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v2, "Closing WearableSensingSecureChannel."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 295
    iput-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    .line 296
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V

    .line 301
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    const v5, 0x43708287

    invoke-virtual {v3, v5, v4}, Landroid/companion/CompanionDeviceManager;->removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    .line 305
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/companion/CompanionDeviceManager;->disassociate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 313
    :try_start_4
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Encountered IOException when closing local input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 318
    :try_start_6
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Encountered IOException when closing local output stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :goto_2
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 321
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 322
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->shutdown()V

    .line 323
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final initialize()V
    .locals 6

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 154
    :try_start_0
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v3, "Requesting CDM association."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v3, Landroid/companion/AssociationRequest$Builder;

    invoke-direct {v3}, Landroid/companion/AssociationRequest$Builder;-><init>()V

    const-string v4, "PlaceholderDisplayNameFromWSM"

    .line 157
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 158
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    const-string v4, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    .line 159
    invoke-virtual {v3, v4}, Landroid/companion/AssociationRequest$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationRequest$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v5, Lcom/android/server/wearable/WearableSensingSecureChannel$1;

    invoke-direct {v5, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$1;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    .line 155
    invoke-virtual {v2, v3, v4, v5}, Landroid/companion/CompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw p0
.end method

.method public final synthetic lambda$onTransportAvailable$1()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x2000

    .line 232
    new-array v1, v1, [B

    .line 235
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 236
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 237
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    sget-object v2, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v4, "Sending message to wearable"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    const v4, 0x43847987

    invoke-virtual {v2, v4, v3, v0}, Landroid/companion/CompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :cond_0
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "Reached EOF when reading from remote stream. Reporting this as an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void

    .line 245
    :catch_0
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "IOException while reading from remote stream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method

.method public final synthetic lambda$onTransportsChanged$0(Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 217
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAssociationCreated(I)V
    .locals 5

    .line 184
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "CDM association created."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    .line 190
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageFromWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnMessageReceivedListener:Ljava/util/function/BiConsumer;

    const v4, 0x43708287

    invoke-virtual {v1, v2, v4, v3}, Landroid/companion/CompanionDeviceManager;->addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLightWeightExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mOnTransportsChangedListener:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2, v3}, Landroid/companion/CompanionDeviceManager;->addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mUnderlyingTransport:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p1, v2, v3, p0}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 201
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onError()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    invoke-interface {v0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onError()V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return-void

    .line 283
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onMessageReceived(I[B)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 260
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v0, "Received message from wearable."

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 263
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 265
    :catch_0
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p2, "IOException when writing to remote stream. Closing the secure channel."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void

    .line 271
    :cond_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p1, "Received CDM message of type MESSAGE_ONEWAY_FROM_WEARABLE, but it is for another association. Ignoring the message."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTransportAvailable()V
    .locals 2

    .line 228
    sget-object v0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v1, "Transport available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mMessageToWearableExecutor:Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;

    new-instance v1, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wearable/WearableSensingSecureChannel$SoftShutdownExecutor;->execute(Ljava/lang/Runnable;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mSecureTransportListener:Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mRemoteFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;->onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onTransportsChanged(Ljava/util/List;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mClosed:Z

    if-eqz v1, :cond_0

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 210
    sget-object p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string p1, "mAssociationId is null when transport changed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onTransportAvailable()V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 220
    iget-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mTransportAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    sget-object p1, Lcom/android/server/wearable/WearableSensingSecureChannel;->TAG:Ljava/lang/String;

    const-string v0, "CDM transport is detached. This is not recoverable."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    :cond_3
    return-void

    .line 213
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
