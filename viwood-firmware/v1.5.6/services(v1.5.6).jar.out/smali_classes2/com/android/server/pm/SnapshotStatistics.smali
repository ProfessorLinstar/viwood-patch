.class public Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# static fields
.field public static final SNAPSHOT_LOG_INTERVAL_US:J


# instance fields
.field public mEventsReported:I

.field public mHandler:Landroid/os/Handler;

.field public mLastLogTimeUs:J

.field public final mLock:Ljava/lang/Object;

.field public final mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mPackageCount:I

.field public final mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field public final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleMessage(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SnapshotStatistics;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    .line 503
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0xa

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct {v2, v7}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 511
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/16 v7, 0x3e8

    const/16 v8, 0x2710

    filled-new-array {v4, v6, v3, v7, v8}, [I

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    .line 520
    new-array v4, v5, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 521
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics-IA;)V

    aput-object v5, v4, v0

    .line 522
    new-array v4, v6, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 523
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics-IA;)V

    aput-object v5, v4, v0

    .line 524
    iput-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    .line 527
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    .line 533
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JIZ)V
    .locals 8

    .line 648
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 650
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v3, 0x0

    aget-object v4, v5, v3

    const/4 v6, 0x0

    invoke-direct {v2, p0, v4, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics-IA;)V

    aput-object v2, v5, v3

    .line 651
    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 652
    new-instance v4, Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v7, v2, v3

    invoke-direct {v4, p0, v7, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics-IA;)V

    aput-object v4, v2, v3

    .line 653
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s Unrecorded-hits: %d"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 655
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 656
    const-string/jumbo v7, "stats"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v6, v2

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 661
    const-string/jumbo v7, "times"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 663
    const-string/jumbo v7, "usage"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 653
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const/4 v2, 0x0

    .line 627
    aget-object v3, v0, v2

    const/4 v8, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    move v3, v2

    .line 628
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 629
    aget-object v9, v1, v3

    if-eqz v9, :cond_0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v15, p7

    .line 630
    invoke-static/range {v9 .. v15}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 633
    :cond_1
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 634
    aget-object v9, v0, v2

    if-eqz v9, :cond_2

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v15, p7

    .line 635
    invoke-static/range {v9 .. v15}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 540
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->tick()V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void
.end method

.method public final rebuild(JJII)V
    .locals 7

    sub-long/2addr p3, p1

    long-to-int v1, p3

    .line 563
    iget-object p1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 564
    :try_start_0
    iput p6, p0, Lcom/android/server/pm/SnapshotStatistics;->mPackageCount:I

    .line 566
    iget-object p2, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    div-int/lit16 p3, v1, 0x3e8

    invoke-virtual {p2, p3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v3

    .line 567
    iget-object p2, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-virtual {p2, p5}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v4

    const/16 p2, 0x2710

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-lt v1, p2, :cond_0

    move v5, p3

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    const/4 p2, 0x5

    if-gt p5, p2, :cond_1

    move v6, p3

    goto :goto_1

    :cond_1
    move v6, p4

    .line 571
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v0, p2, p4

    move v2, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 572
    iget-object p2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v0, p2, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    const/16 p2, 0x7530

    if-lt v1, p2, :cond_2

    .line 574
    iget p2, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    add-int/lit8 p5, p2, 0x1

    iput p5, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/16 p0, 0xa

    if-ge p2, p0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    move p3, p4

    .line 578
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    .line 582
    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1, v2}, Lcom/android/server/EventLogTags;->writePmSnapshotRebuild(II)V

    :cond_3
    return-void

    .line 578
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final scheduleTick()V
    .locals 3

    .line 548
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 3

    const/4 v0, 0x0

    .line 592
    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mcomplete(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 593
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 594
    aget-object v2, p1, v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 596
    :cond_0
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics-IA;)V

    aput-object v1, p1, v0

    return-void
.end method

.method public final tick()V
    .locals 7

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 612
    iget-wide v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 614
    iput-wide v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    .line 615
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mPackageCount:I

    invoke-static {v3, v4}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mlogSnapshotStatistics(Lcom/android/server/pm/SnapshotStatistics$Stats;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 618
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    const/4 v1, 0x0

    .line 619
    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 620
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
