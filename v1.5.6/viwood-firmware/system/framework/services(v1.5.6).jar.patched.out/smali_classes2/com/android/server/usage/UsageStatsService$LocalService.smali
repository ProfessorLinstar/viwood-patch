.class public final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 3233
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .locals 3

    .line 3404
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3406
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to apply restored payload for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3410
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3412
    monitor-exit v0

    return-void

    .line 3414
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;

    move-result-object p2

    .line 3415
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->restoreAppsToRare(Ljava/util/Set;I)V

    .line 3416
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 6

    .line 3365
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p0

    return p0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .locals 0

    .line 3484
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .locals 4

    .line 3388
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3389
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get backup payload for locked user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3392
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3393
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3395
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3397
    :cond_1
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning backup payload for u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3399
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEstimatedPackageLaunchTime(Ljava/lang/String;I)J
    .locals 0

    .line 3439
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getIdleUidsForUser(I)[I
    .locals 0

    .line 3370
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getIdleUidsForUser(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 0

    .line 3444
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .locals 6

    .line 3358
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 3359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 3358
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .locals 0

    .line 3454
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    return-void
.end method

.method public onAdminDataAvailable()V
    .locals 0

    .line 3469
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->onAdminDataAvailable()V

    return-void
.end method

.method public prepareForPossibleShutdown()V
    .locals 0

    .line 3383
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->prepareForPossibleShutdown()V

    return-void
.end method

.method public prepareShutdown()V
    .locals 0

    .line 3378
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    return-void
.end method

.method public pruneUninstalledPackagesData(I)Z
    .locals 0

    .line 3489
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mpruneUninstalledPackagesData(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result p0

    return p0
.end method

.method public queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;
    .locals 0

    .line 3429
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .locals 0

    .line 3423
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .locals 0

    .line 3516
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .locals 0

    .line 3502
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .locals 9

    .line 3529
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .locals 4

    if-nez p1, :cond_0

    .line 3284
    const-string p0, "UsageStatsService"

    const-string p1, "Configuration event reported with a null config"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3288
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3289
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3290
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 3291
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3335
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3239
    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a component name"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3243
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3244
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3245
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 3246
    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    if-nez p5, :cond_1

    const/4 p1, 0x0

    .line 3248
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3249
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_0

    .line 3251
    :cond_1
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3252
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 3254
    :goto_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .locals 3

    if-nez p1, :cond_0

    .line 3260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Event reported without a package name, eventType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3264
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3265
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3266
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportEventForAllUsers(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    .line 3272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Event reported without a package name, eventType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3276
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p2, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3277
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3278
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 0

    .line 3479
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3302
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3303
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3304
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 3305
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 3298
    :cond_1
    :goto_0
    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a package name or a channel ID"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportLocusUpdate(Landroid/content/ComponentName;ILandroid/content/LocusId;Landroid/os/IBinder;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 3325
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x1e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3326
    invoke-virtual {p3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 3327
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3328
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 3329
    invoke-interface {p4}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    iput p1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 3330
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 0

    .line 3536
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 0

    .line 3548
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationCancelled(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 0

    .line 3542
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3315
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3316
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3317
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 3318
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 3311
    :cond_1
    :goto_0
    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a package name or a shortcut ID"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 0

    .line 3474
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    return-void
.end method

.method public reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V
    .locals 5

    if-eqz p3, :cond_0

    .line 3341
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3343
    const-string v0, "android.app.usage.extra.EVENT_CATEGORY"

    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3344
    const-string v2, "android.app.usage.extra.EVENT_ACTION"

    invoke-virtual {p3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3345
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 3346
    invoke-static {v4, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3345
    invoke-virtual {p3, v0, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3351
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3352
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 3353
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 0

    .line 3459
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->setActiveAdminApps(Ljava/util/Set;I)V

    return-void
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .locals 0

    .line 3464
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 0

    .line 3434
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    return-void
.end method

.method public unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .locals 0

    .line 3510
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$munregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public updatePackageMappingsData(I)Z
    .locals 0

    .line 3494
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mupdatePackageMappingsData(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result p0

    return p0
.end method
