.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"


# instance fields
.field public mCommitUidStateLog:[[I

.field public mCommitUidStateLogHead:I

.field public mCommitUidStateLogSize:I

.field public mCommitUidStateLogTimestamps:[J

.field public mEvalForegroundModeLog:[[I

.field public mEvalForegroundModeLogHead:I

.field public mEvalForegroundModeLogSize:I

.field public mEvalForegroundModeLogTimestamps:[J

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mExecutorThread:Ljava/lang/Thread;

.field public mUpdateUidProcStateLog:[[I

.field public mUpdateUidProcStateLogHead:I

.field public mUpdateUidProcStateLogSize:I

.field public mUpdateUidProcStateLogTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V
    .locals 7

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 431
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0xc8

    aput v4, v1, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    .line 432
    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    .line 434
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 435
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 437
    new-array v1, v0, [I

    const/4 v6, 0x4

    aput v6, v1, v2

    aput v4, v1, v3

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    .line 438
    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    .line 439
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 440
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 442
    new-array v0, v0, [I

    const/4 v1, 0x5

    aput v1, v0, v2

    aput v4, v0, v3

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    .line 443
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    .line 444
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 445
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 448
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 449
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public dumpCommitUidState(Ljava/io/PrintWriter;I)V
    .locals 8

    .line 604
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 605
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget v2, p0, p2

    const/4 v3, 0x1

    .line 606
    aget v4, p0, v3

    const/4 v5, 0x2

    .line 607
    aget v6, p0, v5

    const/4 v7, 0x3

    .line 608
    aget p0, p0, v7

    and-int/lit8 v7, p0, 0x1

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, p2

    :goto_0
    and-int/2addr p0, v5

    if-eqz p0, :cond_1

    move p2, v3

    .line 612
    :cond_1
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 614
    const-string p0, " COMMIT_UID_STATE     "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string p0, " uid="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%-8d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    const-string p0, " uidState="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    invoke-static {v4}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%-30s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    const-string p0, " capability="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    const-string p0, " appWidgetVisible="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz p2, :cond_2

    .line 629
    const-string p0, " (changed)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpEvalForegroundMode(Ljava/io/PrintWriter;I)V
    .locals 6

    .line 636
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 637
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v2, 0x1

    .line 638
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 639
    aget v3, p0, v3

    const/4 v4, 0x3

    .line 640
    aget v4, p0, v4

    const/4 v5, 0x4

    .line 641
    aget p0, p0, v5

    .line 643
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 645
    const-string v0, " EVAL_FOREGROUND_MODE "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-8d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const-string p2, " uidState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    invoke-static {v2}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-30s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    const-string p2, " capability="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    const-string p2, " code="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-20s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 542
    :goto_0
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    if-lt v0, v3, :cond_1

    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    if-lt v1, v4, :cond_1

    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 549
    :cond_1
    :goto_1
    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    add-int/2addr v4, v0

    rem-int/lit16 v4, v4, 0xc8

    .line 553
    iget v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    add-int/2addr v5, v1

    rem-int/lit16 v5, v5, 0xc8

    .line 557
    iget v6, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    add-int/2addr v6, v2

    rem-int/lit16 v6, v6, 0xc8

    const-wide v7, 0x7fffffffffffffffL

    if-ge v0, v3, :cond_2

    .line 562
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aget-wide v9, v3, v4

    goto :goto_2

    :cond_2
    move-wide v9, v7

    .line 563
    :goto_2
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    if-ge v1, v3, :cond_3

    .line 564
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aget-wide v11, v3, v5

    goto :goto_3

    :cond_3
    move-wide v11, v7

    .line 565
    :goto_3
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    if-ge v2, v3, :cond_4

    .line 566
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aget-wide v7, v3, v6

    :cond_4
    cmp-long v3, v9, v11

    if-gtz v3, :cond_5

    cmp-long v3, v9, v7

    if-gtz v3, :cond_5

    .line 569
    invoke-virtual {p0, p1, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpUpdateUidProcState(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    cmp-long v3, v11, v7

    if-gtz v3, :cond_6

    .line 572
    invoke-virtual {p0, p1, v5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpCommitUidState(Ljava/io/PrintWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_6
    invoke-virtual {p0, p1, v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvalForegroundMode(Ljava/io/PrintWriter;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public dumpUpdateUidProcState(Ljava/io/PrintWriter;I)V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 583
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v2, 0x1

    .line 584
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 585
    aget p0, p0, v3

    .line 587
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 589
    const-string v0, " UPDATE_UID_PROC_STATE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-8d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    const-string p2, " procState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    invoke-static {v2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-30s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    const-string p2, " capability="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public logCommitUidState(IIIZZ)V
    .locals 9

    .line 481
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda1;-><init>()V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 483
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v2, p0

    .line 481
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logCommitUidStateAsync(JIIIZZ)V
    .locals 5

    .line 488
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    add-int/2addr v0, v4

    .line 491
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    .line 494
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 498
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 499
    aput p5, v0, p3

    const/4 p4, 0x3

    .line 500
    aput v1, v0, p4

    if-eqz p6, :cond_1

    .line 502
    aput v4, v0, p4

    :cond_1
    if-eqz p7, :cond_2

    .line 505
    aget p5, v0, p4

    add-int/2addr p5, p3

    aput p5, v0, p4

    .line 507
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method

.method public logEvalForegroundMode(IIIII)V
    .locals 9

    .line 514
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>()V

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, p0

    .line 514
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvalForegroundModeAsync(JIIIII)V
    .locals 5

    .line 520
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    add-int/2addr v0, v4

    .line 523
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    .line 526
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 530
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 531
    aput p5, v0, p3

    const/4 p3, 0x3

    .line 532
    aput p6, v0, p3

    const/4 p3, 0x4

    .line 533
    aput p7, v0, p3

    .line 534
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method

.method public logUpdateUidProcState(III)V
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;-><init>()V

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    .line 456
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logUpdateUidProcStateAsync(JIII)V
    .locals 5

    .line 461
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    add-int/2addr v0, v4

    .line 464
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    .line 467
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 471
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 472
    aput p5, v0, p3

    .line 473
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method
