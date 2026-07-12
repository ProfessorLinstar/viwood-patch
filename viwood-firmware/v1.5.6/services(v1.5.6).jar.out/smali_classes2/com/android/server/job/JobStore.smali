.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# static fields
.field public static final DEBUG:Z

.field static final INVALID_UID:I = -0x2

.field static final JOB_FILE_SPLIT_PREFIX:Ljava/lang/String; = "jobs_"

.field public static final SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

.field public static final sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSingleton:Lcom/android/server/job/JobStore;

.field public static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentJobSetSize:I

.field public final mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mJobFileDirectory:Ljava/io/File;

.field public final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mJobsFile:Landroid/util/AtomicFile;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

.field public mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field public mRtcGood:Z

.field public mScheduledJob30MinHighWaterMark:I

.field public final mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

.field public mSplitFileMigrationNeeded:Z

.field public mUseSplitFiles:Z

.field public mWriteInProgress:Z

.field public final mWriteRunnable:Ljava/lang/Runnable;

.field public final mWriteScheduleLock:Ljava/lang/Object;

.field public mWriteScheduled:Z

.field public final mXmlTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$CUH2yIm-c34YKhc8Nam77Rkt44Q(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 16

    .line 266
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide/from16 v1, p0

    .line 269
    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 271
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 273
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    .line 274
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v12

    .line 275
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    .line 276
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    move-object/from16 v0, p2

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentJobSetSize(Lcom/android/server/job/JobStore;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventLogger(Lcom/android/server/job/JobStore;)Landroid/util/SystemConfigFileCommitEventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledJobHighWaterMarkLoggingRunnable(Lcom/android/server/job/JobStore;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitFileMigrationNeeded(Lcom/android/server/job/JobStore;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteInProgress(Lcom/android/server/job/JobStore;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentJobSetSize(Lcom/android/server/job/JobStore;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWriteScheduled(Lcom/android/server/job/JobStore;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/io/File;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeWriteStatusToDiskAsync(Lcom/android/server/job/JobStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateJobFilesAsync(Lcom/android/server/job/JobStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSPLIT_FILE_PATTERN()Ljava/util/regex/Pattern;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsScheduledJob30MinHighWaterMarkLogger()Lcom/android/modules/expresslog/Histogram;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 96
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 103
    const-string v0, "^jobs_\\d+.xml$"

    .line 104
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/high16 v2, 0x42c60000    # 99.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_scheduled_job_30_min_high_water_mark"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .locals 5

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 133
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 138
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 145
    iput v1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 149
    new-instance v2, Lcom/android/server/job/JobStore$1;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

    .line 643
    new-instance v3, Lcom/android/server/job/JobStore$2;

    invoke-direct {v3, p0}, Lcom/android/server/job/JobStore$2;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 190
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 191
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 194
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "system"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    new-instance p2, Ljava/io/File;

    const-string p3, "job"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 196
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 197
    new-instance p1, Landroid/util/SystemConfigFileCommitEventLogger;

    const-string p3, "jobs"

    invoke-direct {p1, p3}, Landroid/util/SystemConfigFileCommitEventLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 198
    new-instance p1, Ljava/io/File;

    const-string p3, "jobs.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 200
    new-instance p3, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {p3}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object p3, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 213
    invoke-virtual {p1}, Landroid/util/AtomicFile;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 215
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 217
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .locals 10

    .line 1076
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1077
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1078
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v4

    .line 1080
    :goto_0
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 1081
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v8, p1, v0

    .line 1083
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static extractUidFromJobFileName(Ljava/io/File;)I
    .locals 3

    .line 622
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 623
    const-string v0, "jobs_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    .line 625
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x5

    .line 627
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p0, :cond_0

    return v1

    :cond_0
    return p0

    :catch_0
    move-exception p0

    .line 633
    const-string v0, "JobStore"

    const-string v2, "Unexpected file name format"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .locals 4

    .line 166
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 171
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object p0

    .line 172
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .locals 2

    .line 180
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 181
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->init()V

    .line 182
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clearForTesting()V

    return-object v0
.end method

.method public static intArrayToString([I)Ljava/lang/String;
    .locals 4

    .line 596
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 597
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 598
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    .line 1087
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static stringToIntArray(Ljava/lang/String;)[I
    .locals 3

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [I

    return-object p0

    .line 612
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 613
    array-length v0, p0

    new-array v0, v0, [I

    .line 614
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 615
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 291
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 292
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeUpdateHighWaterMark()V

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 298
    :cond_1
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added job status to store: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public addForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 310
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeUpdateHighWaterMark()V

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 389
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 391
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public clearForTesting()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 400
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public countJobsForUid(I)I
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result p0

    return p0
.end method

.method public final createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .locals 1

    .line 234
    new-instance v0, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-direct {v0, p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    return-object v0
.end method

.method public final createJobFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 3

    .line 230
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Consumer;)V
    .locals 1

    .line 476
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobStore$JobSet;->get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    return-object p0
.end method

.method public getJobsBySourceUid(I)Landroid/util/ArraySet;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getJobsBySourceUid(ILjava/util/Set;)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    return-void
.end method

.method public getJobsByUid(I)Landroid/util/ArraySet;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getJobsByUid(ILjava/util/Set;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(ILjava/util/Set;)V

    return-void
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 261
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 265
    new-instance v2, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final init()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    return-void
.end method

.method public initAsync(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v3, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public jobTimesInflatedValid()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return p0
.end method

.method public final maybeUpdateHighWaterMark()V
    .locals 2

    .line 493
    iget v0, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    iget v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    if-ge v0, v1, :cond_0

    .line 494
    iput v1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    :cond_0
    return-void
.end method

.method public final maybeWriteStatusToDiskAsync()V
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_1

    .line 535
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 538
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 539
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 541
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final migrateJobFilesAsync()V
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 525
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 521
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 1

    .line 546
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 347
    :cond_1
    iget v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    if-eqz p2, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 349
    iget-object p2, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_2
    return v0
.end method

.method public removeForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public removeJobsOfUnlistedUsers([I)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfUnlistedUsers([I)V

    .line 374
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p1}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public runWorkAsync(Ljava/lang/Runnable;)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUseSplitFiles(Z)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    if-eq v1, p1, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 410
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUseSplitFilesForTesting(Z)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 422
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 423
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 425
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 427
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 428
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 429
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    return-void

    .line 425
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result p0

    return p0
.end method

.method public touchJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 379
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .locals 8

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 572
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 573
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 574
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_1

    const/4 p0, 0x0

    .line 577
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 580
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long/2addr v5, v0

    add-long/2addr v5, p1

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v4

    const/4 p0, 0x1

    return p0

    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public writeStatusToDiskForTesting()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 557
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 558
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 559
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 554
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "An asynchronous write is already scheduled."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
