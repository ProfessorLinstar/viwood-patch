.class public final Lcom/android/server/cpu/CpuMonitorService;
.super Lcom/android/server/SystemService;
.source "CpuMonitorService.java"


# static fields
.field public static final CACHE_DURATION_MILLISECONDS:J

.field public static final DEBUG:Z

.field public static final DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

.field public static final LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

.field public static final NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

.field public static final STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J

.field public static final TAG:Ljava/lang/String; = "CpuMonitorService"


# instance fields
.field public final mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

.field public final mCpusetInfosByCpuset:Landroid/util/SparseArray;

.field public mCurrentMonitoringIntervalMillis:J

.field public final mDebugMonitoringIntervalMillis:J

.field public mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLatestAvailabilityDurationMillis:J

.field public final mLocalService:Lcom/android/server/cpu/CpuMonitorInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorCpuStats:Ljava/lang/Runnable;

.field public final mNormalMonitoringIntervalMillis:J

.field public final mShouldDebugMonitor:Z

.field public final mStopPeriodicCpusetReadingDelayMillis:J


# direct methods
.method public static synthetic $r8$lambda$5b7hWobM0wDK4hsjD37skajm2e8(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->monitorCpuStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$TV0CVirPDbqD4sfaM3usT_B8O50(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/cpu/CpuMonitorService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yhw1p2fEy0d9XrfYZa7jeG2YtJc(Landroid/util/IndentingPrintWriter;Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;)V
    .locals 1

    .line 250
    const-string v0, "%s\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/cpu/CpuMonitorService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->doDump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCACHE_DURATION_MILLISECONDS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smcontainsCpuset(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->containsCpuset(II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 60
    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    .line 72
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    .line 79
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    const-wide/16 v3, 0x1e

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0xa

    .line 80
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    :goto_1
    sput-wide v5, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    .line 85
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    const-wide/16 v2, 0x2

    .line 94
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/cpu/CpuMonitorService;->STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 164
    new-instance v2, Lcom/android/server/cpu/CpuInfoReader;

    invoke-direct {v2}, Lcom/android/server/cpu/CpuInfoReader;-><init>()V

    new-instance v3, Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    sget-wide v5, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    sget-wide v7, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    sget-wide v9, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    sget-wide v11, Lcom/android/server/cpu/CpuMonitorService;->STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/server/cpu/CpuMonitorService;-><init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJJ)V
    .locals 2

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 112
    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 116
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/cpu/CpuMonitorService$1;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorInternal;

    .line 177
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 179
    iput-boolean p4, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    .line 180
    iput-wide p5, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    .line 181
    iput-wide p7, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    .line 182
    iput-wide p9, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    .line 183
    iput-wide p11, p0, Lcom/android/server/cpu/CpuMonitorService;->mStopPeriodicCpusetReadingDelayMillis:J

    .line 184
    iput-object p2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    .line 185
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    .line 186
    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p4, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 187
    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-direct {p3, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 188
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    return-void
.end method

.method public static containsCpuset(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 442
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Provided invalid expectedCpuset %d"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    and-int/2addr p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private synthetic lambda$onBootPhase$0()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->stopPeriodicCpusetReading()V

    return-void
.end method


# virtual methods
.method public final checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V
    .locals 2

    .line 320
    invoke-virtual {p1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->getPrevCpuAvailabilityPercent()I

    move-result v0

    .line 321
    invoke-virtual {p1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->getLatestCpuAvailabilityInfo()Lcom/android/server/cpu/CpuAvailabilityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    iget p1, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 323
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    .line 334
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 335
    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final doDump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 235
    const-string v0, "*%s*\n"

    const-class v1, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0, p1}, Lcom/android/server/cpu/CpuInfoReader;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 238
    const-string/jumbo v0, "mShouldDebugMonitor = %s\n"

    iget-boolean v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :cond_0
    const-string v1, "No"

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 239
    const-string/jumbo v0, "mNormalMonitoringIntervalMillis = %d\n"

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 240
    const-string/jumbo v0, "mDebugMonitoringIntervalMillis = %d\n"

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 241
    const-string/jumbo v0, "mLatestAvailabilityDurationMillis = %d\n"

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    .line 242
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 243
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    const-string/jumbo v1, "mCurrentMonitoringIntervalMillis = %d\n"

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 244
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->hasClientCallbacksLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "CPU availability change callbacks:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 249
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 253
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 254
    const-string v1, "Cpuset infos:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 256
    :goto_2
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 257
    const-string v2, "%s\n"

    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 261
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 261
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentMonitoringIntervalMillis()J
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasClientCallbacksLocked()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final monitorCpuStats()V
    .locals 9

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 271
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v2}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_0

    .line 276
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to read CPU info from device"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    .line 279
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    move v5, v4

    .line 287
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 288
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    move v7, v4

    .line 289
    :goto_1
    iget-object v8, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 290
    iget-object v8, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-virtual {v8, v0, v1, v6}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 296
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    .line 298
    iget-wide v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->populateLatestCpuAvailabilityInfo(JJ)V

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/cpu/CpuMonitorService;->checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 308
    :cond_3
    iget-wide v4, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->hasClientCallbacksLocked()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v2, :cond_5

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    add-long/2addr v0, v5

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 313
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    .line 315
    :goto_3
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 219
    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    sget-object p1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "Stopping periodic cpuset reading on boot complete"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mStopPeriodicCpusetReadingDelayMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->init()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    .line 204
    const-class v0, Lcom/android/server/cpu/CpuMonitorInternal;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 205
    const-string v0, "cpu_monitor"

    new-instance v1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;-><init>(Lcom/android/server/cpu/CpuMonitorService;Lcom/android/server/cpu/CpuMonitorService-IA;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 207
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    iput-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    .line 211
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v2, "Starting debug monitoring"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 196
    :cond_2
    :goto_2
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to initialize CPU info reader. This happens when the CPU frequency stats are not available or the sysfs interface has changed in the Kernel. Cannot monitor CPU without these stats. Terminating CPU monitor service"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopMonitoringCpuStatsLocked()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    .line 426
    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    const/4 v0, 0x0

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-virtual {v1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
