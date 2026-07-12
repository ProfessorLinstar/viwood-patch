.class public Lcom/android/server/am/AnrHelper$AnrRecord;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# instance fields
.field public final mAboveSystem:Z

.field public final mActivityShortComponentName:Ljava/lang/String;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public final mFirstPidFilePromise:Ljava/util/concurrent/Future;

.field public final mIsContinuousAnr:Z

.field public final mParentProcess:Lcom/android/server/wm/WindowProcessController;

.field public final mParentShortComponentName:Ljava/lang/String;

.field public final mPid:I

.field public final mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

.field public final mTimestamp:J

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V
    .locals 2

    .line 301
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    .line 302
    iput-object p2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 303
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 304
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iput p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mUid:I

    .line 305
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    .line 306
    iput-object p5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 307
    iput-object p8, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    .line 308
    iput-object p4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 309
    iput-object p6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    .line 310
    iput-boolean p7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    .line 311
    iput-boolean p9, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    .line 312
    iput-object p10, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public appNotResponding(Z)V
    .locals 12

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingStarted()V

    .line 318
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    iget-object v7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAuxiliaryTaskExecutor(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    iget-object v11, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    move v9, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessErrorStateRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object p0, p0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object p0, p0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    .line 324
    throw p1
.end method
