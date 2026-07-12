.class public final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "RotationResolverManagerPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotationResolverManagerPerUserService"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field public mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;


# direct methods
.method public static synthetic $r8$lambda$m6ZojQSXE2L2OOpyDQ0ZRKjjQWA(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->lambda$resolveRotationLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLatencyTracker(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-nez v0, :cond_0

    .line 164
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v4

    const-wide/32 v5, 0xea60

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IJ)V

    iput-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelLocked()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    return-void
.end method

.method public destroyLocked()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 90
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpInternal(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v1, :cond_0

    .line 231
    const-string v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 233
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz p0, :cond_1

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 236
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 225
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->dumpInternal(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isServiceAvailableLocked()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$resolveRotationLocked$0()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_0

    .line 150
    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to cancel the remote request. Reason: Client cancelled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 153
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 193
    const-string v0, "android.permission.BIND_ROTATION_RESOLVER_SERVICE"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v2, 0x80

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 196
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service %s requires %s permission. Found %s permission"

    .line 200
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 198
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    .line 206
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

.method public resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isServiceAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p3, "Service is not available at this moment."

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 105
    invoke-interface {p1, p0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 106
    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result p0

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p1

    const/4 p2, 0x7

    invoke-static {p0, p1, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 114
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V

    .line 144
    new-instance p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;-><init>(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 147
    new-instance p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 157
    iget-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    iget-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {p1, p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    .line 158
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    return-void

    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
