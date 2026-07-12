.class public Lcom/android/server/power/stats/format/SensorPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "SensorPowerStatsLayout.java"


# instance fields
.field public final mSensorPositions:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 42
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v2

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->addUidSensorSection(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    return-void
.end method


# virtual methods
.method public addUidSensorDuration([JIJ)V
    .locals 2

    .line 100
    iget-object p0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorPowerStatsLayout"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    aget-wide v0, p1, p0

    add-long/2addr v0, p3

    aput-wide v0, p1, p0

    return-void
.end method

.method public final addUidSensorSection(ILjava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public getUidSensorDurationPosition(I)I
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 73
    iget-object v1, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 75
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 77
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const-string v2, "dshs"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 81
    const-string/jumbo v0, "usp"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    return-void
.end method
