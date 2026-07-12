.class public Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "AmbientDisplayPowerStatsProcessor.java"


# instance fields
.field public final mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public final mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

.field public final mTmpDeviceStats:[J

.field public mTmpScreenStats:[J


# direct methods
.method public static synthetic $r8$lambda$__RZ2zU9M1rjNylkdjITQyRqVSs(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 33
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 34
    new-instance v0, Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    .line 35
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 36
    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 37
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 39
    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    return-void
.end method


# virtual methods
.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 1

    .line 44
    iget-object p2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 47
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0, p3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    :cond_2
    iput-object p3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 61
    new-instance v0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-direct {v0, p3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 62
    iget-object p3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p3, p3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array p3, p3, [J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    .line 65
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p3

    .line 69
    new-instance v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    invoke-static {p3, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    invoke-virtual {p1, v0, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenDozePowerEstimate([J)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 78
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {p2, p3, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_1
    :goto_0
    return-void
.end method
