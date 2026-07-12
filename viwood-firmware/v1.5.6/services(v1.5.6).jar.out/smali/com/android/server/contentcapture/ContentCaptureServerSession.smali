.class public final Lcom/android/server/contentcapture/ContentCaptureServerSession;
.super Ljava/lang/Object;
.source "ContentCaptureServerSession.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentCaptureServerSession"


# instance fields
.field public final appComponentName:Landroid/content/ComponentName;

.field public final mActivityToken:Landroid/os/IBinder;

.field public final mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

.field public final mId:I

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field public final mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

.field public final mUid:I


# direct methods
.method public static synthetic $r8$lambda$EU9J6gm_m2xpBMPhpaTMVbMo-YE(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/IBinder;Landroid/app/assist/ActivityId;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIIII)V
    .locals 9

    move/from16 v0, p9

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 82
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 83
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    .line 84
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 85
    iput-object p5, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 86
    iput-object p4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 87
    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    move/from16 p1, p10

    .line 88
    iput p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 89
    new-instance v2, Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v3, 0x0

    move-object v7, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p8

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    iput-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 91
    iput-object p6, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 93
    :try_start_0
    invoke-interface {p6}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance p3, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V

    invoke-interface {p1, p3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 95
    :catch_0
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "could not register DeathRecipient for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroyLocked(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(notifyRemoteService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez p1, :cond_1

    .line 181
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string p1, "destroyLocked(): no remote service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_1
    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionFinished(I)V

    :cond_2
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "context: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "has autofill callback: "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public isActivitySession(Landroid/os/IBinder;)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->onClientDeath()V

    return-void
.end method

.method public notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_0

    .line 112
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notifySessionStartedLocked(): no remote service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public final onClientDeath()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientDeath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): removing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 225
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseLocked()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v0, 0x804

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    return-void
.end method

.method public removeSelfLocked(Z)V
    .locals 1

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    .line 163
    throw p1
.end method

.method public resurrectLocked()V
    .locals 7

    .line 193
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_0

    .line 195
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string v0, "destroyLocked(: no remote service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resurrecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    new-instance v2, Landroid/view/contentcapture/ContentCaptureContext;

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;I)V

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v6, 0x1002

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1

    .line 144
    sget-object p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendActivitySnapshotLocked(): no remote service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_1
    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method public setContentCaptureEnabledLocked(Z)V
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-interface {p0, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 129
    sget-object p1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error async reporting result to client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCaptureSession[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
