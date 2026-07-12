.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final NOTIFICATION_TIMEOUT_MILLIS:J

.field public static final OP_BIND_TIMEOUT_MILLIS:J

.field public static final OP_TIMEOUT_MILLIS:J

.field public static final VERB_STRINGS:[Ljava/lang/String;

.field public static final sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAvailable:Z

.field public mAwaitingNotification:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCancelled:Z

.field public final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field public final mContext:Landroid/content/Context;

.field public mDeathMarkDebugReason:Ljava/lang/String;

.field public mDeathMarkInternalStopReason:I

.field public mDeathMarkStopReason:I

.field public mEstimatedDownloadBytes:J

.field public mEstimatedUploadBytes:J

.field public mExecutionStartTimeElapsed:J

.field public mInitialDownloadedBytesFromCalling:J

.field public mInitialDownloadedBytesFromSource:J

.field public mInitialUploadedBytesFromCalling:J

.field public mInitialUploadedBytesFromSource:J

.field public final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public mLastExecutionDurationStampTimeElapsed:J

.field public mLastUnsuccessfulFinishElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxExecutionTimeMillis:J

.field public mMinExecutionGuaranteeMillis:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mParams:Landroid/app/job/JobParameters;

.field public mPendingDebugStopReason:Ljava/lang/String;

.field public mPendingInternalStopReason:I

.field public mPendingNetworkChange:Landroid/net/Network;

.field public mPendingStopReason:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreferredUid:I

.field public mPreviousJobHadSuccessfulFinish:Z

.field public mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field public mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mRunningJobWorkType:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public mTimeoutElapsed:J

.field public mTransferredDownloadBytes:J

.field public mTransferredUploadBytes:J

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mVerb:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public service:Landroid/app/job/IJobService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoSetNotification(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doSetNotification(Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobServiceContext;->doUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobServiceContext;->doUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 96
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 97
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 108
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x4650

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    mul-int/lit16 v1, v0, 0x1f40

    int-to-long v1, v1

    .line 110
    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    const-wide/16 v1, 0x2710

    int-to-long v3, v0

    mul-long/2addr v3, v1

    .line 112
    sput-wide v3, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    .line 115
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/high16 v2, 0x40400000    # 3.0f

    const v3, 0x3fb33333    # 1.4f

    const/16 v4, 0x14

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    .line 118
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    const v5, 0x3fa7ae14    # 1.31f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v6, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 121
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v6, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 124
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v6, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 127
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 131
    const-string v0, "VERB_STOPPING"

    const-string v1, "VERB_FINISHED"

    const-string v2, "VERB_BINDING"

    const-string v3, "VERB_STARTING"

    const-string v4, "VERB_EXECUTING"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 2

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 239
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 325
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 327
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 328
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 329
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 330
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 331
    new-instance p4, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {p4, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 332
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 333
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 334
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 335
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 336
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 p1, 0x4

    .line 338
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method


# virtual methods
.method public final applyStoppedReasonLocked(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1753
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 1754
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 1755
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz p1, :cond_0

    .line 1756
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 1757
    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    :cond_0
    return-void
.end method

.method public final assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 6

    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1143
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1144
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1151
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1152
    const-string v2, "Caller no longer running"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1154
    const-string v2, ", last stopped "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget-wide v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1156
    const-string v0, " because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    .line 593
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    const-wide/32 v2, 0x10341a19

    .line 601
    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 604
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/job/JobServiceContext;->hasPermissionForDelivery(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public cancelExecutingJobLocked(IILjava/lang/String;)V
    .locals 0

    .line 664
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(IILjava/lang/String;)V

    return-void
.end method

.method public clearPreferredUid()V
    .locals 1

    const/4 v0, -0x1

    .line 700
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method

.method public final closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .locals 81

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1585
    iget v3, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    return-void

    .line 1588
    :cond_0
    sget-boolean v3, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v5, "JobServiceContext"

    if-eqz v3, :cond_1

    .line 1589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reschedule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1593
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 1594
    iget-object v8, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1595
    iget-wide v9, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->incrementCumulativeExecutionTime(J)V

    .line 1604
    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v29

    .line 1605
    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v15

    .line 1607
    iget v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v9, :cond_3

    if-eqz v3, :cond_2

    .line 1609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Job marked for death because of "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 1610
    invoke-static {v9}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1609
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_2
    iget v3, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 1615
    iget v5, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    goto :goto_0

    :cond_3
    move v5, v15

    move/from16 v3, v29

    :goto_0
    const/16 v9, 0xa

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v15, v9, :cond_4

    move v9, v10

    goto :goto_1

    :cond_4
    move v9, v11

    .line 1620
    :goto_1
    iput-boolean v9, v0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v9, :cond_5

    .line 1623
    iput-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 1625
    :cond_5
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v8, v15, v2}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    .line 1627
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 1628
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_6

    .line 1633
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v6

    .line 1636
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_7

    .line 1637
    new-array v9, v12, [I

    aput v2, v9, v11

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    aput v2, v9, v10

    goto :goto_2

    :cond_7
    new-array v9, v10, [I

    aput v2, v9, v11

    .line 1640
    :goto_2
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_8

    .line 1641
    new-array v2, v12, [Ljava/lang/String;

    aput-object v13, v2, v11

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v10

    :goto_3
    move-object v14, v13

    goto :goto_4

    .line 1642
    :cond_8
    new-array v2, v10, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v11

    goto :goto_3

    .line 1643
    :goto_4
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v13

    .line 1645
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v16

    .line 1646
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v17

    .line 1647
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v19

    .line 1648
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v20

    .line 1649
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v21

    .line 1650
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v22

    .line 1651
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v23

    .line 1652
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v24

    .line 1653
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v25

    .line 1654
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v26

    .line 1655
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v27

    iget-boolean v11, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 1658
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v30

    .line 1659
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v31

    .line 1660
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v32

    .line 1661
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v33

    .line 1662
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v34

    iget-object v14, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1663
    invoke-virtual {v14}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    move-result v36

    .line 1664
    invoke-virtual {v8, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v37

    .line 1665
    invoke-virtual {v8, v12}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v38

    .line 1666
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v39

    const/high16 v7, -0x80000000

    .line 1667
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v40

    .line 1668
    invoke-virtual {v8, v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v41

    const/high16 v7, 0x10000000

    .line 1669
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v42

    const/high16 v7, 0x4000000

    .line 1670
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v43

    move v7, v10

    move v12, v11

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move/from16 v80, v5

    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v44, v10, v4

    .line 1672
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v46

    iget-boolean v4, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 1674
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v48

    .line 1675
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v49

    .line 1676
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v51

    .line 1677
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v53

    .line 1678
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v55

    .line 1680
    invoke-static {v6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v56

    .line 1681
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v57

    .line 1682
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    sub-long v58, v5, v10

    .line 1684
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    sub-long v60, v5, v10

    .line 1686
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    sub-long v62, v5, v10

    .line 1688
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    sub-long v64, v5, v10

    .line 1690
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v66

    .line 1691
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v68

    .line 1692
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v70

    const/high16 v5, 0x200000

    .line 1693
    invoke-virtual {v8, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v71

    .line 1694
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v72

    .line 1695
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v73

    .line 1696
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v74

    .line 1697
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v75

    .line 1698
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v76

    .line 1699
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v77

    .line 1701
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    add-int/lit8 v78, v5, 0x1

    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1703
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 1702
    invoke-virtual {v5, v6, v10}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v79

    const/16 v10, 0x8

    const/4 v14, 0x0

    move/from16 v47, v4

    move-object v11, v9

    move/from16 v28, v12

    const/4 v4, 0x0

    move-object v12, v2

    const/4 v2, 0x0

    .line 1635
    invoke-static/range {v10 .. v79}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    const-wide/32 v5, 0x80000

    .line 1704
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    const-string v10, "JobScheduler"

    if-eqz v9, :cond_9

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v9

    .line 1705
    invoke-static {v5, v6, v10, v9}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1708
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-wide/16 v5, 0x1000

    .line 1710
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v9

    .line 1709
    invoke-static {v5, v6, v10, v9}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1713
    :cond_a
    :try_start_0
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    invoke-interface {v5, v6, v9, v15}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    :catch_0
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    invoke-virtual {v5, v0, v3, v8}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(Lcom/android/server/job/JobServiceContext;ILcom/android/server/job/controllers/JobStatus;)V

    .line 1720
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_b

    .line 1721
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1723
    :cond_b
    iget v5, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1724
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1725
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1726
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1727
    iput v2, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1728
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 1729
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v6, 0x4

    .line 1730
    iput v6, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1731
    iput-boolean v2, v0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1732
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1733
    iput-boolean v7, v0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 1734
    iput v2, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 1735
    iput v2, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 1736
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 1737
    iput-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 1738
    iput v2, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1739
    iput v2, v0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1740
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 1741
    iput-object v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 1742
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1743
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1744
    iget-object v4, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v0, v8, v2}, Lcom/android/server/job/JobSchedulerService;->informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1746
    :cond_c
    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    move/from16 v15, v80

    invoke-interface {v2, v8, v3, v15, v1}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IIZ)V

    .line 1748
    iget-object v1, v0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1, v0, v8, v5}, Lcom/android/server/job/JobConcurrencyManager;->onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    return-void
.end method

.method public final doAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .locals 0

    .line 836
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 837
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 838
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 840
    :cond_0
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 841
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final doAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .locals 0

    .line 847
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 848
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 849
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 851
    :cond_0
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 852
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 0

    .line 860
    const-string p2, "finished start"

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 0

    const/4 p2, 0x0

    .line 856
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .locals 3

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1210
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1211
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1213
    :cond_0
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 1214
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1214
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw p0
.end method

.method public doCallbackLocked(ZLjava/lang/String;)V
    .locals 5

    .line 1222
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCallback of : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1228
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1229
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 1232
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public final doCancelLocked(IILjava/lang/String;)V
    .locals 4

    .line 1243
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1253
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    .line 1255
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 1257
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1258
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1259
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    return-void

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 1266
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1268
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    .line 1244
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 1245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too late to process cancel for context (verb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ignoring."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .locals 3

    .line 895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 897
    :try_start_0
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 898
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 901
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 903
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 904
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 905
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 907
    :cond_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 908
    :goto_0
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    throw p0
.end method

.method public doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .locals 6

    .line 864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 866
    :try_start_0
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 867
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 868
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 870
    :cond_0
    :try_start_2
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 876
    :cond_1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object p1

    if-nez p1, :cond_2

    .line 877
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 878
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v3, "last work dequeued"

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 882
    const-string v2, "last work dequeued"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 885
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, p0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 887
    :cond_3
    :goto_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 874
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 888
    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    throw p0
.end method

.method public doHandleAbandonedJob(Lcom/android/server/job/JobServiceContext$JobCallback;I)V
    .locals 4

    .line 804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 807
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 810
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 812
    :cond_0
    :try_start_2
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 815
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 817
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    .line 818
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 819
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->setAbandoned(Z)V

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    const-string p2, "abandonedJob:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 p1, 0x20000

    invoke-static {p1, p2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 829
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 818
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 829
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    throw p0
.end method

.method public doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .locals 5

    .line 783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 785
    :try_start_0
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 787
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 789
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v2, "app called jobFinished"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 792
    const-string p1, "app called jobFinished"

    invoke-virtual {p0, p3, p1}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 793
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 793
    :goto_0
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    throw p0
.end method

.method public doServiceBoundLocked()V
    .locals 0

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    return-void
.end method

.method public final doSetNotification(Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V
    .locals 10

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1011
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1014
    :try_start_0
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1015
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1016
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1018
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    if-ne v4, p1, :cond_2

    .line 1022
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1023
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobNotificationCoordinator;->enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V

    .line 1026
    iget-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1027
    iput-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 1028
    iget p0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 1029
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1032
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1034
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1019
    :cond_2
    :try_start_3
    const-string p0, "JobServiceContext"

    const-string p1, "Calling UID isn\'t the same as running job\'s UID..."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t post notification on behalf of another app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1032
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 1034
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    throw p0
.end method

.method public final doUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    .line 917
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 918
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 919
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 921
    :cond_0
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 923
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 921
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 924
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 925
    invoke-static {p4, p5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 924
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 926
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 927
    invoke-static {p6, p7}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 926
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 928
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    cmp-long p1, p4, v2

    if-eqz p1, :cond_2

    cmp-long p1, v0, p4

    if-gez p1, :cond_1

    .line 931
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 934
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 931
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    cmp-long p1, v0, p4

    if-lez p1, :cond_2

    .line 936
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 939
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 936
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 942
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    cmp-long p1, p6, v2

    if-eqz p1, :cond_4

    cmp-long p1, v0, p6

    if-gez p1, :cond_3

    .line 945
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 948
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 945
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    cmp-long p1, v0, p6

    if-lez p1, :cond_4

    .line 950
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 953
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 950
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 956
    :cond_4
    :goto_1
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 957
    iput-wide p6, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 958
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final doUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    .line 964
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 965
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 966
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 968
    :cond_0
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 970
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 968
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 971
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 972
    invoke-static {p4, p5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 971
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 973
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 974
    invoke-static {p6, p7}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 973
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 975
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    cmp-long p1, p4, v2

    if-eqz p1, :cond_2

    cmp-long p1, v0, p4

    if-gez p1, :cond_1

    .line 978
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 981
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 978
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    cmp-long p1, v0, p4

    if-lez p1, :cond_2

    .line 983
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 986
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 983
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 989
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    cmp-long p1, p6, v2

    if-eqz p1, :cond_4

    cmp-long p1, v0, p6

    if-gez p1, :cond_3

    .line 992
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 995
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 992
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    cmp-long p1, v0, p6

    if-lez p1, :cond_4

    .line 997
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1000
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 997
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1003
    :cond_4
    :goto_1
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 1004
    iput-wide p6, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 1005
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .locals 4

    .line 1814
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1816
    const-string v0, "inactive since "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1818
    const-string p2, ", stopped because: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1821
    :cond_0
    const-string p0, "inactive"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1824
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1827
    const-string v0, "Running for: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long v0, p2, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1829
    const-string v0, ", timeout at: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1831
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1832
    const-string v0, "Remaining execution limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1835
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1836
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1838
    const-string p2, "]"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz p2, :cond_2

    .line 1840
    const-string p2, " Pending stop because "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1842
    const-string p2, "/"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1843
    iget p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1844
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1848
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 79

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 351
    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "JobServiceContext"

    const-string v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v3

    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    const/4 v0, -0x1

    .line 357
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 359
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    move/from16 v0, p2

    .line 360
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 361
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    const/4 v5, 0x0

    .line 362
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 364
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_1

    move v15, v6

    goto :goto_0

    :cond_1
    move v15, v4

    .line 367
    :goto_0
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 369
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    .line 372
    :goto_1
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 374
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v19, v0

    goto :goto_2

    :cond_3
    move-object/from16 v19, v5

    .line 376
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 377
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object/from16 v20, v7

    goto :goto_3

    :cond_4
    move-object/from16 v20, v5

    .line 378
    :goto_3
    new-instance v7, Landroid/app/job/JobParameters;

    iget-object v8, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    .line 379
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 380
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v14

    .line 381
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v16

    .line 382
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v17

    invoke-direct/range {v7 .. v20}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 384
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 385
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 386
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 387
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 388
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 389
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 390
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    const-wide/16 v7, 0x0

    .line 391
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 392
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 394
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_5

    .line 396
    iget-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v11, v9

    const/16 v0, 0x1f40

    .line 397
    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 398
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_5

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    const-string v9, "Starting job deferred for standby by "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 402
    const-string v9, " ms : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v9, "JobServiceContext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 412
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 413
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-virtual {v0, v6, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 414
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 415
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v9

    .line 414
    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 416
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 417
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 419
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 420
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v9, 0x4

    .line 423
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserBgRestricted()Z

    move-result v10

    if-nez v10, :cond_7

    .line 434
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v10

    if-eqz v10, :cond_6

    const-wide v10, 0x100038001L

    goto :goto_4

    :cond_6
    const-wide/32 v10, 0x18001

    :goto_4
    move v12, v6

    goto :goto_7

    :catch_0
    move-exception v0

    move v12, v4

    goto :goto_8

    .line 440
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-wide/32 v10, 0x8105

    :goto_5
    move v12, v4

    goto :goto_7

    .line 442
    :cond_9
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_a

    const-wide/32 v10, 0x38005

    goto :goto_5

    :cond_a
    const-wide/32 v10, 0x18005

    goto :goto_5

    .line 449
    :goto_7
    :try_start_2
    iget-object v13, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 450
    invoke-static {v10, v11}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v10

    .line 451
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 449
    invoke-virtual {v13, v0, v1, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 456
    :goto_8
    :try_start_3
    const-string v10, "JobServiceContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Job service "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " cannot be executed: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_9
    if-nez v0, :cond_c

    .line 461
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 462
    const-string v0, "JobServiceContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_b
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 465
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 466
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 467
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 468
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 469
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 470
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 471
    iput v9, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 472
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 473
    monitor-exit v3

    return v4

    .line 475
    :cond_c
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 476
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 479
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    .line 480
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    .line 482
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    .line 483
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    .line 485
    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_d

    .line 490
    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v10

    .line 494
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    filled-new-array {v0, v13}, [I

    move-result-object v0

    goto :goto_a

    :cond_e
    filled-new-array {v0}, [I

    move-result-object v0

    .line 497
    :goto_a
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 498
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v13

    :goto_b
    move v14, v10

    goto :goto_c

    .line 499
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    .line 500
    :goto_c
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v13

    .line 503
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v13

    move/from16 v17, v14

    move/from16 v33, v15

    .line 504
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v14

    move-object/from16 v18, v16

    .line 505
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v16

    move/from16 v19, v17

    .line 506
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v17

    move-object/from16 v20, v18

    .line 507
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v18

    move/from16 v21, v19

    .line 508
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v19

    move-object/from16 v22, v20

    .line 509
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v20

    move/from16 v23, v21

    .line 510
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v21

    move-object/from16 v24, v22

    .line 511
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v22

    move/from16 v25, v23

    .line 512
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v23

    move-object/from16 v26, v24

    .line 513
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v24

    move/from16 v27, v25

    .line 514
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v25

    .line 516
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v28

    .line 517
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v29

    move/from16 v30, v27

    move/from16 v27, v28

    move/from16 v28, v29

    .line 518
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v29

    move/from16 v31, v30

    .line 519
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v30

    .line 520
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v34

    move-wide/from16 v77, v34

    move/from16 v35, v31

    move-wide/from16 v31, v77

    .line 522
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v34

    move/from16 p2, v6

    const/4 v6, 0x2

    .line 523
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 524
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    const/high16 v11, -0x80000000

    .line 525
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v37

    .line 526
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v38

    const/high16 v9, 0x10000000

    .line 527
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v39

    const/high16 v9, 0x4000000

    .line 528
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v40

    iget-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move v9, v6

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long/2addr v7, v5

    .line 530
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v43

    .line 531
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v44

    .line 532
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v45

    .line 533
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v46

    .line 534
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v48

    .line 535
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v50

    .line 536
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v52

    .line 537
    invoke-static/range {v35 .. v35}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v53

    .line 538
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v54

    .line 543
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v63

    .line 544
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v65

    .line 545
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v67

    const/high16 v5, 0x200000

    .line 546
    invoke-virtual {v2, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v68

    .line 547
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v69

    .line 548
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v70

    .line 549
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v71

    .line 550
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v72

    .line 551
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v73

    .line 552
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v74

    .line 554
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    add-int/lit8 v75, v5, 0x1

    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 556
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v11

    .line 555
    invoke-virtual {v5, v6, v11}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v76

    move-wide/from16 v41, v7

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v11, 0x1

    move v8, v12

    const/4 v12, -0x1

    move/from16 v35, v9

    move-object/from16 v9, v26

    const/16 v26, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    move/from16 v77, v8

    move-object v8, v0

    move/from16 v0, v77

    .line 493
    invoke-static/range {v7 .. v76}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    .line 557
    sget-object v7, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 558
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x80000

    .line 559
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 562
    const-string v10, "JobScheduler"

    .line 563
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTag()Ljava/lang/String;

    move-result-object v11

    .line 564
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v12

    .line 562
    invoke-static {v8, v9, v10, v11, v12}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 566
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 568
    const-string v8, "JobScheduler"

    .line 569
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v9

    .line 570
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    const-wide/16 v11, 0x1000

    .line 568
    invoke-static {v11, v12, v8, v9, v10}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    :cond_11
    :try_start_4
    iget-object v8, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 577
    :catch_2
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v8

    .line 578
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 579
    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 580
    iput-boolean v4, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    .line 581
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 582
    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 585
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 586
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 587
    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 588
    monitor-exit v3

    return p2

    .line 589
    :goto_d
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getEstimatedNetworkBytes()Landroid/util/Pair;
    .locals 3

    .line 774
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getExecutionStartTimeElapsed()J
    .locals 2

    .line 708
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method public getId()I
    .locals 0

    .line 704
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getPreferredUid()I
    .locals 0

    .line 696
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return p0
.end method

.method public getRemainingGuaranteedTimeMs(J)J
    .locals 4

    .line 716
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public final getRunningJobNameLocked()Ljava/lang/String;
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "<null>"

    return-object p0
.end method

.method public getRunningJobWorkType()I
    .locals 0

    .line 650
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    return p0
.end method

.method public getTransferredNetworkBytes()Landroid/util/Pair;
    .locals 3

    .line 779
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final handleCancelLocked(Ljava/lang/String;)V
    .locals 4

    .line 1376
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    .line 1393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancelling a job without a valid verb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1387
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    .line 1383
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final handleFinishedLocked(ZLjava/lang/String;)V
    .locals 2

    .line 1353
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1356
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public handleOpTimeoutLocked()V
    .locals 10

    .line 1402
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    const-wide/32 v3, 0xf6461b8

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v7, "JobServiceContext"

    if-eq v1, v2, :cond_1

    if-eq v1, v6, :cond_0

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling timeout for an invalid job state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v1, "invalid timeout"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1434
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 1433
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1428
    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    const-string/jumbo v4, "timed out while stopping"

    const-string v5, "No response to onStopJob"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1437
    :cond_1
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz v1, :cond_3

    .line 1438
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1442
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1443
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    const/4 v1, 0x0

    .line 1444
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    goto :goto_0

    .line 1446
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS was waiting to stop this job. Sending onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    .line 1454
    :cond_3
    :goto_0
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v3, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v3, v1

    .line 1456
    iget-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v1, v8

    .line 1458
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v3, v8, v3

    if-ltz v3, :cond_5

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client timed out while executing (no jobFinished received). Sending onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeout while executing"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "client timed out"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-wide/32 v4, 0x163457ac

    .line 1473
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    .line 1472
    invoke-static {v4, v5, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1474
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isAbandoned()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1478
    const-string v1, " and maybe abandoned"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    const/16 v1, 0xd

    goto :goto_1

    :cond_4
    move v1, v6

    .line 1482
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1482
    invoke-virtual {v4, v6, v1, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1484
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    :cond_5
    cmp-long v1, v8, v1

    if-ltz v1, :cond_7

    .line 1488
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1, p0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping client after min execution time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1497
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    .line 1499
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " continue to run past min execution time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    .line 1503
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz v1, :cond_8

    .line 1504
    const-string/jumbo v5, "required notification not provided"

    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    const-string/jumbo v4, "timed out while stopping"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1511
    :cond_8
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v1, v8, v1

    const-wide/32 v3, 0x493e0

    cmp-long v3, v1, v3

    if-gez v3, :cond_9

    .line 1514
    const-string v3, "Unexpected op timeout while EXECUTING"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_9
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->incrementCumulativeExecutionTime(J)V

    .line 1518
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1519
    iput-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    .line 1416
    :cond_a
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1422
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 1421
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1416
    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    const-string/jumbo v4, "timed out while starting"

    const-string v5, "No response to onStartJob"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1405
    :cond_b
    const-string v5, "Timed out while trying to bind"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    const-string/jumbo v4, "timed out while binding"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleServiceBoundLocked()V
    .locals 4

    .line 1274
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceBound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v2, :cond_1

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1280
    const-string/jumbo v1, "started job not pending"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1283
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_2
    const-string v0, "cancelled while waiting for bind"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1292
    :cond_3
    :try_start_0
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1294
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1299
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleStartedLocked(Z)V
    .locals 3

    .line 1313
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 1339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1315
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1318
    const-string/jumbo v0, "onStartJob returned false"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    return-void

    .line 1321
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz p1, :cond_3

    .line 1322
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 1323
    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    .line 1329
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1330
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1331
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1332
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    .line 1334
    :cond_4
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1335
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V

    :cond_5
    return-void
.end method

.method public final hasPermissionForDelivery(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 614
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string/jumbo v6, "network info via JS"

    const/4 v2, -0x1

    move v3, p1

    move-object v4, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public informOfNetworkChangeLocked(Landroid/net/Network;)V
    .locals 4

    .line 720
    const-string v0, "JobServiceContext"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 725
    const-string p0, "Skipping network change call because of missing permissions"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 729
    :cond_0
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onNetworkChanged for a job that isn\'t started. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_3

    .line 734
    :cond_1
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    return-void

    .line 739
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p1}, Landroid/app/job/JobParameters;->setNetwork(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 740
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 741
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v1}, Landroid/app/job/IJobService;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 743
    const-string v1, "Error sending onNetworkChanged to client."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    const-string p1, "host crashed when trying to inform of network change"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public isWithinExecutionGuaranteeTime()Z
    .locals 6

    .line 751
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public markForProcessDeathLocked(IILjava/lang/String;)V
    .locals 3

    .line 674
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    const-string v2, "JobServiceContext"

    if-ne v0, v1, :cond_0

    .line 675
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too late to mark for death (verb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ignoring."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 680
    :cond_0
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 682
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for death because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 686
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 687
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v0

    if-nez v0, :cond_2

    .line 691
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1085
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_0

    .line 1087
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1089
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1091
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1090
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    :cond_1
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :goto_0
    const-string p1, "binding died"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1097
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_0

    .line 1104
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1106
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1108
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1110
    :cond_1
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    const-string/jumbo p1, "null binding"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1116
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_1

    .line 1054
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 1061
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1055
    :cond_1
    :goto_0
    const-string p1, "connected for different component"

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1057
    monitor-exit v0

    return-void

    .line 1061
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1067
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1068
    :try_start_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_1

    .line 1074
    const-string v1, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    .line 1077
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1074
    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1079
    :cond_1
    :goto_0
    const-string/jumbo v0, "unexpectedly disconnected"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1080
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 1563
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 p3, 0x0

    const/16 v0, 0xc

    invoke-virtual {p2, p3, v0, p4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_0
    if-eqz p6, :cond_1

    .line 1569
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p6, p3, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 1570
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1571
    invoke-static {p5}, Lcom/android/internal/os/TimeoutRecord;->forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p5

    .line 1569
    invoke-virtual {p2, p6, p3, p5}, Landroid/app/ActivityManagerInternal;->appNotResponding(Ljava/lang/String;ILcom/android/internal/os/TimeoutRecord;)V

    .line 1573
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public final removeOpTimeOutLocked()V
    .locals 1

    .line 1810
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleOpTimeOutLocked()V
    .locals 7

    .line 1768
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1771
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1796
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    goto :goto_1

    .line 1774
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v0

    .line 1776
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 1778
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_1
    sub-long v2, v0, v4

    .line 1784
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz v0, :cond_2

    .line 1785
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_2
    const-wide/32 v0, 0x493e0

    .line 1787
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1792
    :cond_3
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 1799
    :goto_1
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time out for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1801
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' jId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1802
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1800
    const-string v3, "JobServiceContext"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1805
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1806
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-void
.end method

.method public sendStopMessageLocked(Ljava/lang/String;)V
    .locals 3

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1538
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    const-string v2, "JobServiceContext"

    if-eq v0, v1, :cond_0

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1540
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1544
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1545
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1546
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1547
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1549
    const-string v0, "Error sending onStopJob to client."

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 1551
    const-string v0, "host crashed when trying to stop"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public setJobParamsLockedForTest(Landroid/app/job/JobParameters;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method public setPendingStopReasonLockedForTest(I)V
    .locals 0

    .line 645
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    return-void
.end method

.method public setRunningCallbackLockedForTest(Lcom/android/server/job/JobServiceContext$JobCallback;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-void
.end method

.method public setRunningJobLockedForTest(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-void
.end method

.method public stopIfExecutingLocked(Ljava/lang/String;ILjava/lang/String;ZIII)Z
    .locals 2

    .line 758
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 759
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    .line 760
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 761
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 762
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p5, p1, :cond_3

    .line 763
    :cond_2
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 764
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string/jumbo p2, "stop from shell"

    invoke-virtual {p1, p6, p7, p2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 765
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq p0, p1, :cond_1

    .line 1126
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1127
    const-string p0, "JobServiceContext"

    const-string p1, "Stale callback received, ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
