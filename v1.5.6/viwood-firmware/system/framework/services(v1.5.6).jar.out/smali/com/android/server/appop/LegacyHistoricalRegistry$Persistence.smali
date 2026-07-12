.class public final Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LegacyHistoricalRegistry$Persistence"

.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field public final mBaseSnapshotInterval:J

.field public final mIntervalCompressionMultiplier:J


# direct methods
.method public static bridge synthetic -$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 865
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 866
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 862
    iput-wide p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    return-void
.end method

.method public static clearHistoryDLocked()V
    .locals 1

    .line 890
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-void
.end method

.method public static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 4

    .line 1762
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1764
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 1766
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1767
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1768
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .locals 12

    .line 1710
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 1712
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1713
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_4

    .line 1716
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1717
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v8

    .line 1718
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-gtz v10, :cond_0

    goto :goto_3

    :cond_0
    long-to-float v8, v8

    .line 1723
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1724
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-ltz v9, :cond_1

    .line 1725
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 1727
    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_2

    :cond_1
    float-to-double v8, v8

    .line 1729
    invoke-static {v7, v8, v9}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1732
    invoke-virtual {v1, v8}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1734
    :cond_2
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1735
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 0

    .line 1695
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method public static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 0

    .line 1682
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearHistoryDLocked(ILjava/lang/String;)V
    .locals 3

    .line 874
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 880
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 881
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_1
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 886
    invoke-virtual {p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    return-void
.end method

.method public final collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .locals 18

    const/4 v1, 0x0

    .line 991
    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 997
    :try_start_1
    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v17

    const/4 v2, 0x1

    .line 998
    new-array v14, v2, [J

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    aput-wide v4, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    .line 999
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v2

    .line 1006
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v1

    .line 1009
    :goto_0
    const-string v2, "Error reading historical app ops. Deleting history."

    invoke-static {v2, v0, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 1010
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-object v1
.end method

.method public final collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 973
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 977
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 979
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 980
    invoke-virtual {p1, p4}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p14

    .line 1024
    iget-wide v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v3, v2, v4

    .line 1026
    iget-wide v5, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    add-int/lit8 v2, v0, 0x1

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    iget-wide v7, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v5, v7

    sub-long v7, p7, v3

    const-wide/16 v9, 0x0

    .line 1029
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v10, p9, v3

    move/from16 v7, p2

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v19, p15

    move/from16 v18, v0

    move v0, v2

    move-wide v12, v8

    move-wide v14, v10

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 1033
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v3

    move-wide v8, v12

    move-wide v10, v14

    if-eqz v3, :cond_0

    .line 1039
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p13

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v7, p6

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move v15, v0

    move-object v0, v3

    move-wide/from16 v20, v5

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1044
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1051
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1053
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v5, v20

    .line 1054
    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 1060
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1063
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1065
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final computeGlobalIntervalBeginMillis(I)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_0

    long-to-double v0, v0

    .line 1672
    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    double-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1674
    :cond_0
    iget-wide p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public final generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .line 869
    invoke-virtual {p0, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 870
    new-instance p0, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastPersistTimeMillisDLocked()J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 941
    :try_start_0
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 942
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 943
    array-length v5, v4

    if-lez v5, :cond_5

    .line 945
    array-length v2, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v4, v5

    .line 946
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 947
    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 952
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    :goto_1
    move-object p0, v6

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    if-nez p0, :cond_4

    return-wide v0

    .line 959
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 961
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v3, p0

    move-object p0, v2

    .line 963
    :goto_3
    const-string v2, "Error reading historical app ops. Deleting history."

    invoke-static {v2, p0, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 964
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    :goto_4
    return-wide v0
.end method

.method public final handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    .line 1076
    iget-wide v3, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v3, v5

    .line 1078
    iget-wide v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    add-int/lit8 v7, v2, 0x1

    int-to-double v8, v7

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    iget-wide v8, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v5, v8

    if-eqz v1, :cond_0

    .line 1081
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    move-object/from16 v4, p4

    move v5, v7

    move-object/from16 v7, p1

    goto/16 :goto_4

    .line 1100
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_0
    if-ge v9, v8, :cond_2

    .line 1102
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$HistoricalOps;

    neg-long v11, v3

    .line 1103
    invoke-virtual {v10, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    const/16 v19, 0x0

    move v8, v7

    const/4 v7, -0x1

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/high16 v12, -0x8000000000000000L

    move/from16 v16, v14

    const-wide v14, 0x7fffffffffffffffL

    move/from16 v18, v16

    const/16 v16, 0x1f

    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    move/from16 v21, v18

    move/from16 v18, v2

    move-object/from16 v2, p2

    .line 1111
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v7

    move/from16 v2, v18

    if-eqz v7, :cond_3

    .line 1124
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1128
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    move/from16 v11, v20

    :goto_1
    if-ge v11, v8, :cond_3

    .line 1130
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1131
    invoke-virtual {v12, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1145
    :cond_3
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v7, :cond_4

    .line 1147
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1167
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v9, 0x0

    move/from16 v11, v20

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v0, :cond_c

    .line 1169
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1172
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v5

    if-gtz v15, :cond_6

    :cond_5
    move-object v15, v8

    const/4 v7, 0x0

    goto :goto_3

    .line 1175
    :cond_6
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v5

    if-gez v15, :cond_7

    .line 1177
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    cmp-long v15, v9, v3

    if-lez v15, :cond_5

    long-to-double v9, v9

    move-object v15, v8

    .line 1180
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v9, v7

    .line 1181
    invoke-static {v14, v9, v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v7

    .line 1182
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    move-wide v9, v8

    goto :goto_3

    :cond_7
    move-object v15, v8

    move-object v7, v14

    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_9

    if-nez v12, :cond_8

    .line 1192
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    :cond_8
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v7, :cond_b

    if-nez v13, :cond_a

    .line 1198
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    :cond_a
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v11, v11, 0x1

    move-object v8, v15

    goto :goto_2

    :cond_c
    move-object/from16 v7, p1

    .line 1209
    invoke-virtual {v1, v7, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p4

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v12, :cond_d

    .line 1213
    invoke-static {v12, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1214
    invoke-virtual {v1, v12, v9, v10, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    :cond_d
    move-object/from16 v2, p2

    move-object v0, v1

    move-object v4, v5

    move-object v1, v7

    move-object v3, v13

    move/from16 v5, v21

    .line 1222
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    return-void

    .line 1082
    :goto_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v3, p2

    .line 1084
    invoke-virtual {v1, v3, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v6

    .line 1085
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1086
    invoke-virtual {v1, v7, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1087
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    :cond_e
    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v7

    .line 1089
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    :cond_f
    return-void
.end method

.method public persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7

    .line 899
    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 900
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 906
    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 907
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 912
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 914
    const-string p1, "Failed to write historical app ops, restoring backup"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 915
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    return-void
.end method

.method public final readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 3

    .line 1423
    const-string/jumbo v0, "na"

    invoke-static {p4, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_0

    .line 1424
    invoke-static {p5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 1426
    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 p0, 0x0

    return-object p0

    .line 1429
    :cond_0
    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1430
    :cond_1
    :goto_0
    invoke-static {p4, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 1431
    const-string/jumbo p5, "op"

    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    move-object p5, p4

    move-object p4, v0

    .line 1432
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    move-object v0, p4

    move-object p4, p5

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 2

    .line 1449
    const-string/jumbo v0, "na"

    const/4 v1, 0x0

    invoke-interface {p5, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    .line 1451
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p7

    .line 1450
    invoke-static {p6, p7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 1452
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 1455
    :cond_0
    invoke-interface {p5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1456
    :goto_0
    invoke-static {p5, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 1457
    const-string/jumbo p6, "st"

    invoke-interface {p5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    move-object p6, p5

    move p7, p8

    move-wide p8, p9

    move p5, v0

    .line 1458
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILcom/android/modules/utils/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p10

    if-nez p1, :cond_1

    move-object p1, p10

    :cond_1
    move v0, p5

    move-object p5, p6

    :goto_1
    move-wide p9, p8

    move p8, p7

    goto :goto_0

    :cond_2
    move p7, p8

    move-wide p8, p9

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;
    .locals 20

    move-object/from16 v1, p1

    .line 1271
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 1273
    const-string v0, "history"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1277
    const-string/jumbo v0, "ver"

    const/4 v3, 0x0

    invoke-interface {v4, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_6

    .line 1283
    const-string/jumbo v0, "ov"

    const-wide/16 v5, 0x0

    invoke-interface {v4, v3, v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    .line 1284
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    move-object/from16 v18, v3

    .line 1285
    :goto_0
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1286
    const-string/jumbo v3, "ops"

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v19, v0

    .line 1287
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1294
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_3

    :cond_1
    if-nez v18, :cond_2

    .line 1299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v3, v18

    .line 1301
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v3

    :goto_2
    move/from16 v0, v19

    goto :goto_0

    :cond_3
    move/from16 v19, v0

    goto :goto_2

    :cond_4
    if-eqz p12, :cond_5

    const/4 v0, 0x0

    .line 1305
    aget-wide v3, p12, v0

    add-long v3, v3, v16

    aput-wide v3, p12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v18

    .line 1279
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1271
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1308
    :catch_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No history file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .locals 14

    move/from16 v2, p17

    move-object/from16 v13, p18

    .line 1234
    invoke-virtual {p0, p1, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    if-eqz v13, :cond_0

    .line 1236
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    cmp-long v2, p11, p13

    if-gez v2, :cond_7

    cmp-long v2, p13, p2

    if-gez v2, :cond_1

    goto :goto_3

    :cond_1
    sub-long v2, p4, p2

    .line 1243
    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v2, v4

    add-long v2, p4, v2

    if-eqz p16, :cond_2

    const/4 v4, 0x0

    .line 1245
    aget-wide v4, p16, v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    :goto_0
    add-long/2addr v2, v4

    cmp-long v2, p11, v2

    if-gez v2, :cond_4

    .line 1246
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move/from16 v11, p15

    move-object/from16 v12, p16

    .line 1255
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    if-eqz v13, :cond_6

    .line 1247
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 1249
    :cond_6
    :goto_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1241
    :cond_7
    :goto_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 3

    .line 1398
    const-string/jumbo v0, "na"

    invoke-static {p3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 1399
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1400
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 p0, 0x0

    return-object p0

    .line 1403
    :cond_0
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1404
    :cond_1
    :goto_0
    invoke-static {p3, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1405
    const-string p4, "ftr"

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    move-object p4, p3

    move-object p3, v0

    .line 1406
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    move-object v0, p3

    move-object p3, p4

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 3

    .line 1373
    const-string/jumbo v0, "na"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    if-eq p3, v0, :cond_0

    .line 1375
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 1378
    :cond_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1379
    :cond_1
    :goto_0
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1380
    const-string/jumbo p3, "pkg"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move-object p3, p2

    move p2, v0

    .line 1381
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    move v0, p2

    move-object p2, p3

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public readHistoryDLocked()Ljava/util/List;
    .locals 6

    .line 927
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 932
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readHistoryRawDLocked()Ljava/util/List;
    .locals 11

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    .line 920
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public final readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILcom/android/modules/utils/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 13

    move-object/from16 p0, p6

    .line 1472
    const-string/jumbo v0, "na"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1473
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v0

    and-int v10, v0, p7

    if-nez v10, :cond_0

    return-object v1

    .line 1477
    :cond_0
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v9

    .line 1478
    const-string v0, "ac"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 1480
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    long-to-double v4, v4

    mul-double v4, v4, p8

    .line 1481
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    :cond_1
    move-wide v11, v4

    if-nez p1, :cond_2

    .line 1485
    new-instance p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    :cond_2
    move-object v4, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    .line 1487
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object p1, v4

    .line 1490
    :cond_3
    const-string/jumbo v0, "rc"

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_6

    .line 1492
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    long-to-double v4, v4

    mul-double v4, v4, p8

    .line 1493
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    :cond_4
    move-wide v11, v4

    if-nez p1, :cond_5

    .line 1497
    new-instance p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    :cond_5
    move-object v4, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    .line 1499
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object p1, v4

    .line 1502
    :cond_6
    const-string v0, "du"

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-lez p0, :cond_9

    .line 1504
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_7

    long-to-double v0, v0

    mul-double v0, v0, p8

    .line 1505
    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v0

    double-to-long v0, v0

    :cond_7
    move-wide v11, v0

    if-nez p1, :cond_8

    .line 1509
    new-instance p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    :cond_8
    move-object v4, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    .line 1511
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object p1, v4

    :cond_9
    return-object p1
.end method

.method public final readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 16

    move-object/from16 v2, p1

    move-wide/from16 v0, p7

    move-wide/from16 v3, p9

    const/4 v5, 0x0

    .line 1329
    const-string v6, "beg"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v6, 0x0

    if-eqz p12, :cond_0

    .line 1330
    aget-wide v11, p12, v6

    goto :goto_0

    :cond_0
    move-wide v11, v7

    :goto_0
    add-long/2addr v9, v11

    .line 1331
    const-string v11, "end"

    invoke-interface {v2, v5, v11, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz p12, :cond_1

    .line 1332
    aget-wide v13, p12, v6

    goto :goto_1

    :cond_1
    move-wide v13, v7

    :goto_1
    add-long/2addr v11, v13

    cmp-long v6, v3, v9

    if-gez v6, :cond_2

    return-object v5

    :cond_2
    cmp-long v6, v0, v11

    if-lez v6, :cond_3

    .line 1339
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1341
    :cond_3
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1342
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v3, v0, v13

    long-to-double v3, v3

    sub-long/2addr v11, v9

    long-to-double v6, v11

    div-double v9, v3, v6

    .line 1350
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    .line 1351
    :goto_2
    invoke-static {v2, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1352
    const-string/jumbo v3, "uid"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p11

    move/from16 p7, v11

    move-wide v11, v0

    move-object v1, v5

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    .line 1353
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v15

    if-nez v1, :cond_4

    move-object v5, v15

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    move-object/from16 v2, p1

    move-wide v0, v11

    move/from16 v11, p7

    goto :goto_2

    :cond_5
    move/from16 p7, v11

    move-wide v11, v0

    move-object v1, v5

    goto :goto_3

    :cond_6
    move-wide v11, v0

    move-object v1, v5

    if-eqz v1, :cond_7

    .line 1362
    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    :cond_7
    return-object v1
.end method

.method public final writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    .line 1586
    const-string v1, "ftr"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-static {p2, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1588
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1590
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1591
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 1598
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1599
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1602
    const-string/jumbo v2, "op"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    const-string/jumbo v3, "na"

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v4

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1604
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 1606
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1608
    :cond_1
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    :goto_1
    return-void
.end method

.method public final writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    .line 1548
    const-string/jumbo v1, "ops"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1549
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    const-string v4, "beg"

    invoke-interface {p2, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1550
    const-string v2, "end"

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1551
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1553
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1554
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .locals 6

    .line 1519
    const-string v0, "history"

    sget-object v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p4

    .line 1521
    :try_start_0
    invoke-static {p4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 1522
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1524
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1525
    invoke-interface {v1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1526
    const-string/jumbo v2, "ver"

    const/4 v4, 0x2

    invoke-interface {v1, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_0

    .line 1528
    const-string/jumbo v2, "ov"

    invoke-interface {v1, v3, v2, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    .line 1533
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1534
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1537
    :cond_1
    invoke-interface {v1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1538
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1539
    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0, p4}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1541
    :goto_2
    sget-object p1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1, p4}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1542
    throw p0
.end method

.method public final writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    .line 1573
    const-string/jumbo v1, "pkg"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1574
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1577
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 1578
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1580
    :cond_0
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    .line 1561
    const-string/jumbo v1, "uid"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1562
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1563
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1565
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1566
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1568
    :cond_0
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1613
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result p0

    .line 1614
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v0

    .line 1616
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v1

    .line 1617
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v3

    .line 1618
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide p0

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gtz v0, :cond_0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    cmp-long v7, p0, v5

    if-gtz v7, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    .line 1624
    const-string/jumbo v8, "st"

    invoke-interface {p4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1625
    const-string/jumbo v9, "na"

    invoke-interface {p4, v7, v9, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_1

    .line 1627
    const-string p2, "ac"

    invoke-interface {p4, v7, p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    .line 1630
    const-string/jumbo p2, "rc"

    invoke-interface {p4, v7, p2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    cmp-long p2, p0, v5

    if-lez p2, :cond_3

    .line 1633
    const-string p2, "du"

    invoke-interface {p4, v7, p2, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1635
    :cond_3
    invoke-interface {p4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
