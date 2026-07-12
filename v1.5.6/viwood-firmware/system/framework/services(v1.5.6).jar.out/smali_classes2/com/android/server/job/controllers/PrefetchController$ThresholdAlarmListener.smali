.class public Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
.super Lcom/android/server/utils/AlarmQueue;
.source "PrefetchController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 434
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    const/4 v5, 0x0

    const-wide/32 v6, 0x57e40

    .line 435
    const-string v3, "*job.prefetch*"

    const-string v4, "Prefetch threshold"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public isForUser(Landroid/content/pm/UserPackage;I)Z
    .locals 0

    .line 441
    iget p0, p1, Landroid/content/pm/UserPackage;->userId:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0

    .line 433
    check-cast p1, Landroid/content/pm/UserPackage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->isForUser(Landroid/content/pm/UserPackage;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 12

    .line 446
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 447
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 449
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    const/4 v2, 0x0

    .line 450
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 451
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/content/pm/UserPackage;

    .line 452
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v8, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v3, v8, v9, v4, v5}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    const-string v3, "JobScheduler.Prefetch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm expired for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v11, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 454
    invoke-static {v9, v11}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " at the wrong time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    move-wide v8, v6

    move-wide v6, v4

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v5, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    move-wide v8, v6

    move-wide v6, v4

    .line 456
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    move-wide v6, v8

    iget v8, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z

    move-result v3

    move-wide v8, v6

    move-wide v6, v4

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v3}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;

    move-result-object v3

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v5, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v6

    move-wide v6, v8

    goto :goto_0

    .line 461
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 463
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_3
    return-void

    .line 461
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
