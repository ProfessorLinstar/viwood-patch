.class public Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "ScreenPowerStatsLayout.java"


# instance fields
.field public mDeviceBrightnessDurationPositions:[I

.field public mDeviceScreenDozeDurationPosition:I

.field public mDeviceScreenDozePowerPosition:I

.field public mDeviceScreenOnDurationPosition:I

.field public mDisplayCount:I

.field public mUidTopActivityTimePosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addDeviceScreenUsageDurationSection(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->addUidTopActivitiyDuration()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 56
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 57
    const-string v0, "dsc"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    .line 58
    const-string v0, "dsd"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    .line 59
    const-string v0, "dbds"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    if-nez v0, :cond_0

    .line 64
    const-string v0, "dbd"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    .line 67
    :cond_0
    const-string v0, "ddd"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    .line 68
    const-string v0, "ddp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    .line 69
    const-string/jumbo v0, "uf"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    return-void
.end method


# virtual methods
.method public final addDeviceScreenUsageDurationSection(I)V
    .locals 4

    .line 85
    iput p1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    .line 86
    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    const/4 v0, 0x5

    .line 87
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    sget-object v3, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 90
    invoke-virtual {p0, p1, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const-string v0, "doze"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    return-void
.end method

.method public addDeviceSectionPowerEstimate()V
    .locals 3

    .line 97
    invoke-super {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 99
    const-string v0, "doze-power"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    return-void
.end method

.method public final addUidTopActivitiyDuration()V
    .locals 2

    const/4 v0, 0x1

    .line 164
    const-string/jumbo v1, "top"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    return-void
.end method

.method public getBrightnessLevelDuration([JII)J
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget p0, p0, p3

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDisplayCount()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    return p0
.end method

.method public getScreenDozeDuration([JI)J
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getScreenDozePowerEstimate([J)D
    .locals 2

    .line 160
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    aget-wide p0, p1, p0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getScreenOnDuration([JI)J
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTopActivityDuration([J)J
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public setBrightnessLevelDuration([JIIJ)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget p0, p0, p3

    add-int/2addr p0, p2

    aput-wide p4, p1, p0

    return-void
.end method

.method public setScreenDozeDuration([JIJ)V
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setScreenDozePowerEstimate([JD)V
    .locals 2

    .line 153
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public setScreenOnDuration([JIJ)V
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setUidTopActivityDuration([JJ)V
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 75
    const-string v0, "dsc"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v0, "dsd"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v0, "dbds"

    iget-object v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 79
    const-string v0, "ddd"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v0, "ddp"

    iget v1, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v0, "uf"

    iget p0, p0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
