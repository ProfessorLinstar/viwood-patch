.class public Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# instance fields
.field public mAnrAnnotation:Ljava/lang/String;

.field public mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBad:Z

.field public mCrashHandler:Ljava/lang/Runnable;

.field public mCrashing:Z

.field public mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field public mErrorReportReceiver:Landroid/content/ComponentName;

.field public mForceCrashReport:Z

.field public mNotResponding:Z

.field public mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$DQtvmgZQqXnoidXVW34IrZY3fRc(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JOKp8PxRjJQFJ_muW70RAHBH8YU(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZUQOCpOor6oXa6JPGLeuoBuaSM(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hmeP4SgVM-wKLFwe9elqPdGyiMo(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJnj86igrSWbTddnzSwFSnBtv04(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$octgrxhn64OYe5xL8BSfI8AJY_I(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    if-eqz p4, :cond_2

    .line 416
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_2

    if-eq v0, p0, :cond_2

    if-eq v0, p1, :cond_2

    .line 418
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, p0, :cond_2

    .line 419
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    const-string p1, "ActivityManager"

    if-eqz p0, :cond_0

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding persistent proc: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 422
    :cond_0
    iget-object p0, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding likely IME: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 426
    invoke-virtual {p3, v0, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 427
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding ANR proc: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 266
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 267
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 268
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method


# virtual methods
.method public appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    .locals 45

    move-object/from16 v4, p0

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v9, p7

    .line 301
    iget-object v6, v1, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 302
    iget-object v2, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    new-instance v5, Landroid/util/SparseBooleanArray;

    const/16 v7, 0x14

    invoke-direct {v5, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 310
    invoke-virtual {v1}, Lcom/android/internal/os/TimeoutRecord;->closeExpiredTimer()V

    .line 312
    iget-object v7, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping debugged app ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_0
    iget-object v7, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v2, v6}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v8}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 329
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v10

    const/16 v23, 0x0

    if-eqz v10, :cond_1

    .line 330
    new-instance v10, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v10, v4, v2}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v10

    move-object/from16 v20, v10

    goto :goto_0

    :cond_1
    move-object/from16 v20, v23

    .line 342
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 343
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v16

    .line 344
    iget-object v10, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    .line 345
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 347
    iget-object v11, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    .line 349
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v12, "stability_anr.value_total_anrs"

    invoke-static {v12}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessErrorStateRecord;->skipAnrLocked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 353
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedProcessErrorStateRecordAppNotResponding()V

    .line 354
    const-string/jumbo v0, "stability_anr.value_skipped_anrs"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 355
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    .line 359
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockStarted()V

    .line 360
    iget-object v12, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockEnded()V

    const/4 v13, 0x1

    .line 362
    invoke-virtual {v4, v13}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 365
    iget-wide v14, v1, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    const-wide/16 v24, 0x0

    cmp-long v1, v14, v24

    if-lez v1, :cond_3

    sub-long v14, v7, v14

    .line 367
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v1

    .line 368
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_22

    :cond_3
    move-object/from16 v1, v23

    .line 371
    :goto_1
    iget-object v14, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 374
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v14

    .line 373
    invoke-static {v14, v1}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->withProcessFrozenStateAndTimestamp(ZLjava/time/ZonedDateTime;)Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    move-result-object v33

    .line 375
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 378
    iget-object v1, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v14, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 379
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v1, v12, v15, v14, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x7538

    .line 378
    invoke-static {v12, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 381
    iget-object v1, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {v1}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    iget-object v1, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v1}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v1

    .line 384
    iget-object v12, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v14, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v14, v11, v1}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 386
    iget-object v12, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v12, v6, v1}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    goto :goto_2

    :cond_4
    move-object/from16 v1, v23

    .line 395
    :goto_2
    iget-object v12, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v14, 0x178

    invoke-static {v14, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 399
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    if-nez v16, :cond_8

    if-nez p8, :cond_8

    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v14

    if-lez v14, :cond_5

    .line 408
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v14

    goto :goto_3

    :cond_5
    move v14, v11

    :goto_3
    if-eq v14, v11, :cond_6

    .line 410
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_6
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v11, :cond_7

    if-eq v15, v14, :cond_7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_7
    iget-object v15, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v13, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v13, v11, v14, v3, v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {v15, v12, v13}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 433
    :cond_8
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 435
    invoke-virtual {v4, v11}, Lcom/android/server/am/ProcessErrorStateRecord;->buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;

    move-result-object v19

    .line 438
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogStarted()V

    .line 440
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v10

    iget-object v13, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 441
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v13

    iget-object v14, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 440
    invoke-virtual {v10, v13, v15, v14}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 442
    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogEnded()V

    .line 443
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v10

    iget-object v13, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v13

    iget-object v14, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move v15, v12

    move v12, v13

    iget-object v13, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 p6, v15

    move v15, v14

    move/from16 v14, p6

    move-object/from16 p6, v1

    move v1, v11

    move-object v11, v6

    const/4 v6, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/criticalevents/CriticalEventLog;->logAnr(Ljava/lang/String;ILjava/lang/String;II)V

    move-object v10, v11

    if-eqz v0, :cond_9

    .line 446
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-wide v12, v7

    move-object v8, v0

    :goto_4
    move-object v0, v3

    goto :goto_5

    :cond_9
    move-wide v12, v7

    move-object/from16 v8, v23

    goto :goto_4

    .line 448
    :goto_5
    iget-object v3, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v11, v2

    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mAnrManager:Lcom/mediatek/server/anr/AnrManager;

    move-object/from16 v7, v18

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p3

    move-object/from16 v15, p6

    move/from16 v14, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v27, v0

    move/from16 v28, v1

    move-object v0, v5

    move v1, v6

    move-object/from16 v17, v9

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v22}, Lcom/mediatek/server/anr/AnrManager;->startAnrDump(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;ZJZLjava/util/UUID;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Future;ZLjava/util/concurrent/Future;)Z

    move-result v2

    move-object/from16 v35, v8

    move v3, v14

    move-object/from16 v34, v15

    move-object/from16 v9, v17

    move-object/from16 v8, v19

    move-object v14, v6

    move-object v15, v7

    move v6, v11

    move-object/from16 v7, v16

    move-object/from16 v11, v18

    move-wide/from16 v43, v12

    move-object v13, v4

    move-object v12, v5

    move-wide/from16 v4, v43

    if-eqz v2, :cond_a

    goto/16 :goto_1f

    .line 454
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    const-string v1, "ANR in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_b

    .line 458
    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_b
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "PID: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 p4, v0

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_c

    .line 463
    const-string v0, "Reason: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v15, :cond_d

    .line 466
    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 467
    const-string v0, "Parent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    if-eqz v34, :cond_e

    .line 470
    const-string v0, "ErrorId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_e
    const-string v0, "Frozen: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 481
    iget-object v0, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v28, v1

    .line 482
    iget v1, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-wide/from16 v16, v4

    .line 483
    invoke-interface {v12, v0, v1}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v4

    .line 486
    invoke-interface {v12, v0, v1}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 487
    const-string v1, "ActivityManager"

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    const-string v7, "ANR delay of "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms started for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    move/from16 v28, v1

    move-object/from16 v18, v2

    move-wide/from16 v16, v4

    move-object/from16 v19, v7

    move-wide/from16 v4, v24

    .line 490
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {v11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateCalled()V

    .line 493
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {v11}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateReturned()V

    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 505
    new-instance v0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    invoke-direct {v0, v13, v11, v6, v3}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V

    .line 506
    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    move-wide/from16 v21, v4

    .line 542
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 544
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v14, -0x1

    invoke-direct {v5, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v26, v1

    if-eqz v6, :cond_10

    move-object/from16 v1, v23

    goto :goto_7

    :cond_10
    move-object v1, v2

    :goto_7
    move-object/from16 v40, v2

    if-eqz v6, :cond_11

    move-object/from16 v2, v23

    move-object v6, v10

    move-object/from16 p4, v12

    move-wide/from16 v14, v16

    move-object/from16 v7, v19

    move-wide/from16 v38, v21

    move-object/from16 v12, v26

    move-object/from16 v0, v27

    const/16 v16, 0x0

    move-object/from16 v10, p10

    goto :goto_8

    :cond_11
    move-object/from16 v2, p4

    move-object v6, v10

    move-wide/from16 v14, v16

    move-object/from16 v7, v19

    move-wide/from16 v38, v21

    move-object/from16 v0, v27

    const/16 v16, 0x0

    move-object/from16 v10, p10

    move-object/from16 p4, v12

    move-object/from16 v12, v26

    .line 545
    :goto_8
    invoke-static/range {v0 .. v11}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v9

    move-object v10, v6

    .line 551
    invoke-virtual {v13}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 554
    :try_start_4
    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 558
    const-string v1, "ActivityManager"

    const-string v2, "Interrupted while updating the CPU stats"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_1
    move-exception v0

    .line 556
    const-string v1, "ActivityManager"

    const-string v2, "Failed to update the CPU stats"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    :goto_9
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 561
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    move-object/from16 v1, v40

    .line 562
    monitor-enter v1

    .line 563
    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 565
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_2
    move-exception v0

    .line 564
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_12
    move-object/from16 v2, v18

    move-object/from16 v1, v40

    .line 567
    :goto_a
    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 569
    monitor-enter v1

    .line 570
    :try_start_7
    invoke-virtual {v1, v14, v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 573
    const-string v0, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_14

    const/4 v0, 0x3

    move/from16 v1, v28

    .line 576
    invoke-static {v1, v0}, Landroid/os/Process;->sendSignal(II)V

    :cond_13
    move-object/from16 v28, v9

    goto :goto_b

    :cond_14
    move/from16 v1, v28

    .line 577
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-lez v0, :cond_13

    .line 582
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v31

    .line 583
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 584
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v27

    const-wide/16 v29, 0x0

    move-object/from16 v24, v0

    move/from16 v25, v1

    move/from16 v26, v4

    move-object/from16 v28, v9

    .line 583
    invoke-virtual/range {v24 .. v32}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    .line 590
    :goto_b
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 591
    iget-object v1, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_16

    iget-object v1, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 592
    iget-object v1, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v6, 0x3e8

    .line 593
    invoke-virtual {v0, v1, v6, v5}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 596
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v4

    .line 598
    :cond_15
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 600
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 602
    const-string v1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App ANR on incremental package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " which is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v6, v4, v3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "% loaded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v1, "incremental"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 607
    new-instance v5, Landroid/os/incremental/IncrementalManager;

    .line 608
    invoke-static {v1}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 609
    invoke-virtual {v5, v0}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v23

    :cond_16
    move-object/from16 v29, v23

    if-eqz v29, :cond_17

    .line 615
    const-string v0, "Package is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v3, v4

    float-to-int v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "% loaded.\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_17
    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez p1, :cond_18

    .line 619
    const-string/jumbo v3, "unknown"

    goto :goto_c

    :cond_18
    move-object/from16 v3, p1

    .line 621
    :goto_c
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x2

    if-eqz v0, :cond_1a

    iget-object v0, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v5

    goto :goto_d

    :cond_19
    move v0, v5

    const/4 v5, 0x1

    goto :goto_d

    :cond_1a
    move v0, v5

    move/from16 v5, v16

    .line 625
    :goto_d
    iget-object v6, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v0

    goto :goto_e

    :cond_1b
    const/4 v6, 0x1

    .line 627
    :goto_e
    iget-object v7, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 628
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v7

    .line 629
    iget-object v8, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1c

    iget-object v8, v13, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_1c
    const-string v8, ""

    :goto_f
    if-eqz v29, :cond_1d

    const/4 v9, 0x1

    goto :goto_10

    :cond_1d
    move/from16 v9, v16

    :goto_10
    if-eqz v29, :cond_1e

    .line 631
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v14

    goto :goto_11

    :cond_1e
    const-wide/16 v14, -0x1

    :goto_11
    const/4 v11, -0x1

    if-eqz v29, :cond_1f

    .line 633
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v17

    goto :goto_12

    :cond_1f
    move/from16 v17, v11

    :goto_12
    if-eqz v29, :cond_20

    .line 635
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v19

    goto :goto_13

    :cond_20
    move/from16 v19, v11

    :goto_13
    if-eqz v29, :cond_21

    .line 637
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v20

    if-eqz v20, :cond_21

    move-wide/from16 v43, v14

    const/4 v15, 0x1

    :goto_14
    move-object/from16 v26, v12

    move v14, v11

    move-wide/from16 v11, v43

    goto :goto_15

    :cond_21
    move-wide/from16 v43, v14

    move/from16 v15, v16

    goto :goto_14

    :goto_15
    if-eqz v29, :cond_22

    .line 638
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v20

    goto :goto_16

    :cond_22
    const-wide/16 v20, -0x1

    :goto_16
    if-eqz v29, :cond_23

    .line 640
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v22

    goto :goto_17

    :cond_23
    const-wide/16 v22, -0x1

    :goto_17
    if-eqz v29, :cond_24

    .line 642
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v24

    goto :goto_18

    :cond_24
    move/from16 v24, v14

    :goto_18
    if-eqz v29, :cond_25

    .line 644
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v25

    goto :goto_19

    :cond_25
    move/from16 v25, v14

    :goto_19
    if-eqz v29, :cond_26

    .line 646
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v14

    :cond_26
    if-eqz v29, :cond_27

    .line 648
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v30

    goto :goto_1a

    :cond_27
    const-wide/16 v30, -0x1

    :goto_1a
    if-eqz v29, :cond_28

    .line 650
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v16

    :cond_28
    if-eqz v29, :cond_29

    .line 652
    invoke-virtual/range {v29 .. v29}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v36

    :goto_1b
    move/from16 v27, v0

    goto :goto_1c

    :cond_29
    const-wide/16 v36, -0x1

    goto :goto_1b

    :goto_1c
    const/16 v0, 0x4f

    move-object v13, v10

    move v10, v4

    move-object v4, v13

    move-object/from16 v41, p4

    move/from16 v13, v17

    move-wide/from16 v43, v22

    move/from16 v22, v14

    move/from16 v14, v19

    move/from16 v27, v25

    move/from16 v25, v16

    move-wide/from16 v16, v20

    move/from16 v20, v24

    move/from16 v21, v27

    move-wide/from16 v23, v30

    move-object/from16 v30, v18

    move-wide/from16 v18, v43

    move-object/from16 v31, v26

    move-wide/from16 v26, v36

    .line 618
    invoke-static/range {v0 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    move v15, v10

    move-object v10, v4

    move v4, v15

    move-object/from16 v15, p0

    .line 654
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "anr"

    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 655
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v4}, Ljava/lang/Float;-><init>(F)V

    const/4 v7, 0x0

    move-object v6, v10

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v42, v6

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move-object/from16 v14, v33

    move-object/from16 v13, v34

    move-object/from16 v6, v35

    .line 654
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    move-object v5, v4

    .line 659
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    invoke-direct {v2, v15}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;

    invoke-direct {v3, v15}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_1f

    .line 673
    :cond_2a
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 676
    :try_start_8
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v0, :cond_2b

    .line 677
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    goto :goto_1d

    :catchall_3
    move-exception v0

    goto/16 :goto_21

    .line 680
    :cond_2b
    :goto_1d
    invoke-virtual {v15}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 681
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "bg anr"

    const/4 v3, 0x6

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v3, v7}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 682
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 685
    :cond_2c
    :try_start_9
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v10, v42

    if-eqz v10, :cond_2d

    .line 688
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :catchall_4
    move-exception v0

    goto :goto_20

    :cond_2d
    const-string v0, "ANR"

    :goto_1e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-virtual {v15, v5, v0, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    move-object/from16 v3, v41

    invoke-virtual {v0, v3}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 690
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 694
    iget-object v0, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 696
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 697
    iput v1, v0, Landroid/os/Message;->what:I

    .line 698
    new-instance v1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v4, p9

    invoke-direct {v1, v3, v6, v9, v4}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-wide/from16 v4, v38

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    :cond_2e
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_1f
    return-void

    .line 690
    :goto_20
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 703
    :goto_21
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    .line 571
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    .line 375
    :goto_22
    :try_start_f
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 433
    :goto_23
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;
    .locals 3

    const/4 p0, 0x0

    .line 765
    const-string v0, "ActivityManager"

    if-gtz p1, :cond_0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory header requested with invalid pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 769
    :cond_0
    invoke-static {p1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v1

    if-nez v1, :cond_1

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get memory snapshot for pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 775
    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 776
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssHwmKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssAnonKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssShmemKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VmSwapKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 0

    .line 809
    iget-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p3

    .line 810
    :try_start_0
    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result p4

    if-nez p4, :cond_0

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 811
    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result p4

    if-nez p4, :cond_0

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz p4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 812
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mCrashing="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mNotResponding="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " bad="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    iget-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    .line 821
    const-string p2, " errorReportReceiver="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 826
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getAnrAnnotation()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-object p0
.end method

.method public getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object p0
.end method

.method public getCrashHandler()Ljava/lang/Runnable;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public getDialogController()Lcom/android/server/am/ErrorDialogController;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object p0
.end method

.method public getErrorReportReceiver()Landroid/content/ComponentName;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public final getShowBackground()Z
    .locals 3

    .line 757
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 761
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 758
    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public isBad()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return p0
.end method

.method public isCrashing()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return p0
.end method

.method public isForceCrashReport()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return p0
.end method

.method public final isInterestingForBackgroundTraces()Z
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 752
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 753
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method public isMonitorCpuUsage()Z
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 p0, 0x1

    return p0
.end method

.method public isNotResponding()Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return p0
.end method

.method public isSilentAnr()Z
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 319
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 320
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 322
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string p1, "anr"

    const/4 p2, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    .line 332
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowCalled()V

    .line 333
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 334
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowReturned()V

    return-void
.end method

.method public final synthetic lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;
    .locals 3

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionStarted()V

    .line 512
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    sget-object p0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_0
    move p2, v1

    .line 516
    :goto_1
    sget-object p3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 517
    aget-object p3, p3, p2

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    .line 518
    new-array p2, p2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object p0, p2, v1

    move-object p0, p2

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_5

    move-object p0, v2

    goto :goto_3

    .line 527
    :cond_5
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_6

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    array-length p2, p0

    :goto_4
    if-ge v1, p2, :cond_6

    aget p3, p0, v1

    .line 533
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 536
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionEnded()V

    return-object v2
.end method

.method public final synthetic lambda$appNotResponding$4()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "anr"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$appNotResponding$5()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 668
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v1, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 717
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    return-void
.end method

.method public onCleanupApplicationRecordLSP()V
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    return-void
.end method

.method public setAnrAnnotation(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-void
.end method

.method public setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-void
.end method

.method public setBad(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return-void
.end method

.method public setCrashHandler(Ljava/lang/Runnable;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public setCrashing(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 175
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    return-void
.end method

.method public setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public setForceCrashReport(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return-void
.end method

.method public setNotResponding(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 196
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    return-void
.end method

.method public setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public skipAnrLocked(Ljava/lang/String;)Z
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-nez v0, :cond_5

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping restarting app ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public startAppProblemLSP()V
    .locals 6

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 726
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 727
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v3, :cond_0

    .line 728
    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getBroadcastQueue()Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueue;->onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
