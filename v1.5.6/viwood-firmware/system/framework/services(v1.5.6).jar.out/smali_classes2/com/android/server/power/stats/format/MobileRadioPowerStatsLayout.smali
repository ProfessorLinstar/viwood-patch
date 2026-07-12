.class public Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "MobileRadioPowerStatsLayout.java"


# instance fields
.field public mDeviceCallPowerPosition:I

.field public mDeviceCallTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceSleepTimePosition:I

.field public mStateRxTimePosition:I

.field public mStateTxTimesCount:I

.field public mStateTxTimesPosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addDeviceMobileActivity()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addStateStats()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addUidNetworkStats()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 73
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 74
    const-string v0, "dt-sleep"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 75
    const-string v0, "dt-idle"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 76
    const-string v0, "dt-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 77
    const-string v0, "dt-call"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 78
    const-string v0, "dp-call"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 79
    const-string/jumbo v0, "srx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 80
    const-string/jumbo v0, "stx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 81
    const-string/jumbo v0, "stxc"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 82
    const-string/jumbo v0, "urxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 83
    const-string/jumbo v0, "utxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 84
    const-string/jumbo v0, "urxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 85
    const-string/jumbo v0, "utxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    return-void
.end method

.method public static makeStateKey(II)I
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled RadioAccessNetworkType ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), mapping to OTHER"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobileRadioPowerStatsLayout"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addDeviceMobileActivity()V
    .locals 2

    .line 137
    const-string/jumbo v0, "sleep"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 138
    const-string v0, "idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 139
    const-string/jumbo v0, "scan"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 140
    const-string v0, "call"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    return-void
.end method

.method public addDeviceSectionPowerEstimate()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 160
    const-string v0, "call-power"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    return-void
.end method

.method public addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V
    .locals 2

    .line 253
    array-length v0, p6

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    if-eq v0, v1, :cond_0

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid TX time array size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileRadioPowerStatsLayout"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 262
    :cond_1
    array-length v0, p6

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 263
    aget v1, p6, v0

    if-eqz v1, :cond_3

    .line 274
    :goto_1
    invoke-static {p2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I

    move-result p2

    .line 275
    invoke-static {p2, p3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result p2

    .line 276
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [J

    if-nez p3, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getStateStatsArrayLength()I

    move-result p3

    new-array p3, p3, [J

    .line 279
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    :cond_2
    iget p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide v0, p3, p1

    add-long/2addr v0, p4

    aput-wide v0, p3, p1

    .line 283
    iget p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    .line 284
    iget p2, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr p2, p1

    aget-wide p4, p3, p2

    aget v0, p6, p1

    int-to-long v0, v0

    add-long/2addr p4, v0

    aput-wide p4, p3, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final addStateStats()V
    .locals 2

    const/4 v0, 0x1

    .line 144
    const-string/jumbo v1, "rx"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 145
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 146
    const-string/jumbo v1, "tx"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    return-void
.end method

.method public final addUidNetworkStats()V
    .locals 2

    .line 150
    const-string/jumbo v0, "rx-pkts"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 151
    const-string/jumbo v0, "rx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 152
    const-string/jumbo v0, "tx-pkts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 153
    const-string/jumbo v0, "tx-B"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    return-void
.end method

.method public getDeviceCallPowerEstimate([J)D
    .locals 2

    .line 200
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    aget-wide p0, p1, p0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getDeviceCallTime([J)J
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceIdleTime([J)J
    .locals 0

    .line 176
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceScanTime([J)J
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDeviceSleepTime([J)J
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getStateRxTime([J)J
    .locals 0

    .line 208
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getStateTxTime([JI)J
    .locals 0

    .line 216
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidRxBytes([J)J
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidRxPackets([J)J
    .locals 0

    .line 240
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTxBytes([J)J
    .locals 0

    .line 232
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidTxPackets([J)J
    .locals 0

    .line 248
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public setDeviceCallPowerEstimate([JD)V
    .locals 2

    .line 196
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceCallTime([JJ)V
    .locals 0

    .line 188
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceIdleTime([JJ)V
    .locals 0

    .line 172
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceScanTime([JJ)V
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setDeviceSleepTime([JJ)V
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidRxBytes([JJ)V
    .locals 0

    .line 220
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidRxPackets([JJ)V
    .locals 0

    .line 236
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidTxBytes([JJ)V
    .locals 0

    .line 228
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidTxPackets([JJ)V
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 93
    const-string v0, "dt-sleep"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v0, "dt-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v0, "dp-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "srx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "stx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "stxc"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string/jumbo v0, "utxp"

    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
