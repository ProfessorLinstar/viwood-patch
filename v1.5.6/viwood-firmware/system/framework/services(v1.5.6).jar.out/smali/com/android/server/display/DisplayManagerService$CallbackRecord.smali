.class public final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# instance fields
.field public mAlive:Z

.field public mCached:Z

.field public final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public mFrozen:Z

.field public mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPackageName:Ljava/lang/String;

.field public mPendingDisplayEvents:Ljava/util/ArrayList;

.field public mPendingTopology:Landroid/hardware/display/DisplayTopology;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .locals 0

    .line 4240
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4241
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4242
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 4243
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 4244
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 4245
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4246
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    const/4 p5, 0x1

    .line 4247
    iput-boolean p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4249
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 4251
    :try_start_0
    invoke-interface {p4}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-interface {p4, p0}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4260
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4257
    :catch_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FrozenStateChangeCallback not supported for pid "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "DisplayManagerService"

    invoke-static {p5, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 4265
    :cond_1
    aget-object p1, p1, p2

    :goto_1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addDisplayEvent(II)V
    .locals 2

    .line 4470
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    .line 4473
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4476
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4477
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 4478
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore redundant display event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 4485
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;-><init>(IILcom/android/server/display/DisplayManagerService-IA;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public binderDied()V
    .locals 4

    .line 4333
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4334
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4336
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4337
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display listener for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/32 v0, 0x20000

    .line 4339
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayManagerBinderDied#mPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4343
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4335
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dispatchPending()Z
    .locals 9

    .line 4546
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4547
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4548
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 4550
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 4551
    monitor-exit v0

    return v3

    .line 4554
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4555
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4556
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4557
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 4560
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4561
    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    move v0, v3

    .line 4565
    :goto_1
    :try_start_1
    array-length v4, v1

    if-ge v0, v4, :cond_5

    .line 4566
    aget-object v4, v1, v0

    .line 4567
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4568
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send pending display event #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    .line 4573
    :cond_3
    :goto_2
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 4577
    :cond_4
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_7

    .line 4582
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4583
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send pending topology: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, v5}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 4591
    :goto_4
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", assuming it died."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    return v3

    :cond_7
    :goto_5
    return v2

    .line 4562
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dump()Ljava/lang/String;
    .locals 10

    .line 4600
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4604
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v1

    .line 4605
    :try_start_0
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s cached=%s frozen=%s pendingDisplayEvents=%d pendingTopology=%b"

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 4607
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz p0, :cond_1

    const/4 v8, 0x1

    .line 4608
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v8, v2

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 4605
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 4609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4613
    :cond_2
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s"

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4613
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasPendingAndIsReadyLocked()Z
    .locals 5

    .line 4298
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4299
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4300
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4301
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final isReadyLocked()Z
    .locals 1

    .line 4290
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDisplayEventAsync(II)Z
    .locals 4

    .line 4360
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendDisplayEvent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4361
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4362
    const-string p1, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not sending displayEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to mask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v2, 0x20000

    .line 4366
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyDisplayEventAsync#notSendingEvent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mInternalEventFlagsMask="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_1
    return v1

    .line 4375
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4376
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 4383
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4389
    :cond_3
    monitor-exit v0

    goto :goto_2

    .line 4386
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->addDisplayEvent(II)V

    .line 4387
    monitor-exit v0

    return v1

    .line 4389
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4392
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 4398
    :cond_6
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 4401
    const-string p2, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that displays changed, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4403
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    const/4 p0, 0x0

    return p0
.end method

.method public notifyTopologyUpdateAsync(Landroid/hardware/display/DisplayTopology;)Z
    .locals 5

    .line 4494
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4496
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4497
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not sending topology update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v2, 0x20000

    .line 4500
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTopologyUpdateAsync#notSendingUpdate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mInternalEventFlagsMask="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_1
    return v1

    .line 4509
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$smdeferDisplayEventsWhenFrozen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4510
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4514
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4515
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4517
    :cond_3
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4520
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z

    move-result p0

    return p0
.end method

.method public onFrozenStateChanged(Landroid/os/IBinder;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4348
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setFrozen(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4349
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4350
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public setCached(Z)Z
    .locals 1

    .line 4322
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4323
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4324
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setFrozen(Z)Z
    .locals 1

    .line 4310
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4311
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    .line 4312
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldReceiveRefreshRateWithChangeUpdate(I)Z
    .locals 2

    .line 4269
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefreshRateEventForForegroundAppsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4272
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    .line 4274
    invoke-static {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p1

    .line 4275
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmMaxImportanceForRRCallbacks(Lcom/android/server/display/DisplayManagerService;)I

    move-result v0

    if-le p1, v0, :cond_1

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    const/16 p1, 0x3e8

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final shouldSendDisplayEvent(I)Z
    .locals 7

    .line 4424
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown display event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_0
    const-wide/16 v5, 0x200

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return v4

    :cond_0
    return p0

    :pswitch_1
    const-wide/16 v5, 0x80

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return p0

    :pswitch_2
    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    return v4

    :cond_2
    return p0

    :pswitch_3
    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    return v4

    :cond_3
    return p0

    :pswitch_4
    const-wide/16 v5, 0x10

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return p0

    :pswitch_5
    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    return v4

    :cond_5
    return p0

    :pswitch_6
    const-wide/16 v5, 0x4

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    return v4

    :cond_6
    return p0

    :pswitch_7
    const-wide/16 v5, 0x2

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    return v4

    :cond_7
    return p0

    :pswitch_8
    const-wide/16 v5, 0x1

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    return v4

    :cond_8
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final transmitDisplayEvent(II)V
    .locals 0

    .line 4417
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    return-void
.end method

.method public final transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z
    .locals 2

    .line 4530
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 4533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that display topology changed, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4535
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    const/4 p0, 0x0

    return p0
.end method

.method public updateEventFlagsMask(J)V
    .locals 0

    .line 4282
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
