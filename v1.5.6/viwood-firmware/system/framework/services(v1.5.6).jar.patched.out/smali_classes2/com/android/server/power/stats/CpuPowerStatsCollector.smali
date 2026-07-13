.class public Lcom/android/server/power/stats/CpuPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "CpuPowerStatsCollector.java"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mCpuPowerStats:Lcom/android/internal/os/PowerStats;

.field public mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mCpuTimeByScalingStep:[J

.field public mDefaultCpuPowerBrackets:I

.field public mDefaultCpuPowerBracketsPerEnergyConsumer:I

.field public final mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mIsPerUidTimeInStateSupported:Z

.field public mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

.field public mLastUpdateTimestampNanos:J

.field public mLastUpdateUptimeMillis:J

.field public mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mTempCpuTimeByScalingStep:[J

.field public mTempUidStats:[J

.field public final mUidStats:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$l7KbxBakyCEoVp9gpEIBpVgzupw(Lcom/android/server/power/stats/CpuPowerStatsCollector;I[J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->processUidStats(I[J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;)V
    .locals 6

    .line 93
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 83
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 97
    iput-object p1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    return-void
.end method

.method private ensureInitialized()Z
    .locals 12

    .line 101
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 110
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getKernelCpuStatsReader()Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 112
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBrackets()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 113
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    .line 114
    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBracketsPerEnergyConsumer()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    invoke-virtual {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->isSupportedFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    .line 118
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 121
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    .line 122
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    .line 123
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 124
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBrackets()[I

    move-result-object v0

    .line 126
    new-instance v2, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 127
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v4

    array-length v4, v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;-><init>(II[I)V

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 129
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0, v11}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 132
    new-instance v5, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 134
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v10

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 135
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 137
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 139
    iput-boolean v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method public static mapScalingStepsToDefaultBrackets([I[DI)V
    .locals 10

    .line 225
    array-length v0, p1

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    aget-wide v7, p1, v6

    cmpg-double v9, v7, v1

    if-gez v9, :cond_0

    move-wide v1, v7

    :cond_0
    cmpl-double v9, v7, v3

    if-lez v9, :cond_1

    move-wide v3, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 233
    :cond_2
    array-length v0, p1

    if-gt v0, p2, :cond_3

    .line 234
    :goto_1
    array-length p1, p0

    if-ge v5, p1, :cond_5

    .line 235
    aput v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 238
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v2, v0

    int-to-double v6, p2

    div-double/2addr v2, v6

    .line 242
    :goto_2
    array-length v4, p1

    if-ge v5, v4, :cond_5

    .line 243
    aget-wide v6, p1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v6, v0

    div-double/2addr v6, v2

    double-to-int v4, v6

    if-lt v4, p2, :cond_4

    add-int/lit8 v4, p2, -0x1

    .line 247
    :cond_4
    aput v4, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 9

    .line 326
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 330
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    if-nez v0, :cond_1

    return-object v1

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 335
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 338
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 338
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->readCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    move-result-wide v0

    .line 341
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 342
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    aget-wide v7, v7, v2

    sub-long/2addr v5, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setTimeByScalingStep([JIJ)V

    .line 344
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 349
    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 351
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    .line 352
    iget-wide v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    sub-long v2, v0, v2

    .line 353
    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    .line 355
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v4, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    move-wide v2, v4

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 360
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 362
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public dumpCpuPowerBracketsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    if-nez v0, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    const-string v0, "CPU power brackets; cluster/freq in MHz(avg current in mA):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 266
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->getCpuPowerBracketDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .locals 13

    .line 278
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string p0, ""

    return-object p0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 286
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    .line 287
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    .line 288
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_4

    .line 289
    aget v10, v0, v6

    if-eq v10, p1, :cond_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 295
    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    array-length v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 298
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_3
    aget v10, v8, v9

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    .line 301
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 303
    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 302
    const-string v12, "%.1f"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    .line 304
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object p0
.end method

.method public final initDefaultPowerBrackets(I)[I
    .locals 13

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 207
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    new-array v1, v1, [D

    .line 209
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 210
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    aget v7, v2, v5

    .line 211
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    move v9, v4

    .line 212
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_0

    add-int/lit8 v10, v6, 0x1

    .line 213
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    aput-wide v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    return-object v0
.end method

.method public final initPowerBrackets()[I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsFromPowerProfile()[I

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 147
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 150
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 151
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsByCluster(I)[I

    move-result-object p0

    return-object p0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigning a single power brackets to each CPU_CLUSTER energy consumer. Number of CPU clusters ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the number of energy consumers ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 157
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").  Using default power bucket assignment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "CpuPowerStatsCollector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object p0

    return-object p0

    .line 148
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final initPowerBracketsByCluster(I)[I
    .locals 13

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 181
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    .line 182
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_3

    aget v7, v1, v4

    .line 183
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    .line 184
    array-length v9, v8

    new-array v9, v9, [D

    move v10, v3

    .line 185
    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_0

    .line 186
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v11, v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 189
    :cond_0
    array-length v7, v8

    new-array v7, v7, [I

    .line 190
    invoke-static {v7, v9, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    move v9, v3

    move v10, v9

    .line 193
    :goto_2
    array-length v11, v8

    if-ge v9, v11, :cond_2

    .line 194
    aget v11, v7, v9

    add-int/2addr v11, v6

    add-int/lit8 v12, v5, 0x1

    .line 195
    aput v11, v0, v5

    if-le v11, v10, :cond_1

    move v10, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v5, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final initPowerBracketsFromPowerProfile()[I
    .locals 11

    .line 164
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 166
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    .line 167
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    move v8, v3

    .line 168
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_0

    .line 169
    iget-object v9, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketForScalingStep(II)I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    .line 170
    aput v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 413
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 414
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final processUidStats(I[J)V
    .locals 9

    .line 372
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector-IA;)V

    .line 377
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 378
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 379
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v0, :cond_2

    .line 384
    aget-wide v5, p2, v0

    iget-object v7, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v7, v7, v0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    move v4, v2

    .line 389
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {v7, v8, v0, v5, v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setUidTimeByPowerBracket([JIJ)V

    .line 390
    iget-object v5, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v6, p2, v0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    .line 394
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 395
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    goto :goto_1

    .line 397
    :cond_3
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 400
    :goto_1
    iget-object p2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez p2, :cond_4

    .line 402
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 404
    :cond_4
    :goto_2
    array-length p0, p2

    if-ge v3, p0, :cond_5

    .line 405
    aget-wide p0, p2, v3

    iget-object v0, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    aget-wide v4, v0, v3

    add-long/2addr p0, v4

    aput-wide p0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
