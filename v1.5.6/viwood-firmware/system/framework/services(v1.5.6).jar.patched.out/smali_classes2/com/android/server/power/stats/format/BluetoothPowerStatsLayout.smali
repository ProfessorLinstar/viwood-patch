.class public Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "BluetoothPowerStatsLayout.java"


# instance fields
.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->addDeviceBluetoothControllerActivity()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->addUidTrafficStats()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 51
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 52
    const-string v0, "dt-rx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 53
    const-string v0, "dt-tx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 54
    const-string v0, "dt-idle"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 55
    const-string v0, "dt-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 56
    const-string/jumbo v0, "ub-rx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 57
    const-string/jumbo v0, "ub-tx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 58
    const-string/jumbo v0, "ut-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    return-void
.end method


# virtual methods
.method public final addDeviceBluetoothControllerActivity()V
    .locals 2

    .line 76
    const-string/jumbo v0, "rx"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 77
    const-string/jumbo v0, "tx"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 78
    const-string v0, "idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 79
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    return-void
.end method

.method public final addUidTrafficStats()V
    .locals 2

    .line 83
    const-string/jumbo v0, "rx-B"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 84
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 85
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    return-void
.end method

.method public getDeviceIdleTime([J)J
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceRxTime([J)J
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceScanTime([J)J
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceTxTime([J)J
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidRxBytes([J)J
    .locals 0

    .line 125
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidScanTime([J)J
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTxBytes([J)J
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 0

    .line 105
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceRxTime([JJ)V
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceTxTime([JJ)V
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidScanTime([JJ)V
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 0

    .line 129
    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 66
    const-string v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v0, "ub-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string/jumbo v0, "ub-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string/jumbo v0, "ut-scan"

    iget p0, p0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
