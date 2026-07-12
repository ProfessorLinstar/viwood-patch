.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mActive:Z

.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mExcessivePower:Ljava/util/ArrayList;

.field public mForegroundTimeMs:J

.field public final mName:Ljava/lang/String;

.field public mNumAnrs:I

.field public mNumCrashes:I

.field public mStarts:I

.field public mSystemTimeMs:J

.field public mUserTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/lang/String;)V
    .locals 1

    .line 10369
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    const/4 v0, 0x1

    .line 10335
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 10370
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10371
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mName:Ljava/lang/String;

    .line 10372
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .locals 1

    .line 10478
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(IIZ)V

    return-void
.end method

.method public addCpuTimeLocked(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    .line 10483
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 10484
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    :cond_0
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .locals 2

    .line 10409
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 10412
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    const/4 v1, 0x2

    .line 10413
    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 10414
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 10415
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 10416
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .locals 2

    .line 10489
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-void
.end method

.method public countExcessivePowers()I
    .locals 0

    .line 10398
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 10393
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 10394
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 0

    .line 10402
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 10403
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundTime(I)J
    .locals 0

    .line 10521
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-wide p0
.end method

.method public getNumAnrs(I)I
    .locals 0

    .line 10536
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return p0
.end method

.method public getNumCrashes(I)I
    .locals 0

    .line 10531
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return p0
.end method

.method public getStarts(I)I
    .locals 0

    .line 10526
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return p0
.end method

.method public getSystemTime(I)J
    .locals 0

    .line 10516
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    return-wide p0
.end method

.method public getUserTime(I)J
    .locals 0

    .line 10511
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    return-wide p0
.end method

.method public incNumAnrsLocked()V
    .locals 1

    .line 10501
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return-void
.end method

.method public incNumCrashesLocked()V
    .locals 1

    .line 10497
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return-void
.end method

.method public incStartsLocked()V
    .locals 1

    .line 10493
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 10506
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    return p0
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5

    .line 10436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 10438
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/16 v1, 0x2710

    if-gt v0, v1, :cond_2

    .line 10447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10449
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 10450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 10451
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 10452
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 10453
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 10443
    :cond_2
    new-instance p0, Landroid/os/ParcelFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File corrupt: too many excessive power entries "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset(ZJ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 10386
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 5

    .line 10420
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10421
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 10425
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10426
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10428
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 10429
    iget v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10430
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 10431
    iget-wide v2, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
