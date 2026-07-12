.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1534
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1535
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1667
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-wide/16 v8, 0x40

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    .line 1833
    :cond_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1834
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v3

    iget v1, v1, Landroid/os/Message;->arg2:I

    aget-object v1, v3, v1

    .line 1835
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing native compaction for pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1835
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string v3, "compactNative"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1840
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1842
    :catch_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed compacting native pid= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_6

    .line 1823
    :cond_1
    const-string v1, "compactSystem"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1824
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v1

    .line 1825
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 1826
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 1828
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSystemCompactionPerformed(J)V

    .line 1829
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1669
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1676
    iget v10, v1, Landroid/os/Message;->arg1:I

    .line 1677
    iget v11, v1, Landroid/os/Message;->arg2:I

    .line 1682
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1683
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1684
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_3

    .line 1685
    const-string v0, "ActivityManager"

    const-string v2, "No processes pending compaction, bail out"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 1687
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1689
    :cond_4
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1690
    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1691
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v14

    .line 1692
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1693
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    .line 1694
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1695
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1696
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-result-object v8

    .line 1697
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v9

    .line 1698
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v30

    .line 1699
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v31

    .line 1700
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastOomAdjChangeReason()I

    move-result v6

    .line 1701
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v15, :cond_6

    .line 1706
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_5

    .line 1707
    const-string v1, "ActivityManager"

    const-string v2, "Compaction failed, pid is 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_5
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v12, v8, v5}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v1, 0x3

    if-nez v14, :cond_b

    .line 1716
    invoke-virtual {v0, v4}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1717
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v7, v8, v5}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_7
    move-object/from16 v53, v9

    move v9, v1

    move-object v1, v4

    move-object/from16 v4, v53

    move/from16 v53, v12

    move-object v12, v5

    move-object v5, v8

    move/from16 v8, v53

    .line 1722
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1724
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    .line 1729
    :cond_8
    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1730
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v9, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_9
    move/from16 p1, v8

    .line 1735
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v8

    invoke-interface {v8, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    .line 1736
    invoke-virtual {v0, v4, v15, v12, v8}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1737
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_a
    move-wide/from16 v16, v2

    move/from16 v37, v7

    move/from16 v36, v9

    goto :goto_2

    :cond_b
    move-object/from16 p1, v9

    move v9, v1

    move-object v1, v4

    move-object/from16 v4, p1

    move/from16 p1, v12

    move-object v12, v5

    move-object v5, v8

    .line 1743
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v8

    invoke-interface {v8, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    .line 1744
    sget-boolean v16, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v16, :cond_a

    move/from16 v36, v9

    .line 1745
    const-string v9, "ActivityManager"

    move/from16 v37, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v2

    const-string v2, "Forcing compaction for "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :goto_2
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1750
    invoke-virtual {v2, v4}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v2

    .line 1751
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v2, v3, :cond_c

    .line 1753
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_f

    .line 1754
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolved no compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1761
    :cond_c
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compact "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " lastOomAdjReason: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " source: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v5

    move/from16 v26, v6

    const-wide/16 v5, 0x40

    .line 1761
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1765
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v5

    .line 1766
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v18

    .line 1767
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v3

    invoke-interface {v3, v2, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1768
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v20

    .line 1769
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v3

    invoke-interface {v3, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v23

    move-object v9, v2

    .line 1770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v38, v2, v16

    sub-long v20, v20, v18

    .line 1773
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v40

    .line 1774
    aget-wide v16, v23, p1

    aget-wide v18, v8, p1

    sub-long v42, v16, v18

    .line 1775
    aget-wide v16, v23, v37

    aget-wide v18, v8, v37

    sub-long v44, v16, v18

    const/16 v33, 0x2

    .line 1776
    aget-wide v16, v23, v33

    aget-wide v18, v8, v33

    move-wide/from16 v46, v5

    sub-long v5, v16, v18

    .line 1777
    aget-wide v16, v23, v36

    aget-wide v18, v8, v36

    sub-long v48, v16, v18

    .line 1778
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    move-object/from16 v50, v8

    move/from16 v8, v37

    if-eq v7, v8, :cond_e

    move/from16 v8, v36

    if-eq v7, v8, :cond_d

    .line 1798
    const-string v0, "ActivityManager"

    const-string v1, "Compaction: Unknown requested action"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v34, 0x40

    .line 1818
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    const-wide/16 v34, 0x40

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_d
    move-object v7, v13

    move v8, v14

    neg-long v13, v5

    move/from16 v28, v15

    sub-long v15, v40, v46

    move/from16 v24, v11

    move-object/from16 v11, v17

    sub-long v17, v13, v15

    const-wide/32 v51, 0xf4240

    .line 1787
    :try_start_4
    div-long v21, v20, v51

    const/16 v33, 0x2

    .line 1788
    aget-wide v19, v50, v33

    move-wide/from16 v51, v5

    .line 1789
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v37, 0x1

    xor-int/lit8 v29, v8, 0x1

    move/from16 v8, p1

    move/from16 v27, v1

    move/from16 v25, v10

    move-object v10, v5

    invoke-virtual/range {v10 .. v29}, Lcom/android/server/am/compaction/CompactionStatsManager;->logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V

    goto :goto_3

    :cond_e
    move/from16 v8, p1

    move-wide/from16 v51, v5

    move/from16 v25, v10

    move/from16 v24, v11

    move-object v7, v13

    move/from16 v28, v15

    move-object/from16 v5, v17

    .line 1780
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSomeCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1801
    :goto_3
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1802
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    aget-wide v5, v50, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v37, 0x1

    aget-wide v5, v50, v37

    .line 1803
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v33, 0x2

    aget-wide v5, v50, v33

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v36, 0x3

    aget-wide v5, v50, v36

    .line 1804
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1805
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    .line 1806
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    sub-long v8, v46, v40

    .line 1807
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v17, v12

    :try_start_5
    filled-new-array/range {v16 .. v33}, [Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v12, v17

    const/16 v5, 0x756f

    .line 1801
    :try_start_6
    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1808
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1809
    :try_start_7
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    .line 1810
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V

    .line 1811
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-wide/16 v34, 0x40

    .line 1818
    :goto_4
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 1811
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_2
    move-exception v0

    move-object/from16 v12, v17

    .line 1814
    :goto_5
    :try_start_b
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while compacting pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1814
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-wide/16 v34, 0x40

    goto :goto_4

    :cond_f
    :goto_6
    return-void

    .line 1818
    :goto_7
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    .line 1819
    throw v0

    .line 1701
    :goto_8
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 1539
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1543
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p1

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_1

    .line 1544
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p1, :cond_0

    .line 1545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping compaction as process "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is now perceptible."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    .line 1622
    aget-wide v4, p4, v3

    .line 1623
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 1624
    invoke-virtual {v6, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;

    move-result-object v6

    const/4 v7, 0x0

    .line 1626
    aget-wide v8, p4, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-string v9, "ActivityManager"

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-nez v8, :cond_1

    aget-wide v14, p4, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    aget-wide v14, p4, v3

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    aget-wide v14, p4, v12

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    .line 1628
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_0

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping compaction forprocess "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with no memory usage. Dead?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v13

    .line 1636
    :cond_1
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-object/from16 v8, p1

    if-ne v8, v1, :cond_6

    .line 1637
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v1, v14, v10

    const-string v8, "KB."

    const-string v14, "Skipping full compaction for process "

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide v15, v10

    iget-wide v10, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_4

    .line 1638
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_2

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; anon RSS is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v13

    :cond_3
    move-wide v15, v10

    :cond_4
    if-eqz v6, :cond_6

    .line 1646
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v1, v4, v15

    if-lez v1, :cond_6

    .line 1647
    invoke-virtual {v6}, Lcom/android/server/am/compaction/SingleCompactionStats;->getRssAfterCompaction()[J

    move-result-object v1

    .line 1648
    aget-wide v4, p4, v13

    aget-wide v10, v1, v13

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    aget-wide v10, p4, v3

    aget-wide v15, v1, v3

    sub-long/2addr v10, v15

    .line 1649
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    aget-wide v10, p4, v12

    aget-wide v15, v1, v12

    sub-long/2addr v10, v15

    .line 1650
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 1651
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_6

    .line 1652
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_5

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; abs delta is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v13

    :cond_6
    return v7
.end method

.method public final shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    .line 1607
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1608
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_0

    .line 1609
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping full compaction for process "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; proc state is "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1557
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1558
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1560
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v4

    .line 1561
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    .line 1570
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-object/from16 v7, p5

    if-ne v7, v3, :cond_7

    .line 1571
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const/4 v7, 0x1

    const-string/jumbo v8, "ms ago"

    const-string v9, " last="

    const-string v10, "/"

    const-string v11, ": too soon. throttle="

    const-string v12, "ActivityManager"

    if-ne v2, v3, :cond_3

    if-ne v4, v3, :cond_0

    sub-long v2, p2, v5

    .line 1572
    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v13, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v2, v2, v13

    if-ltz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v4, v2, :cond_7

    sub-long v2, p2, v5

    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v2, v2, v13

    if-gez v2, :cond_7

    .line 1576
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_2

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping some compaction for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, p2, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    .line 1585
    :cond_3
    sget-object v13, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v2, v13, :cond_7

    if-ne v4, v3, :cond_4

    sub-long v2, p2, v5

    .line 1586
    iget-object v14, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v2, v2, v14

    if-ltz v2, :cond_5

    :cond_4
    if-ne v4, v13, :cond_7

    sub-long v2, p2, v5

    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v2, v2, v13

    if-gez v2, :cond_7

    .line 1590
    :cond_5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_6

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping full compaction for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v3, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, p2, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v7

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
