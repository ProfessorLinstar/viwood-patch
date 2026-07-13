.class public Lcom/android/server/power/stats/format/PowerStatsLayout;
.super Ljava/lang/Object;
.source "PowerStatsLayout.java"


# instance fields
.field public mDeviceDurationPosition:I

.field public mDeviceEnergyConsumerCount:I

.field public mDeviceEnergyConsumerPosition:I

.field public final mDeviceFormat:Ljava/lang/StringBuilder;

.field public mDevicePowerEstimatePosition:I

.field public mDeviceStatsArrayLength:I

.field public final mStateFormat:Ljava/lang/StringBuilder;

.field public mStateStatsArrayLength:I

.field public mUidDurationPosition:I

.field public mUidEnergyConsumerCount:I

.field public mUidEnergyConsumerPosition:I

.field public final mUidFormat:Ljava/lang/StringBuilder;

.field public mUidPowerEstimatePosition:I

.field public mUidStatsArrayLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 56
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 57
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 58
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 60
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 56
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 57
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 58
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 60
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 66
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 67
    const-string v0, "dd"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 68
    const-string v0, "de"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 69
    const-string v0, "dec"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 70
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 71
    const-string/jumbo v0, "ud"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    .line 72
    const-string/jumbo v0, "ue"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 73
    const-string/jumbo v0, "uec"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 74
    const-string/jumbo v0, "up"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method


# virtual methods
.method public addDeviceSection(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addDeviceSection(ILjava/lang/String;I)I
    .locals 6

    .line 133
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    add-int v0, v2, p1

    .line 134
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 135
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    return v2
.end method

.method public addDeviceSectionEnergyConsumers(I)V
    .locals 2

    .line 195
    const-string v0, "energy"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 197
    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    return-void
.end method

.method public addDeviceSectionPowerEstimate()V
    .locals 3

    .line 224
    const-string/jumbo v0, "power"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    return-void
.end method

.method public addDeviceSectionUsageDuration()V
    .locals 2

    const/4 v0, 0x1

    .line 170
    const-string/jumbo v1, "usage"

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    return-void
.end method

.method public addStateSection(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addStateSection(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addStateSection(ILjava/lang/String;I)I
    .locals 6

    .line 144
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    add-int v0, v2, p1

    .line 145
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    return v2
.end method

.method public addUidSection(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addUidSection(ILjava/lang/String;I)I
    .locals 6

    .line 156
    iget v2, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    add-int v0, v2, p1

    .line 157
    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 158
    iget-object v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    return v2
.end method

.method public addUidSectionEnergyConsumers(I)V
    .locals 2

    .line 289
    const-string v0, "energy"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 291
    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    return-void
.end method

.method public addUidSectionPowerEstimate()V
    .locals 3

    .line 257
    const-string/jumbo v0, "power"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public addUidSectionUsageDuration()V
    .locals 2

    const/4 v0, 0x1

    .line 250
    const-string/jumbo v1, "time"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    return-void
.end method

.method public final appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V
    .locals 0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x20

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    if-eq p3, p0, :cond_2

    const/16 p2, 0x5b

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_3

    const/16 p2, 0x70

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    and-int/2addr p0, p5

    if-eqz p0, :cond_4

    const/16 p0, 0x3f

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    return-void
.end method

.method public getConsumedEnergy([JI)J
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getDevicePowerEstimate([J)D
    .locals 2

    .line 240
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 243
    :cond_0
    aget-wide p0, p1, p0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getDeviceStatsArrayLength()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    return p0
.end method

.method public getEnergyConsumerCount()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    return p0
.end method

.method public getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I
    .locals 3

    .line 348
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 353
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 354
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 356
    :try_start_0
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid CSV format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PowerStatsLayout"

    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getStateStatsArrayLength()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    return p0
.end method

.method public getUidConsumedEnergy([JI)J
    .locals 0

    .line 311
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    add-int/2addr p0, p2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUidPowerEstimate([J)D
    .locals 2

    .line 326
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 329
    :cond_0
    aget-wide p0, p1, p0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getUidStatsArrayLength()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    return p0
.end method

.method public getUidUsageDuration([J)J
    .locals 1

    .line 278
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 281
    :cond_0
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public getUsageDuration([J)J
    .locals 1

    .line 184
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 187
    :cond_0
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public isUidPowerAttributionSupported()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    .line 339
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2c

    .line 340
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConsumedEnergy([JIJ)V
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setDevicePowerEstimate([JD)V
    .locals 2

    .line 233
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidConsumedEnergy([JIJ)V
    .locals 0

    .line 303
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    add-int/2addr p0, p2

    aput-wide p3, p1, p0

    return-void
.end method

.method public setUidPowerEstimate([JD)V
    .locals 2

    .line 319
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUidUsageDuration([JJ)V
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public setUsageDuration([JJ)V
    .locals 0

    .line 177
    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 81
    const-string v0, "dd"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v0, "de"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v0, "dec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v0, "dp"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "ud"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v0, "ue"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v0, "uec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v0, "up"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format-device"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format-state"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "format-uid"

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
