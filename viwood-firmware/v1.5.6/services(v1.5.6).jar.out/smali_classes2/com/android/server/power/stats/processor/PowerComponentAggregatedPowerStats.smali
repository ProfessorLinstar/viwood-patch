.class public Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
.super Ljava/lang/Object;
.source "PowerComponentAggregatedPowerStats.java"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public final mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mDeviceStates:[I

.field public mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPowerStatsTimestamp:J

.field public mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field public final mStateStats:Landroid/util/SparseArray;

.field public mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mUidStats:Landroid/util/SparseArray;

.field public mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final powerComponentId:I


# direct methods
.method public static synthetic $r8$lambda$7vmA-6OlmvfK7cBqd4VhMaSVnDY(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;[I)V
    .locals 3

    .line 599
    invoke-virtual {p0, p1, p8}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 603
    aget-boolean v0, p2, p0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p3, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 607
    :cond_1
    aput-boolean p0, p2, p0

    .line 608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    const-string p4, "("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x1

    move v0, p0

    .line 611
    :goto_0
    array-length v1, p8

    const-string v2, " "

    if-ge v0, v1, :cond_4

    .line 612
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    .line 614
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_2
    aget-object p4, p5, v0

    invoke-virtual {p4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object p4

    aget v1, p8, v0

    aget-object p4, p4, v1

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p4, p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p6, :cond_5

    .line 621
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_5
    const-string p0, ") "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 87
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 88
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 89
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 90
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 91
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 92
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    const-wide/16 p1, -0x1

    .line 93
    iput-wide p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method


# virtual methods
.method public addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 5

    .line 222
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 224
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 228
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 229
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 230
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v3

    .line 234
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 238
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    .line 239
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v2

    .line 241
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_3

    .line 242
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 245
    :cond_3
    :try_start_0
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 246
    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 247
    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerStats.uidStats cleared: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "power_component"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 256
    :cond_4
    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_6

    .line 257
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 258
    iget-boolean v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 260
    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    :cond_5
    const/4 v1, 0x0

    .line 262
    iput-boolean v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 265
    :cond_6
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method

.method public copyStatesFrom(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 8

    .line 445
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 446
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 449
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 450
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State configurations have different lengths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AggregatePowerStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 458
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 459
    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 460
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    if-nez v3, :cond_2

    goto :goto_2

    .line 463
    :cond_2
    new-instance v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    .line 464
    iget-object v6, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 465
    iget-object v6, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_3

    .line 466
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 467
    iget-object v6, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_3

    .line 468
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v6, v2}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    .line 471
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final createDeviceStats(J)V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    goto :goto_2

    .line 385
    :cond_0
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 390
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    move-wide p1, v0

    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v1, v1, v0

    .line 396
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 397
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 398
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 399
    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;
    .locals 1

    .line 406
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez p2, :cond_1

    .line 407
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_0
    new-instance p3, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget p2, p2, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {p3, p2, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 414
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object p2

    .line 415
    iget-object p3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_2

    .line 417
    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    :cond_2
    return-object p2
.end method

.method public final createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 434
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    move-wide p2, v0

    :cond_2
    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 438
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 439
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aget v2, v2, v0

    invoke-virtual {v1, v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dumpDevice(Landroid/util/IndentingPrintWriter;)V
    .locals 12

    .line 564
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v3, v0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v4, 0x0

    .line 566
    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 569
    :goto_0
    iget-object p0, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 570
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " states"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 572
    iget-object p0, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v11

    const/4 p0, 0x0

    .line 574
    :goto_1
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p0, p1, :cond_1

    .line 575
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 576
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v10

    .line 577
    iget-object p1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/android/server/power/stats/processor/MultiStateStats;

    move-object v6, v0

    move-object v7, v1

    .line 578
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 580
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method public final dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .locals 10

    const/4 p0, 0x1

    .line 595
    new-array v3, p0, [Z

    const/4 v9, 0x0

    aput-boolean p0, v3, v9

    .line 596
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getDimensionCount()I

    move-result p0

    new-array v2, p0, [J

    .line 597
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStates()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v6

    .line 598
    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;

    move-object v4, p1

    move-object v1, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    invoke-static {v6, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 626
    aget-boolean p0, v3, v9

    if-nez p0, :cond_0

    .line 627
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method

.method public dumpUid(Landroid/util/IndentingPrintWriter;I)V
    .locals 6

    .line 585
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p2, :cond_0

    .line 586
    iget-object v2, p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_0

    .line 587
    iget-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v3, p2, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v4, 0x0

    .line 588
    invoke-virtual {p2}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    :cond_0
    return-void
.end method

.method public finish(J)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public forEachStateStatsKey(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveUids()Landroid/util/IntArray;
    .locals 3

    .line 311
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 312
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 314
    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-object p0
.end method

.method public getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object p0
.end method

.method public getDeviceStats([J[I)Z
    .locals 2

    .line 327
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 332
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of tracked states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object p0
.end method

.method public getStateStats([JI[I)Z
    .locals 2

    .line 344
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 349
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 345
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of tracked states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    const/4 v1, 0x0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 285
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v1

    .line 287
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    .line 289
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v2, v4, v2

    aput v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getUidStats([JI[I)Z
    .locals 2

    .line 368
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 373
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_0

    .line 375
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 369
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of tracked states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUids()Landroid/util/IntArray;
    .locals 3

    .line 300
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 301
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 303
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isCompatible(Lcom/android/internal/os/PowerStats;)Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteBatteryLevel(IIJ)V

    return-void
.end method

.method public noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    return-void
.end method

.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 515
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    if-eq v5, v3, :cond_9

    if-ne v5, v2, :cond_0

    .line 518
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_0
    if-ne v5, v1, :cond_8

    .line 520
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v10, "uid-stats"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v9, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "state-stats"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v9, v1

    goto :goto_1

    :sswitch_2
    const-string v10, "descriptor"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v9, v3

    goto :goto_1

    :sswitch_3
    const-string v10, "device-stats"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move v9, v0

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 546
    :pswitch_0
    const-string/jumbo v5, "uid"

    invoke-interface {p1, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 547
    invoke-virtual {p0, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v5

    .line 548
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v6, :cond_5

    .line 549
    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 551
    :cond_5
    iput-boolean v3, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 552
    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v5, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    .line 536
    :pswitch_1
    const-string v5, "key"

    invoke-interface {p1, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 537
    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v6, :cond_6

    .line 539
    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v6

    .line 541
    :cond_6
    invoke-virtual {v6, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    .line 522
    :pswitch_2
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v5, :cond_8

    return v0

    .line 528
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v5, :cond_7

    .line 529
    invoke-virtual {p0, v7, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 531
    :cond_7
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v5, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    .line 558
    :cond_8
    :goto_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    :cond_9
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7836a198 -> :sswitch_3
        -0x2c9b2c91 -> :sswitch_2
        0x6242c63 -> :sswitch_1
        0x5be620e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 270
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 271
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 272
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 273
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iput-object v0, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 275
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeviceStats([I[J)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    return-void
.end method

.method public setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-void
.end method

.method public setProcessedUidState(IIIJ)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object p1

    .line 182
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 186
    :cond_1
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p3, p0, p2

    .line 188
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_2

    .line 189
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setState(IIJ)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aput p2, v0, p1

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 148
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object p1, v1, p1

    .line 153
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p1

    .line 155
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 157
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 158
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_3

    .line 159
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 162
    :cond_3
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p2, v2, p1

    .line 163
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setUidState(IIIJ)V
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->setUidState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;IIIJ)V

    return-void
.end method

.method public setUidStats(I[I[J)V
    .locals 2

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object p1

    .line 202
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_0
    const/4 p0, 0x1

    .line 205
    iput-boolean p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 206
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    return-void
.end method

.method public start(J)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->createProcessor()Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 633
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 634
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 635
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 637
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 639
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [I

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_0

    .line 641
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 644
    aget v5, v3, v4

    .line 645
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 647
    invoke-virtual {p0, v1, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpUid(Landroid/util/IndentingPrintWriter;I)V

    .line 648
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 481
    const-string/jumbo v1, "power_component"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    const-string v2, "id"

    iget v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 485
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_1

    .line 486
    const-string v2, "device-stats"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 488
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const/4 v2, 0x0

    .line 491
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 492
    const-string/jumbo v3, "state-stats"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string v5, "key"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 495
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 499
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 500
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 501
    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v5, :cond_3

    .line 502
    const-string/jumbo v5, "uid-stats"

    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const-string/jumbo v6, "uid"

    invoke-interface {p1, v0, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    iget-object v3, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 505
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 509
    :cond_4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void
.end method
