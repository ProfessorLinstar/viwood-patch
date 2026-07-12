.class public Lcom/android/server/power/stats/format/WifiPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "WifiPowerStatsLayout.java"


# instance fields
.field public mDeviceActiveTimePosition:I

.field public mDeviceBasicScanTimePosition:I

.field public mDeviceBatchedScanTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mPowerReportingSupported:Z

.field public mUidBatchScanTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->addDeviceWifiActivity(Z)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->addUidNetworkStats()V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 67
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 68
    const-string/jumbo v0, "prs"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 69
    const-string v0, "dt-rx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 70
    const-string v0, "dt-tx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 71
    const-string v0, "dt-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 72
    const-string v0, "dt-basic-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 73
    const-string v0, "dt-batch-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 74
    const-string v0, "dt-idle"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 75
    const-string v0, "dt-on"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 76
    const-string/jumbo v0, "urxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 77
    const-string/jumbo v0, "utxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 78
    const-string/jumbo v0, "urxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 79
    const-string/jumbo v0, "utxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 80
    const-string/jumbo v0, "ut-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 81
    const-string/jumbo v0, "ut-bscan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    return-void
.end method

.method private addUidNetworkStats()V
    .locals 2

    .line 125
    const-string/jumbo v0, "rx-pkts"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 126
    const-string/jumbo v0, "rx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 127
    const-string/jumbo v0, "tx-pkts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 128
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 129
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 130
    const-string v0, "batched-scan"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    return-void
.end method


# virtual methods
.method public final addDeviceWifiActivity(Z)V
    .locals 2

    .line 106
    iput-boolean p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 108
    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 109
    const-string/jumbo p1, "rx"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 110
    const-string/jumbo p1, "tx"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 111
    const-string p1, "idle"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 112
    const-string/jumbo p1, "scan"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    goto :goto_0

    .line 114
    :cond_0
    const-string/jumbo p1, "rx-tx"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 115
    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 116
    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 117
    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 118
    iput v0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 120
    :goto_0
    const-string p1, "basic-scan"

    invoke-virtual {p0, v1, p1, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 121
    const-string p1, "batched-scan"

    invoke-virtual {p0, v1, p1, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    return-void
.end method

.method public getDeviceActiveTime([J)J
    .locals 0

    .line 190
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceBasicScanTime([J)J
    .locals 0

    .line 166
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceBatchedScanTime([J)J
    .locals 0

    .line 174
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceIdleTime([J)J
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceRxTime([J)J
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceScanTime([J)J
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceTxTime([J)J
    .locals 0

    .line 150
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidBatchedScanTime([J)J
    .locals 0

    .line 238
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidRxBytes([J)J
    .locals 0

    .line 198
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidRxPackets([J)J
    .locals 0

    .line 214
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidScanTime([J)J
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTxBytes([J)J
    .locals 0

    .line 206
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTxPackets([J)J
    .locals 0

    .line 222
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public isPowerReportingSupported()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    return p0
.end method

.method public setDeviceActiveTime([JJ)V
    .locals 0

    .line 186
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceBasicScanTime([JJ)V
    .locals 0

    .line 162
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceBatchedScanTime([JJ)V
    .locals 0

    .line 170
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceRxTime([JJ)V
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 0

    .line 154
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceTxTime([JJ)V
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidBatchScanTime([JJ)V
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 0

    .line 194
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidRxPackets([JJ)V
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidScanTime([JJ)V
    .locals 0

    .line 226
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 0

    .line 202
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidTxPackets([JJ)V
    .locals 0

    .line 218
    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 89
    const-string/jumbo v0, "prs"

    iget-boolean v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v0, "dt-basic-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v0, "dt-batch-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v0, "dt-on"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "utxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "ut-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "ut-bscan"

    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
