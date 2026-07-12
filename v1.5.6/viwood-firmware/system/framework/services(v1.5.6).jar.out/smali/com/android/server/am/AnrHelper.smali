.class public Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# static fields
.field public static final CONSECUTIVE_ANR_TIME_MS:J

.field public static final EXPIRED_REPORT_TIME_MS:J

.field public static final SELF_ONLY_AFTER_BOOT_MS:J

.field public static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field public static final sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final mAnrRecords:Ljava/util/ArrayList;

.field public final mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastAnrTimeMs:J

.field public mProcessingPid:I

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempDumpedPids:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$o4U1b8DdepzPilDk5ASRfiFAv34(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->lambda$appNotResponding$2(ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_5HmdP7xJVX9IY4uygDlAQ5zxQ(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrMainProcessDumpThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$y7RFlsVN6Rac_UO6nHdK_btKHW0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrAuxiliaryTaskExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuxiliaryTaskExecutor(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->scheduleBinderHeavyHitterAutoSamplerIfNecessary()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSELF_ONLY_AFTER_BOOT_MS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    .line 76
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 78
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    const/4 v0, 0x1

    .line 106
    sget-object v1, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 107
    invoke-static {v1, v2}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AnrHelper;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 113
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 114
    iput-object p2, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object p3, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 194
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move v2, p0

    move v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    .line 198
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v0
.end method


# virtual methods
.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V

    return-void
.end method

.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V
    .locals 13

    move-object/from16 v8, p7

    .line 129
    :try_start_0
    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingStarted()V

    .line 130
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 131
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockStarted()V

    .line 132
    iget-object v11, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockEnded()V

    if-nez v0, :cond_0

    .line 137
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip zero pid ANR, process="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    iget-object p0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 140
    :cond_0
    :try_start_2
    iget v1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v1, v0, :cond_1

    .line 141
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip duplicated ANR, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v11

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip ANR being predumped, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit v11

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 153
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v2, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v2, v0, :cond_3

    .line 154
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip queued ANR, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v11

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 163
    :cond_4
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 164
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->earlyDumpRequestSubmittedWithSize(I)V

    .line 165
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v8}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 174
    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordPlacingOnQueueWithSize(I)V

    .line 175
    iget-object v12, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 178
    :goto_2
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    :goto_3
    iget-object p1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 182
    throw p0
.end method

.method public final synthetic lambda$appNotResponding$2(ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .locals 0

    .line 168
    iget-object p2, p2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-static {p1, p2}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object p2

    .line 170
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final scheduleBinderHeavyHitterAutoSamplerIfNecessary()V
    .locals 8

    const-wide/16 v0, 0x40

    .line 272
    :try_start_0
    const-string/jumbo v2, "scheduleBinderHeavyHitterAutoSamplerIfNecessary()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 275
    iget-wide v4, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v6, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleBinderHeavyHitterAutoSampler()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 278
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 281
    throw p0
.end method

.method public final startAnrConsumerIfNeeded()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
