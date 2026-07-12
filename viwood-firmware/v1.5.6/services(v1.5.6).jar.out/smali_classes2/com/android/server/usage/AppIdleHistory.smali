.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"


# instance fields
.field public mElapsedDuration:J

.field public mElapsedSnapshot:J

.field public mIdleHistory:Landroid/util/SparseArray;

.field public mScreenOn:Z

.field public mScreenOnDuration:J

.field public mScreenOnSnapshot:J

.field public final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 210
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 211
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 212
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    return-void
.end method


# virtual methods
.method public clearLastUsedTimestamps(Ljava/lang/String;I)V
    .locals 6

    .line 763
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 764
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/32 p1, -0x80000000

    .line 767
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 768
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 769
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_0
    return-void
.end method

.method public clearUsage(Ljava/lang/String;I)V
    .locals 0

    .line 671
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 672
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .locals 5

    .line 1100
    const-string p0, " expiryTimes="

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_3

    .line 1102
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1106
    :cond_0
    const-string p0, "("

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 1109
    iget-object v1, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1110
    iget-object v2, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    if-eqz v0, :cond_1

    .line 1112
    const-string v4, ","

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p3, v2

    .line 1115
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_2
    const-string p0, ")"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 1103
    :cond_3
    :goto_1
    const-string p0, "<none>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    .line 1030
    const-string v2, "User "

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1032
    const-string v2, " App Standby States:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1034
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/util/ArrayMap;

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1037
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    .line 1038
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    if-nez v7, :cond_0

    return-void

    .line 1040
    :cond_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v4, 0x0

    move v13, v4

    :goto_0
    if-ge v13, v12, :cond_6

    .line 1042
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 1043
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1044
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v4, p3

    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_1
    move-object/from16 v4, p3

    .line 1047
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " u="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bucket="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1051
    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    const-string v0, " used="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1054
    const-string v0, " usedByUser="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1057
    const-string v0, " usedScr="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1059
    const-string v0, " lastPred="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1061
    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    .line 1062
    const-string v4, " lastJob="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lastInformedBucket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-lez v4, :cond_3

    .line 1066
    const-string v4, " lastRestrictAttempt="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lastRestrictReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 1070
    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1069
    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    :cond_3
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_4

    .line 1073
    const-string v4, " nextEstimatedLaunchTime="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1076
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " idle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v6, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "y"

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "n"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1079
    :cond_6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1080
    const-string/jumbo v2, "totalElapsedTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1082
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1083
    const-string/jumbo v2, "totalScreenOnTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1085
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1086
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 3

    .line 1022
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1024
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1025
    aget v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 6

    .line 615
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 617
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x32

    return p0

    .line 618
    :cond_0
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    return p0
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .locals 5

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 626
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 627
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v4, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_1

    :cond_0
    const/16 v4, 0xa

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 626
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .locals 6

    .line 633
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 636
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 6

    .line 478
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    return-object p0
.end method

.method public getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .locals 6

    .line 744
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p4

    .line 745
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_1

    .line 747
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public getElapsedTime(J)J
    .locals 2

    .line 640
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;IJ)J
    .locals 6

    .line 572
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 576
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-wide p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-wide p0

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 0

    const/4 p0, 0x0

    .line 926
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    .line 928
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 0

    const/4 p0, 0x0

    .line 920
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p3

    .line 922
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 0

    .line 449
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    if-nez p0, :cond_0

    if-eqz p5, :cond_0

    .line 451
    new-instance p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-wide/32 p3, -0x80000000

    .line 452
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 453
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 454
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 455
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const/16 p3, 0x32

    .line 456
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p3, 0x100

    .line 457
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 p3, -0x1

    .line 458
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const-wide/high16 p3, -0x8000000000000000L

    .line 459
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 460
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final getRestoreToRareAppsListFile(I)Ljava/io/File;
    .locals 1

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "restore_to_rare_apps_list"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenOnTime(J)J
    .locals 4

    .line 233
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 234
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_0

    .line 235
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getScreenOnTimeFile()Ljava/io/File;
    .locals 2

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v1, "screen_on_time"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .locals 6

    .line 701
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 702
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 705
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_2

    .line 710
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    .line 711
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr p1, p3

    .line 718
    array-length p0, p5

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 719
    aget-wide p3, p6, p0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .locals 6

    .line 593
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 595
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 597
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J
    .locals 6

    .line 604
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 606
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 607
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-eqz p3, :cond_1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final getUserDirectory(I)Ljava/io/File;
    .locals 3

    .line 754
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserFile(I)Ljava/io/File;
    .locals 1

    .line 759
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "app_idle_stats.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserHistory(I)Landroid/util/ArrayMap;
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    :cond_0
    return-object v0
.end method

.method public final insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    return-void

    .line 913
    :cond_0
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_1

    .line 914
    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 916
    :cond_1
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .locals 6

    .line 470
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 473
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p1, 0x28

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .locals 6

    const p0, 0xff00

    and-int v4, p4, p0

    and-int/lit16 v5, p4, 0xff

    const/16 v0, 0x102

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 732
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    return-void
.end method

.method public noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .locals 6

    .line 559
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 561
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 562
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 563
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p4, v0

    if-gez p0, :cond_0

    .line 1092
    const-string p0, "<uninitialized>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p2, p4

    .line 1094
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    return-void
.end method

.method public final readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 783
    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 785
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 786
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 787
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 788
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 791
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v9, :cond_1

    .line 797
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 888
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_a

    :catch_1
    move-object v5, v6

    goto/16 :goto_c

    .line 800
    :cond_1
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    .line 888
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 803
    :cond_2
    :try_start_4
    const-string/jumbo v0, "version"

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 804
    :cond_3
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_c

    if-ne v0, v9, :cond_3

    .line 806
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 807
    const-string/jumbo v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 808
    const-string/jumbo v0, "name"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 809
    new-instance v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v12}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 810
    const-string v0, "elapsedIdleTime"

    .line 811
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 812
    const-string v0, "lastUsedByUserElapsedTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 815
    const-string/jumbo v0, "screenIdleTime"

    .line 816
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 817
    const-string v0, "lastPredictedTime"

    const-wide/16 v13, 0x0

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 819
    const-string v0, "appLimitBucket"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    goto :goto_2

    .line 823
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 824
    const-string v0, "bucketReason"

    .line 825
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    const-string v9, "lastJobRunTime"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v6

    const-wide/high16 v5, -0x8000000000000000L

    :try_start_5
    invoke-virtual {v1, v7, v9, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const/16 v5, 0x100

    .line 828
    iput v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v5, 0x10

    if-eqz v0, :cond_5

    .line 832
    :try_start_6
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v5, v16

    goto/16 :goto_e

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v5, v16

    goto/16 :goto_a

    :catch_3
    :goto_5
    move-object/from16 v5, v16

    goto/16 :goto_c

    :catch_4
    move-exception v0

    .line 834
    :try_start_7
    const-string v6, "Unable to read bucketing reason"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    :cond_5
    :goto_6
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 838
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 839
    const-string v0, "lastRestrictionAttemptReason"

    const/4 v8, 0x0

    invoke-interface {v7, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_6

    .line 844
    :try_start_8
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v0

    .line 846
    :try_start_9
    const-string v5, "Unable to read last restrict reason"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    :cond_6
    :goto_7
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 854
    iget v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    move-object/from16 v5, p2

    .line 858
    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x1

    if-lt v10, v15, :cond_8

    .line 861
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 862
    :cond_7
    :goto_8
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 863
    const-string v6, "expiryTimes"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 864
    invoke-virtual {v1, v7, v12}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V

    goto :goto_8

    .line 868
    :cond_8
    const-string v0, "activeTimeoutTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 870
    const-string/jumbo v0, "workingSetTimeoutTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v8, v13

    if-nez v0, :cond_9

    cmp-long v0, v5, v13

    if-eqz v0, :cond_b

    :cond_9
    const/16 v11, 0xa

    .line 873
    invoke-virtual {v1, v12, v11, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    const/16 v0, 0x14

    .line 875
    invoke-virtual {v1, v12, v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_4

    :catch_7
    move-object/from16 v16, v6

    goto/16 :goto_5

    :cond_a
    move-object/from16 v16, v6

    move v15, v8

    :cond_b
    :goto_9
    move v8, v15

    move-object/from16 v6, v16

    const/4 v5, 0x0

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_c
    move-object/from16 v16, v6

    .line 888
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_e

    :catch_8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_a

    :catch_9
    const/4 v5, 0x0

    goto :goto_c

    .line 886
    :goto_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 888
    :goto_b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_e

    .line 884
    :goto_c
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle file for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_b

    :goto_d
    return-void

    .line 888
    :goto_e
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 889
    throw v0
.end method

.method public final readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .locals 5

    .line 894
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 895
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    const-string v1, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    const-string v1, "bucket"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 899
    const-string v1, "AppIdleHistory"

    const-string v2, "Error reading the buckets expiry times"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 902
    :cond_1
    const-string v2, "expiry"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 903
    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public readRestoreToRareAppsList(I)Landroid/util/ArraySet;
    .locals 6

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getRestoreToRareAppsListFile(I)Ljava/io/File;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 294
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 297
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 300
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 301
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 305
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 306
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 309
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 294
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-object v0
.end method

.method public final readScreenOnTime()V
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 251
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 252
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public final removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .locals 2

    .line 400
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 404
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 405
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 5

    or-int/lit16 p5, p5, 0x300

    .line 356
    invoke-static {p5}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v0

    .line 358
    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v1

    const/16 v4, 0x200

    if-eq v3, v4, :cond_0

    move p5, v1

    move p4, v2

    goto :goto_0

    :cond_0
    cmp-long v1, p8, p6

    if-lez v1, :cond_2

    .line 368
    invoke-virtual {p0, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    .line 369
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 372
    :cond_1
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 373
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 374
    invoke-static {p8, p9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p8

    .line 373
    invoke-virtual {v3, p4, p8, p9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 375
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    invoke-virtual {p0, p1, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    :cond_2
    :goto_0
    const-wide/16 p8, 0x0

    cmp-long p8, p6, p8

    if-eqz p8, :cond_4

    .line 380
    iget-wide p8, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v1, p6, v1

    add-long/2addr p8, v1

    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    if-eqz v0, :cond_3

    .line 383
    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 385
    :cond_3
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide p6

    iput-wide p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 388
    :cond_4
    iget p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt p6, p4, :cond_6

    if-le p6, p4, :cond_5

    .line 390
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 391
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    .line 393
    :cond_5
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :cond_6
    return-object p1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 10

    .line 429
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p5

    .line 430
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move v5, p4

    move-wide/from16 v8, p7

    move-wide v6, v3

    move v3, p2

    move v4, p3

    .line 432
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 486
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .locals 6

    .line 491
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 493
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 494
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 495
    :goto_0
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 496
    iput p6, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 498
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p3

    const v1, 0xff00

    and-int/2addr v1, p6

    const/16 v3, 0x500

    if-ne v1, v3, :cond_1

    .line 501
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 502
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    :cond_1
    if-eqz p7, :cond_2

    .line 504
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_2

    .line 505
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_2
    if-eqz p1, :cond_3

    .line 508
    invoke-virtual {v0, v2, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    :cond_3
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJJ)V
    .locals 6

    .line 528
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 531
    iput-wide p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .locals 10

    if-eqz p3, :cond_2

    .line 650
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p3

    .line 653
    iget-object v0, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/16 v1, 0x28

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 655
    iget-object v2, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 656
    iget-object v2, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p3, 0x400

    :goto_1
    move v8, p3

    move v7, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0xa

    const/16 p3, 0x303

    goto :goto_1

    :goto_2
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p4

    .line 665
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return v7
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 6

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 544
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 545
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    return-void
.end method

.method public shouldInformListeners(Ljava/lang/String;IJI)Z
    .locals 6

    .line 677
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 678
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 680
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq p1, p5, :cond_0

    .line 681
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDisplay(ZJ)V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p1, :cond_1

    .line 221
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    return-void

    .line 223
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 224
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 225
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .locals 0

    .line 519
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 520
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method

.method public userFileExists(I)Z
    .locals 0

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public writeAppIdleDurations()V
    .locals 6

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 279
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 280
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 281
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public writeAppIdleTimes(IJ)V
    .locals 20

    .line 939
    const-string v0, "item"

    const-string v1, "expiryTimes"

    const-string/jumbo v2, "package"

    const-string v3, "AppIdleHistory"

    const-string/jumbo v4, "packages"

    .line 940
    new-instance v5, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 942
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 943
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 945
    new-instance v9, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 946
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 947
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 948
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 950
    invoke-virtual {v9, v6, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 951
    const-string/jumbo v8, "version"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v8, p0

    move-wide/from16 v10, p2

    .line 953
    invoke-virtual {v8, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 954
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v8

    .line 955
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_7

    .line 957
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v15, :cond_0

    .line 960
    :try_start_2
    const-string v15, "Skipping App Idle write for unexpected null package"

    invoke-static {v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v15, v7

    move-object/from16 p2, v8

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v6, v7

    goto/16 :goto_6

    .line 963
    :cond_0
    :try_start_3
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 964
    invoke-virtual {v9, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 p2, v8

    .line 965
    const-string/jumbo v8, "name"

    invoke-virtual {v9, v6, v8, v15}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 966
    const-string v8, "elapsedIdleTime"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v15, v7

    :try_start_4
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 967
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 966
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    const-string v6, "lastUsedByUserElapsedTime"

    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 969
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 968
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    const-string/jumbo v6, "screenIdleTime"

    move-object v7, v9

    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 971
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    const/4 v7, 0x0

    .line 970
    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 972
    const-string v6, "lastPredictedTime"

    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 973
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 972
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 974
    const-string v6, "appLimitBucket"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 975
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 974
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 976
    const-string v6, "bucketReason"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 977
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 976
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v6, v16

    if-eqz v16, :cond_1

    .line 979
    const-string v8, "lastJobRunTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    move-object v6, v15

    goto/16 :goto_6

    .line 982
    :cond_1
    :goto_2
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v8, v6, v17

    if-lez v8, :cond_2

    .line 983
    const-string v8, "lastRestrictionAttemptElapsedTime"

    .line 984
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 983
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    :cond_2
    const-string v6, "lastRestrictionAttemptReason"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 987
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 986
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v16, v6, v17

    if-lez v16, :cond_3

    .line 989
    const-string/jumbo v8, "nextEstimatedAppLaunchTime"

    .line 990
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 989
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    :cond_3
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    .line 993
    invoke-virtual {v9, v7, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    .line 996
    iget-object v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v17

    cmp-long v8, v17, v10

    if-gez v8, :cond_4

    move/from16 p3, v6

    move/from16 v19, v7

    goto :goto_4

    .line 1001
    :cond_4
    iget-object v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    move/from16 p3, v6

    const/4 v6, 0x0

    .line 1002
    invoke-virtual {v9, v6, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1003
    const-string v6, "bucket"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1004
    const-string v6, "expiry"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    invoke-virtual {v9, v7, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_4
    add-int/lit8 v7, v19, 0x1

    move/from16 v6, p3

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 1007
    invoke-virtual {v9, v7, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v7, 0x0

    .line 1009
    invoke-virtual {v9, v7, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move-object v7, v15

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v15, v7

    goto/16 :goto_1

    :cond_7
    move-object v15, v7

    move-object v7, v6

    .line 1012
    invoke-virtual {v9, v7, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    invoke-virtual {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V

    .line 1014
    invoke-virtual {v5, v15}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_3
    move-exception v0

    move-object v7, v6

    .line 1016
    :goto_6
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing app idle file for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public writeAppIdleTimes(J)V
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 934
    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V
    .locals 4

    .line 315
    const-string v0, "\n"

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getRestoreToRareAppsListFile(I)Ljava/io/File;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 323
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 330
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 332
    :catch_1
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    return-void
.end method

.method public final writeScreenOnTime()V
    .locals 6

    .line 261
    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 264
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 266
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 265
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    const/4 v2, 0x0

    .line 269
    :catch_1
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
