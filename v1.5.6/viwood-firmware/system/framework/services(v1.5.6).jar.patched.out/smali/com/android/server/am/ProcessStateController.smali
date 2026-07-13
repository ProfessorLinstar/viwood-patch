.class public Lcom/android/server/am/ProcessStateController;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# static fields
.field public static TAG:Ljava/lang/String; = "ProcessStateController"


# instance fields
.field public final mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;Z)V
    .locals 8

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v5, Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>(Lcom/android/server/am/ProcessStateController-IA;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    if-eqz p7, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjusterModernImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 54
    new-instance v0, Lcom/android/server/am/OomAdjuster;

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;ZLcom/android/server/am/ProcessStateController-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/ProcessStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;Z)V

    return-void
.end method


# virtual methods
.method public addConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .locals 0

    .line 449
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->addConnection(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    .line 368
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .locals 0

    .line 391
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    return-void
.end method

.method public addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 0

    .line 349
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 350
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 351
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearShortFgsInfo(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 554
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearShortFgsInfo()V

    return-void
.end method

.method public enqueueUpdateTarget(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public getOomAdjuster()Lcom/android/server/am/OomAdjuster;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    return-object p0
.end method

.method public onCleanupApplicationRecord(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 518
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->onCleanupApplicationRecordLocked()V

    return-void
.end method

.method public removeAllConnections(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 463
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllConnections()V

    .line 464
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllSdkSandboxConnections()V

    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .locals 0

    .line 456
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->removeConnection(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z
    .locals 0

    .line 376
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .locals 0

    .line 399
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    return-void
.end method

.method public removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    .line 359
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 360
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProvider(Ljava/lang/String;)V

    return-void
.end method

.method public removeUpdateTarget(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public runFollowUpUpdate()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjFollowUpTargetsLocked()V

    return-void
.end method

.method public runFullUpdate(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void
.end method

.method public runPendingUpdate(I)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public runUpdate(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    return p0
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 0

    .line 253
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    return-void
.end method

.method public setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setBackupTarget(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0

    .line 471
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    return-void
.end method

.method public setForcingToImportant(Lcom/android/server/am/ProcessRecord;Ljava/lang/Object;)V
    .locals 0

    .line 304
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setForcingToImportant(Ljava/lang/Object;)V

    return-void
.end method

.method public setForegroundServiceType(Lcom/android/server/am/ServiceRecord;I)V
    .locals 0

    .line 540
    iput p2, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    return-void
.end method

.method public setHasAboveClient(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0

    .line 503
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setHasAboveClient(Z)V

    return-void
.end method

.method public setHasClientActivities(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0

    .line 488
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    return-void
.end method

.method public setHasForegroundServices(Lcom/android/server/am/ProcessServiceRecord;ZIZ)V
    .locals 0

    .line 480
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ProcessServiceRecord;->setHasForegroundServices(ZIZ)V

    return-void
.end method

.method public setHasOverlayUi(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 0

    .line 277
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 278
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasOverlayUi(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setHasShownUi(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0

    .line 313
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    return-void
.end method

.method public setHasTopUi(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 2

    .line 263
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 264
    :cond_0
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_1

    .line 265
    sget-object p0, Lcom/android/server/am/ProcessStateController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting hasTopUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasTopUi(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setHostProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 525
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method public setIsForegroundService(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 0

    .line 532
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    return-void
.end method

.method public setIsLastMemoryLevelNormal(Z)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isLastMemoryLevelNormal:Z

    return-void
.end method

.method public setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 0

    .line 383
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessProviderRecord;->setLastProviderTime(J)V

    return-void
.end method

.method public setLastTopAlmostPerceptibleBindRequest(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0

    .line 577
    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    return-void
.end method

.method public setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 230
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    return-void
.end method

.method public setPendingFinishAttach(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0

    .line 245
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setPendingFinishAttach(Z)V

    return-void
.end method

.method public setRunningRemoteAnimation(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 2

    .line 290
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 291
    :cond_0
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p0, :cond_1

    .line 292
    sget-object p0, Lcom/android/server/am/ProcessStateController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting runningRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setRunningRemoteAnimation(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setServiceLastActivityTime(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0

    .line 561
    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    return-void
.end method

.method public setShortFgsInfo(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0

    .line 547
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ServiceRecord;->setShortFgsInfo(J)V

    return-void
.end method

.method public setStartRequested(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 0

    .line 568
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    return-void
.end method

.method public setTreatLikeActivity(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0

    .line 495
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->setUidTempAllowlistStateLSP(IZ)V

    return-void
.end method

.method public setWakefulness(I)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/am/ProcessStateController$GlobalState;->isAwake:Z

    .line 193
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->onWakefulnessChanged(I)V

    return-void
.end method

.method public startExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 428
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startExecutingService(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 0

    .line 407
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result p0

    return p0
.end method

.method public stopAllExecutingServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 442
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllExecutingServices()V

    return-void
.end method

.method public stopAllServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 421
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllServices()V

    return-void
.end method

.method public stopBackupTarget(I)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 435
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopExecutingService(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 0

    .line 414
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    move-result p0

    return p0
.end method

.method public updateHasAboveClientLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 511
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasAboveClientLocked()V

    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0

    .line 586
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    return-void
.end method
