.class public Lcom/android/server/power/stats/format/GnssPowerStatsLayout;
.super Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;
.source "GnssPowerStatsLayout.java"


# instance fields
.field public final mDeviceSignalLevelTimePosition:I

.field public final mUidSignalLevelTimePosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    const/4 v0, 0x2

    .line 33
    const-string v1, "level"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    return-void
.end method


# virtual methods
.method public getDeviceSignalLevelTime([JI)J
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidSignalLevelTime([JI)J
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public setDeviceSignalLevelTime([JIJ)V
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setUidSignalLevelTime([JIJ)V
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 49
    const-string v0, "dt-sig"

    iget v1, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string/jumbo v0, "ut-sig"

    iget p0, p0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
