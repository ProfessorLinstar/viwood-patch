.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "WearableSensingManagerPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableSensingManagerPerUserService"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public final mMaxNumberOfConcurrentConnections:I

.field public final mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

.field public mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

.field public final mSecureChannelLock:Ljava/lang/Object;

.field public final mSecureChannelMap:Ljava/util/Map;

.field public mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$B3jMR-K2riKQ_EJvprMyZE51n3w(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Blq_rVHlvU0wp6gY3n797gYVMqo(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannelLock(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureChannelMap(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monValidatedByHotwordDetectionService(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onValidatedByHotwordDetectionService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->stopActiveHotwordAudio()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    .line 98
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00ce

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    :cond_0
    return-void
.end method

.method public static isReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3

    const/4 v0, 0x0

    .line 744
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v1, Landroid/system/OsConstants;->F_GETFL:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v1

    .line 745
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 747
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Error encountered when trying to determine if the parcelFileDescriptor is read-only. Treating it as not read-only"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static notifyStatusCallback(Landroid/os/RemoteCallback;I)V
    .locals 2

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;
    .locals 1

    .line 659
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-object v0
.end method

.method public final createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;
    .locals 2

    .line 634
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public destroyLocked()V
    .locals 2

    .line 120
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 125
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz p0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 131
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz p0, :cond_0

    .line 212
    const-string p1, ""

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final ensureVoiceInteractionManagerInternalInitiated()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    .line 145
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 146
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableConnectionCount()I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-le v1, v2, :cond_0

    .line 220
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "mMaxNumberOfConcurrentConnections exceeded. This should not be possible!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 224
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    sub-int/2addr v2, p0

    monitor-exit v0

    return v2

    .line 227
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final synthetic lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 10

    .line 636
    const-string v0, "android.app.wearable.HotwordAudioStreamBundleKey"

    const-class v1, Landroid/service/voice/HotwordAudioStream;

    .line 637
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/voice/HotwordAudioStream;

    if-nez p2, :cond_0

    .line 640
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "No hotword audio stream received, unable to process hotword."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 645
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 646
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 647
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v5

    .line 648
    invoke-virtual {p2}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 650
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v8

    .line 651
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    move-result-object v9

    move-object v7, p1

    .line 645
    invoke-virtual/range {v3 .. v9}, Landroid/service/voice/VoiceInteractionManagerInternal;->startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    throw p0
.end method

.method public final synthetic lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 2

    .line 406
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    .line 410
    :cond_0
    invoke-virtual {p2, p3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 187
    const-string v0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 189
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service %s requires %s permission. Found %s permission"

    .line 194
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 192
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    .line 200
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .locals 13

    move-object/from16 v1, p4

    .line 309
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onProvideConcurrentConnection in per user service."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    .line 312
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 313
    invoke-static {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 315
    monitor-exit v2

    return v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 317
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v3

    .line 324
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    const/4 v6, 0x1

    if-lt v2, v5, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 327
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x9

    if-eqz v2, :cond_2

    .line 329
    const-string p0, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {v1, v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return v4

    .line 340
    :cond_2
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 342
    invoke-virtual {p0, v1, v12}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;

    move-result-object v11

    .line 347
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/CompanionDeviceManager;

    new-instance v7, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;

    move-object v8, p0

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    .line 346
    invoke-static {v5, p1, v7}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 379
    iget-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter p2

    .line 380
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iget v7, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-lt v5, v7, :cond_3

    goto :goto_1

    .line 383
    :cond_3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v2

    .line 385
    :goto_1
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_4

    .line 387
    const-string p0, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v1, v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 396
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    return v4

    :cond_4
    return v12

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 385
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 375
    sget-object p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create the secure channel."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 376
    invoke-static {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return v4

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 327
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 317
    :goto_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 4

    .line 238
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onProvideConnection in per user service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 243
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 245
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 247
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p2

    .line 248
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 254
    :cond_1
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    new-instance v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    invoke-direct {v3, p0, p2, p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 257
    invoke-static {v2, p1, v3}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 292
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 294
    :try_start_3
    sget-object p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create the secure channel."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 295
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 297
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 248
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 477
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProvideDataStream in per user service. Is data stream read-only? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    const-string p0, "Detection service is not available at this moment."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 484
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 486
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 488
    :cond_0
    const-string v2, "calling over to remote servvice."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 490
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 492
    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p0

    .line 490
    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 494
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 453
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 459
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 461
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 463
    :cond_0
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 465
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 467
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 454
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided ParcelFileDescriptor is not read-only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 503
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    if-eqz p2, :cond_1

    .line 508
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 510
    :cond_1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 511
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 8

    .line 531
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 534
    invoke-static {p5, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 536
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 539
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wearable/RemoteWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 545
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 580
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 583
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureVoiceInteractionManagerInternalInitiated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Voice interaction manager is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 592
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 592
    invoke-virtual {v1, p0, p2}, Lcom/android/server/wearable/RemoteWearableSensingService;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 594
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Detection service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 602
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 604
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 607
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 608
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 565
    invoke-static {p4, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 567
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 570
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 572
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onValidatedByHotwordDetectionService()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 618
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->onValidatedByHotwordDetectionService()V

    .line 619
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAllConnections()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 441
    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 439
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeConnection(I)Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 425
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setUpServiceIfNeeded()Z
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 173
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1

    .line 175
    :catch_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException while setting up service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final stopActiveHotwordAudio()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 629
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopActiveHotwordAudio()V

    .line 630
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;
    .locals 2

    .line 404
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public final wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 687
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Cannot create WearableSensingCallback because mComponentName is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 690
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 692
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 691
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 693
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Caller does not belong to the package that provides the WearableSensingService implementation. Do not forward WearableSensingCallback to WearableSensingService."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 700
    :cond_2
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;)V

    return-object v0
.end method
