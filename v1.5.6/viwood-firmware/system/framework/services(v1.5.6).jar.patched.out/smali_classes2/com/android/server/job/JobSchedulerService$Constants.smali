.class public Lcom/android/server/job/JobSchedulerService$Constants;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# static fields
.field public static final DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

.field public static final DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

.field public static final DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field public static final DEFAULT_RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J = 0x1b7740L

.field public static final DEFAULT_RUNTIME_MIN_EJ_GUARANTEE_MS:J = 0x2bf20L

.field public static final DEFAULT_RUNTIME_MIN_GUARANTEE_MS:J = 0x927c0L

.field public static final DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

.field public static final DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

.field public static final DEFAULT_RUNTIME_UI_LIMIT_MS:J


# instance fields
.field public ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

.field public API_QUOTA_SCHEDULE_COUNT:I

.field public API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

.field public API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

.field public API_QUOTA_SCHEDULE_WINDOW_MS:J

.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

.field public CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

.field public CONN_PREFETCH_RELAX_FRAC:F

.field public CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

.field public CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

.field public CONN_USE_CELL_SIGNAL_STRENGTH:Z

.field public ENABLE_API_QUOTAS:Z

.field public ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

.field public EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

.field public HEAVY_USE_FACTOR:F

.field public MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

.field public MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

.field public MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

.field public MIN_EXP_BACKOFF_TIME_MS:J

.field public MIN_LINEAR_BACKOFF_TIME_MS:J

.field public MIN_READY_CPU_ONLY_JOBS_COUNT:I

.field public MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field public MODERATE_USE_FACTOR:F

.field public PERSIST_IN_SPLIT_FILES:Z

.field public PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

.field public RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

.field public RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

.field public RUNTIME_MIN_EJ_GUARANTEE_MS:J

.field public RUNTIME_MIN_GUARANTEE_MS:J

.field public RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

.field public RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

.field public RUNTIME_MIN_UI_GUARANTEE_MS:J

.field public RUNTIME_UI_LIMIT_MS:J

.field public RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

.field public SYSTEM_STOP_TO_FAILURE_RATIO:I


# direct methods
.method public static bridge synthetic -$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateApiQuotaConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateBackoffConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateBatchingConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConnectivityConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePersistingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updatePersistingConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updatePrefetchConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateRuntimeConstantsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->updateUseFactorConstantsLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 746
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    div-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    .line 747
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 748
    div-int/lit8 v1, v0, 0x3

    const/4 v3, 0x5

    .line 749
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 763
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 768
    div-int/2addr v0, v2

    .line 770
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    .line 768
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const-wide/32 v0, 0x1499700

    const-wide/32 v2, 0x927c0

    .line 796
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    const-wide/32 v4, 0x2932e00

    const-wide/32 v6, 0x1b7740

    .line 798
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    .line 802
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    sget v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 817
    sget v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-wide/32 v0, 0x1c61a0

    .line 823
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    .line 829
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const v2, 0x3f666666    # 0.9f

    .line 834
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 838
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide/16 v3, 0x2710

    .line 843
    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 847
    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    const/4 v3, 0x3

    .line 852
    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 857
    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    .line 863
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 868
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    const/4 v4, 0x1

    .line 873
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    const-wide/32 v5, 0xea60

    .line 878
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 884
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    .line 890
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 895
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    const-wide/32 v0, 0x36ee80

    .line 903
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 909
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const/16 v0, 0xfa

    .line 913
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 917
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 921
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 932
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    const/4 v1, 0x2

    .line 937
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    const/4 v1, 0x5

    .line 943
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 949
    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    const/16 v1, 0xa

    .line 955
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    const-wide/32 v1, 0x5265c00

    .line 963
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 970
    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    const-wide/32 v5, 0x1499700

    .line 975
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    const-wide/32 v5, 0x1b7740

    .line 979
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    const-wide/32 v5, 0x927c0

    .line 984
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-wide/32 v5, 0x2bf20

    .line 989
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 994
    sget-wide v5, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 1000
    sget-wide v5, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    const v3, 0x3faccccd    # 1.35f

    .line 1007
    iput v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 1015
    sget-wide v5, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 1022
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    .line 1027
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 1034
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    const v0, 0x186a0

    .line 1039
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->copyTransportBatchThresholdDefaults()V

    return-void
.end method


# virtual methods
.method public final copyTransportBatchThresholdDefaults()V
    .locals 4

    .line 1152
    sget-object v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 1154
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1155
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1153
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1289
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1291
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "min_ready_cpu_only_jobs_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1292
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 1293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1292
    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1294
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    .line 1295
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1294
    const-string/jumbo v1, "max_cpu_only_job_batch_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1296
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 1297
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1296
    const-string/jumbo v1, "max_non_active_job_batch_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1297
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1298
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "heavy_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1299
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "moderate_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1301
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_linear_backoff_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1302
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_exp_backoff_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1303
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "system_stop_to_failure_ratio"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1304
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    .line 1305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1304
    const-string v1, "abandoned_job_timeouts_before_aggressive_backoff"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1306
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_congestion_delay_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1307
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_prefetch_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1308
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "conn_use_cell_signal_strength"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1309
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1311
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "conn_low_signal_strength_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1313
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conn_transport_batch_threshold"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1315
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    .line 1316
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1315
    const-string v1, "conn_max_connectivity_job_batch_delay_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1317
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 1318
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1317
    const-string/jumbo v1, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_api_quotas"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1321
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "aq_schedule_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1322
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "aq_schedule_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 1324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1323
    const-string v1, "aq_schedule_throw_exception"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1325
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 1326
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1325
    const-string v1, "aq_schedule_return_failure"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_execution_safeguards_udc"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1330
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 1331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1330
    const-string v1, "es_u_timeout_uij_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1332
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 1333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1332
    const-string v1, "es_u_timeout_ej_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1334
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    .line 1335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1334
    const-string v1, "es_u_timeout_reg_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1336
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    .line 1337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1336
    const-string v1, "es_u_timeout_total_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1338
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 1339
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1338
    const-string v1, "es_u_timeout_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1339
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1340
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    .line 1341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1340
    const-string v1, "es_u_anr_count"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1342
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    .line 1343
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1342
    const-string v1, "es_u_anr_window_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1345
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1346
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_ej_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1347
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_free_quota_max_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1349
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_min_ui_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1350
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_ui_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1351
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 1352
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1351
    const-string/jumbo v1, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1353
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 1354
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1353
    const-string/jumbo v1, "runtime_min_ui_data_transfer_guarantee_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1355
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "runtime_cumulative_ui_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1356
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 1357
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1356
    const-string/jumbo v1, "runtime_use_data_estimates_for_limits"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1359
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "persist_in_split_files"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1360
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "max_num_persisted_job_work_items"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    .line 1361
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1363
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x1050000001dL

    .line 1367
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1030000001eL

    .line 1369
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10100000008L

    .line 1371
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10100000009L

    .line 1372
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10300000011L

    .line 1374
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000012L

    .line 1375
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10100000015L

    .line 1376
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10100000016L

    .line 1377
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1080000001fL

    .line 1379
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000020L

    .line 1380
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000021L

    .line 1381
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10800000022L

    .line 1382
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000023L

    .line 1384
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public final updateApiQuotaConstantsLocked()V
    .locals 7

    .line 1176
    const-string v0, "jobscheduler"

    const-string v1, "enable_api_quotas"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 1178
    const-string v1, "enable_execution_safeguards_udc"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 1183
    const-string v1, "aq_schedule_count"

    const/16 v3, 0xfa

    .line 1184
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1183
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 1186
    const-string v1, "aq_schedule_window_ms"

    const-wide/32 v3, 0xea60

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 1189
    const-string v1, "aq_schedule_throw_exception"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 1193
    const-string v1, "aq_schedule_return_failure"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 1200
    const-string v1, "es_u_timeout_uij_count"

    const/4 v3, 0x2

    .line 1201
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1200
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 1204
    const-string v1, "es_u_timeout_ej_count"

    const/4 v4, 0x5

    .line 1205
    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1204
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 1209
    const-string v1, "es_u_timeout_reg_count"

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1208
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    .line 1212
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    iget v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 1213
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1212
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1215
    const-string v3, "es_u_timeout_total_count"

    const/16 v5, 0xa

    .line 1216
    invoke-static {v0, v3, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1215
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    .line 1219
    const-string v1, "es_u_timeout_window_ms"

    const-wide/32 v5, 0x5265c00

    invoke-static {v0, v1, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 1223
    const-string v1, "es_u_anr_count"

    .line 1224
    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1223
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    .line 1227
    const-string v1, "es_u_anr_window_ms"

    const-wide/32 v2, 0x1499700

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    return-void
.end method

.method public final updateBackoffConstantsLocked()V
    .locals 6

    .line 1082
    const-string v0, "jobscheduler"

    const-string/jumbo v1, "min_linear_backoff_time_ms"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 1085
    const-string/jumbo v1, "min_exp_backoff_time_ms"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 1088
    const-string/jumbo v1, "system_stop_to_failure_ratio"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 1091
    const-string v1, "abandoned_job_timeouts_before_aggressive_backoff"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    return-void
.end method

.method public final updateBatchingConstantsLocked()V
    .locals 7

    .line 1048
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    div-int/lit8 v1, v0, 0x3

    const-string/jumbo v2, "min_ready_cpu_only_jobs_count"

    sget v3, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 1050
    const-string v4, "jobscheduler"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1049
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 1056
    div-int/lit8 v0, v0, 0x3

    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    sget v3, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 1058
    invoke-static {v4, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1057
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 1062
    const-string/jumbo v0, "max_cpu_only_job_batch_delay_ms"

    const-wide/32 v1, 0x1c61a0

    invoke-static {v4, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    .line 1066
    const-string/jumbo v0, "max_non_active_job_batch_delay_ms"

    invoke-static {v4, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    return-void
.end method

.method public final updateConnectivityConstantsLocked()V
    .locals 9

    .line 1099
    const-string v0, "JobScheduler"

    const-string v1, "jobscheduler"

    const-string v2, "conn_congestion_delay_frac"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 1102
    const-string v2, "conn_prefetch_relax_frac"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 1105
    const-string v2, "conn_use_cell_signal_strength"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    .line 1109
    const-string v2, "conn_update_all_jobs_min_interval_ms"

    const-wide/32 v5, 0xea60

    invoke-static {v1, v2, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 1113
    const-string v2, "conn_low_signal_strength_relax_frac"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    .line 1117
    const-string v2, "conn_transport_batch_threshold"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v5, 0x2c

    invoke-direct {v3, v5}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 1122
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1124
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v3}, Landroid/util/KeyValueListParser;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_0

    .line 1127
    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->keyAt(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1132
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    sget v8, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    div-int/lit8 v8, v8, 0x3

    .line 1134
    invoke-virtual {v3, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1133
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    .line 1132
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1136
    :try_start_2
    const-string v6, "Bad transport string"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1140
    :goto_2
    const-string v3, "Bad string for conn_transport_batch_threshold"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->copyTransportBatchThresholdDefaults()V

    .line 1144
    :cond_0
    const-string v0, "conn_max_connectivity_job_batch_delay_ms"

    const-wide/32 v2, 0x1c61a0

    .line 1145
    invoke-static {v1, v0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 1144
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    return-void
.end method

.method public final updatePersistingConstantsLocked()V
    .locals 3

    .line 1160
    const-string/jumbo v0, "persist_in_split_files"

    const/4 v1, 0x1

    const-string v2, "jobscheduler"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 1162
    const-string/jumbo v0, "max_num_persisted_job_work_items"

    const v1, 0x186a0

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    return-void
.end method

.method public final updatePrefetchConstantsLocked()V
    .locals 4

    .line 1169
    const-string/jumbo v0, "prefetch_force_batch_relax_threshold_ms"

    const-wide/32 v1, 0x36ee80

    const-string v3, "jobscheduler"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    return-void
.end method

.method public final updateRuntimeConstantsLocked()V
    .locals 9

    .line 1234
    const-string/jumbo v7, "runtime_cumulative_ui_limit_ms"

    const-string/jumbo v8, "runtime_use_data_estimates_for_limits"

    const-string/jumbo v0, "runtime_free_quota_max_limit_ms"

    const-string/jumbo v1, "runtime_min_guarantee_ms"

    const-string/jumbo v2, "runtime_min_ej_guarantee_ms"

    const-string/jumbo v3, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    const-string/jumbo v4, "runtime_min_ui_guarantee_ms"

    const-string/jumbo v5, "runtime_ui_limit_ms"

    const-string/jumbo v6, "runtime_min_ui_data_transfer_guarantee_ms"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1246
    const-string/jumbo v1, "runtime_min_guarantee_ms"

    const-wide/32 v2, 0x927c0

    .line 1247
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1246
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 1250
    const-string/jumbo v1, "runtime_min_ej_guarantee_ms"

    const-wide/32 v2, 0x2bf20

    .line 1251
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    .line 1250
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 1253
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-string/jumbo v3, "runtime_free_quota_max_limit_ms"

    const-wide/32 v4, 0x1b7740

    .line 1254
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1253
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 1257
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-string/jumbo v3, "runtime_min_ui_guarantee_ms"

    sget-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 1258
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1257
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 1261
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    const-string/jumbo v5, "runtime_ui_limit_ms"

    sget-wide v6, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    .line 1263
    invoke-virtual {v0, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1262
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1261
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 1266
    const-string/jumbo v1, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    const v2, 0x3faccccd    # 1.35f

    .line 1267
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1266
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 1272
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    const-string/jumbo v3, "runtime_min_ui_data_transfer_guarantee_ms"

    sget-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 1274
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1272
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 1278
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    const-string/jumbo v3, "runtime_cumulative_ui_limit_ms"

    const-wide/32 v4, 0x5265c00

    .line 1279
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1278
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    .line 1283
    const-string/jumbo v1, "runtime_use_data_estimates_for_limits"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    return-void
.end method

.method public final updateUseFactorConstantsLocked()V
    .locals 3

    .line 1073
    const-string v0, "heavy_use_factor"

    const v1, 0x3f666666    # 0.9f

    const-string v2, "jobscheduler"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 1076
    const-string/jumbo v0, "moderate_use_factor"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    return-void
.end method
