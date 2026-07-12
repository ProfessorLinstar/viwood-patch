.class public Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "WakelockPowerStatsProcessor.java"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 28
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "cpu.idle"

    .line 29
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 11

    .line 35
    sget-object v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v1, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v1

    .line 41
    iget-object v5, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 44
    iget-object v0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-wide v5, v3

    :goto_0
    if-ltz v0, :cond_1

    .line 45
    sget-object v7, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v8, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    invoke-virtual {v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 50
    iget-object v3, p2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 51
    sget-object v4, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 52
    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v1

    long-to-double v9, v5

    div-double/2addr v7, v9

    .line 51
    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 56
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 0
    return-void
.end method
