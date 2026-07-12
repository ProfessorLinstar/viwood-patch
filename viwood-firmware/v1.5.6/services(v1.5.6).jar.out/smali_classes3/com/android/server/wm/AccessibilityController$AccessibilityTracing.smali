.class public final Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# static fields
.field public static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public volatile mEnabled:Z

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->printCpuStats(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFileInternal()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 1445
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1446
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/misc/a11ytrace/a11y_trace.winscope"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    .line 1447
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    const/high16 v0, 0xc00000

    invoke-direct {p1, v0}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 1448
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AccessibilityTracing"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1450
    new-instance v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    return-void
.end method

.method public static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
    .locals 2

    .line 1421
    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetSTATIC_LOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    if-nez v1, :cond_0

    .line 1423
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1425
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    monitor-exit v0

    return-object p0

    .line 1426
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    .line 1623
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1624
    iput-wide p8, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1625
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 1626
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1627
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1628
    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1629
    iput-object p12, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1630
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1631
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 1632
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 1634
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p6, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1635
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V
    .locals 9

    .line 1525
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 1528
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 1529
    const-string v1, "logState"

    move-object/from16 v8, p7

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1530
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .locals 1

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1559
    :cond_0
    invoke-static {p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p10

    invoke-static {p11, p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p11

    move-object p12, p13

    .line 1558
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 13

    .line 1539
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 1543
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p8

    .line 1542
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final printCpuStats(J)Ljava/lang/String;
    .locals 1

    .line 1743
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManagerInternal;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    move-result-object p0

    .line 1746
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startTrace()V
    .locals 2

    .line 1457
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 1458
    const-string p0, "AccessibilityTracing"

    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1462
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 1463
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 1464
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopTrace()V
    .locals 2

    .line 1471
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 1472
    const-string p0, "AccessibilityTracing"

    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1476
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 1477
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 1478
    const-string p0, "AccessibilityTracing"

    const-string v1, "Error: tracing enabled while waiting for flush."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1481
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFile()V

    .line 1482
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 1566
    const-string p0, ""

    return-object p0

    .line 1569
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1574
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 1575
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1576
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_2
    if-gez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    :cond_3
    array-length v2, p1

    if-ge v0, v2, :cond_7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1593
    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 1594
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1595
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v0

    :cond_5
    if-eq v1, v0, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 1610
    array-length p2, p1

    if-ge v1, p2, :cond_8

    .line 1611
    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1614
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTraceToFile()V
    .locals 1

    .line 1642
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final writeTraceToFileInternal()V
    .locals 5

    .line 1727
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10600000001L

    const-wide v3, 0x4341525459313141L    # 9.75119366241549E15

    .line 1728
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1729
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 1731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x10600000003L

    .line 1732
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1733
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1735
    const-string v0, "AccessibilityTracing"

    const-string v1, "Unable to write buffer to file"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
