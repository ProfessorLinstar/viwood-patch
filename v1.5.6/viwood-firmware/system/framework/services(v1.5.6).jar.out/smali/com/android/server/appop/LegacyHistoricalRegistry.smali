.class public final Lcom/android/server/appop/LegacyHistoricalRegistry;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# static fields
.field public static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field public static final KEEP_WTF_LOG:Z

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mBaseSnapshotInterval:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field public volatile mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

.field public final mInMemoryLock:Ljava/lang/Object;

.field public mIntervalCompressionMultiplier:J

.field public mMode:I

.field public mNextPersistDueTimeMillis:J

.field public final mOnDiskLock:Ljava/lang/Object;

.field public mPendingHistoryOffsetMillis:J

.field public mPendingWrites:Ljava/util/LinkedList;

.field public mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateParametersFromSetting(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/content/ContentResolver;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 133
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 135
    const-class v0, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;)V
    .locals 2

    .line 214
    iget-object v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    .line 215
    iget v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    .line 216
    iget-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    .line 217
    iget-wide v0, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 218
    iget-object p1, p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    .line 174
    sget-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    const-wide/16 v0, 0xa

    .line 182
    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 204
    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 205
    iput-object p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    .line 209
    new-instance p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-direct {p2, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    return-void
.end method

.method public static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .locals 4

    .line 815
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 816
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 815
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 4

    .line 1972
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1973
    sget-boolean p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz p0, :cond_2

    .line 1975
    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "appops"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wtf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1977
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0xa

    if-eqz p1, :cond_0

    .line 1980
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1982
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-eqz p2, :cond_1

    .line 1984
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\nfiles: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 1986
    :cond_1
    const-string p0, "\nfiles: none"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1988
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 1978
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 633
    :cond_0
    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 634
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 635
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    return-void

    .line 637
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearAllHistory()V
    .locals 0

    .line 689
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    .line 690
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory()V

    return-void
.end method

.method public clearHistoricalRegistry()V
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 700
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    const-wide/16 v2, 0x0

    .line 701
    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 702
    iput-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const/4 v2, 0x0

    .line 703
    iput-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 704
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 705
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 704
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 705
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public clearHistory(ILjava/lang/String;)V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 665
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 666
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 669
    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 670
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 674
    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked(ILjava/lang/String;)V

    .line 677
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 678
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 679
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory(ILjava/lang/String;)V

    return-void

    .line 677
    :goto_1
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 678
    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final clearHistoryOnDiskDLocked()V
    .locals 3

    .line 709
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 711
    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 713
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked()V

    return-void

    :catchall_0
    move-exception p0

    .line 714
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 12

    .line 329
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 332
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v0, "History:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v0, "  mode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v3, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 343
    invoke-virtual {p0, v7, v8}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    .line 345
    invoke-static {p1, v7, v8}, Lcom/android/server/appop/LegacyHistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 346
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 349
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 353
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 356
    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v5, v7

    iget-wide v9, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v9

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_2

    .line 360
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 361
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 362
    invoke-static {v0, v7, v8}, Lcom/android/server/appop/LegacyHistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 366
    :cond_1
    const-string p0, "  Empty"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 368
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 369
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/DiscreteOpsRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v14, p13

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p9, v3

    if-nez v3, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p9

    .line 433
    :goto_0
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    sub-long v3, v1, v5

    const-wide/16 v7, 0x0

    .line 437
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long v9, v1, p7

    .line 438
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v11, v1

    .line 439
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v3, v4, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v7, p12

    invoke-direct {v13, v7}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move/from16 v8, p1

    move/from16 v7, p6

    move-wide/from16 v23, v3

    move-wide/from16 v25, v9

    move-wide/from16 v28, v11

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move-wide/from16 v3, p7

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_1

    :cond_1
    move-wide/from16 v23, v3

    move-wide/from16 v25, v9

    move-wide/from16 v28, v11

    move-wide/from16 v3, p7

    :goto_1
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_6

    .line 449
    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v7, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v8

    if-nez v8, :cond_2

    .line 456
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v14, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 458
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v11, v28

    .line 461
    :try_start_3
    invoke-virtual {v0, v11, v12}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v8

    .line 462
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    cmp-long v9, v23, v9

    if-gez v9, :cond_3

    .line 463
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v9

    cmp-long v9, v25, v9

    if-lez v9, :cond_3

    .line 465
    new-instance v9, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v9, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V

    move/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v16, v9

    .line 466
    invoke-virtual/range {v16 .. v26}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V

    move-object/from16 v9, v16

    .line 469
    invoke-virtual {v2, v9}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 471
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 472
    iget-object v10, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 473
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v16

    cmp-long v8, v25, v16

    if-lez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 474
    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_5

    .line 479
    :try_start_4
    invoke-virtual {v0, v9}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 481
    iget-wide v7, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long v7, v11, v7

    iget-wide v9, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v7, v9

    sub-long v9, v23, v7

    const-wide/16 v11, 0x0

    .line 483
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    sub-long v9, v25, v7

    .line 485
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    .line 487
    iget-object v0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move/from16 v22, p6

    move/from16 v27, p11

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v27}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    move-object/from16 v2, v17

    .line 492
    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 474
    :goto_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 492
    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 495
    :cond_6
    :goto_5
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 498
    const-string v0, "historical_ops"

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 499
    invoke-virtual {v14, v15}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 14

    move-object/from16 v0, p13

    .line 394
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    .line 397
    iget-object v13, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v13

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v7

    if-nez v7, :cond_0

    .line 400
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 402
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 404
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    move/from16 v7, p6

    move/from16 v12, p11

    move-wide v8, v3

    move-wide v10, v5

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v12}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    .line 408
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 404
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 408
    :goto_1
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_1
    :goto_2
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 p0, p12

    invoke-direct {v13, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    move v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move/from16 v7, p6

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 417
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 418
    const-string v1, "historical_ops"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    invoke-virtual {v0, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 9

    .line 719
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 720
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 721
    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sub-long v7, v3, v5

    .line 725
    iput-wide v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    :cond_0
    sub-long/2addr v5, v3

    .line 728
    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 733
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 737
    iget-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 738
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object p0

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 742
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 744
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 745
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 746
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 749
    :cond_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 750
    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mNextPersistDueTimeMillis:J

    return-object v0
.end method

.method public increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 19

    move-object/from16 v0, p0

    .line 546
    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 552
    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v4

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p10

    .line 553
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 555
    iget-object v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move/from16 v9, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v11, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    .line 559
    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V
    .locals 27

    move-object/from16 v0, p0

    .line 508
    iget-object v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 510
    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 514
    invoke-virtual {v0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v4

    move/from16 v2, p12

    int-to-long v11, v2

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 515
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 518
    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    const-wide/16 v23, -0x1

    move/from16 v17, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p5

    move/from16 v20, p6

    move/from16 v19, p7

    move-wide/from16 v21, p8

    move/from16 v25, p10

    move/from16 v26, p11

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    .line 522
    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 13

    .line 528
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 534
    invoke-virtual {p0, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v4

    const-wide/16 v11, 0x1

    move v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 535
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 538
    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPersistenceInitializedMLocked()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public offsetHistory(J)V
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Interaction before persistence initialized"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 606
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v1

    .line 608
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoricalRegistry()V

    if-eqz v1, :cond_3

    .line 610
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 613
    invoke-virtual {v4, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 616
    invoke-virtual {p0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 618
    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v2, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 620
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 621
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->offsetHistory(J)V

    return-void

    .line 606
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 620
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public persistPendingHistory()V
    .locals 8

    .line 772
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 774
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 775
    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 776
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 777
    invoke-virtual {p0, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 778
    iput-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 780
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 782
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 783
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 780
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 782
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final persistPendingHistory(Ljava/util/List;)V
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 792
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 796
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 798
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 799
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 803
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pruneFutureOps(Ljava/util/List;)V
    .locals 6

    .line 820
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 822
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 823
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 824
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 825
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 826
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    .line 827
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 828
    invoke-static {v1, v2, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final resampleHistoryOnDiskInMemoryDMLocked(J)V
    .locals 5

    .line 642
    new-instance v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->offsetHistory(J)V

    return-void
.end method

.method public resetHistoryParameters()V
    .locals 7

    .line 648
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Interaction before persistence initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 652
    :cond_0
    sget-wide v3, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v5, 0xa

    const/4 v2, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 654
    iget-object p0, v1, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDebugMode(Z)V

    return-void
.end method

.method public final schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 2

    .line 807
    new-instance v0, Lcom/android/server/appop/LegacyHistoricalRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 809
    iput v1, v0, Landroid/os/Message;->what:I

    .line 810
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHistoryParameters(IJJ)V
    .locals 6

    .line 565
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 570
    :try_start_1
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New history parameters: mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " baseSnapshotInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " intervalCompressionMultiplier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, p1, :cond_1

    .line 575
    iput p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez p1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->clearHistoryOnDiskDLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 579
    :cond_0
    :goto_0
    iget p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 580
    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p1, v3}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDebugMode(Z)V

    .line 583
    :cond_1
    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long p1, v4, p2

    if-eqz p1, :cond_2

    .line 584
    iput-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    move p1, v3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 587
    :goto_1
    iget-wide p2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long p2, p2, p4

    if-eqz p2, :cond_3

    .line 588
    iput-wide p4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    if-eqz v3, :cond_4

    const-wide/16 p1, 0x0

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 594
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 594
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 595
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public shutdown()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-nez v1, :cond_0

    .line 761
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 763
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->persistPendingHistory()V

    .line 766
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->shutdown()V

    return-void

    .line 763
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public systemReady(Landroid/content/ContentResolver;)V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->systemReady()V

    .line 224
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/android/server/appop/LegacyHistoricalRegistry$1;

    .line 226
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry$1;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 235
    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    iget-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 245
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPersistence:Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    .line 246
    invoke-virtual {v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 259
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    new-instance p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    .line 271
    invoke-static {p1, p0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->migrateDiscreteOpsToXml(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 259
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 260
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .locals 16

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 281
    const-string v3, "appop_history_parameters"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 289
    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 290
    array-length v5, v4

    const/4 v6, 0x0

    move v9, v1

    move-object v7, v6

    move-object v8, v7

    :goto_0
    if-ge v9, v5, :cond_5

    aget-object v10, v4, v9

    .line 291
    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 292
    array-length v12, v11

    if-ne v12, v0, :cond_4

    .line 293
    aget-object v12, v11, v1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 294
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v14, "baseIntervalMillis"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move v13, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "mode"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    move v13, v2

    goto :goto_1

    :sswitch_2
    const-string v14, "intervalMultiplier"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    move v13, v1

    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 305
    sget-object v11, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 299
    :pswitch_0
    aget-object v7, v11, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 296
    :pswitch_1
    aget-object v6, v11, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 302
    :pswitch_2
    aget-object v8, v11, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_2
    add-int/2addr v9, v2

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 313
    :try_start_0
    invoke-static {v6}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v11

    .line 314
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 315
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v14, v0

    move-object/from16 v10, p0

    .line 316
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/appop/LegacyHistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 320
    :catch_0
    :cond_6
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value forappop_history_parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resetting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb56339a -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0xea4149c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeAndClearDiscreteHistory()V
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    return-void
.end method
