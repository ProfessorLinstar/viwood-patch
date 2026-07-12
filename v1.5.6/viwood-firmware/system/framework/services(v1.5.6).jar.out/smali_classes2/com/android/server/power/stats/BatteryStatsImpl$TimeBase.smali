.class public Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mObservers:Ljava/util/Collection;

.field public mPastRealtimeUs:J

.field public mPastUptimeUs:J

.field public mRealtimeStartUs:J

.field public mRealtimeUs:J

.field public mRunning:Z

.field public mUnpluggedRealtimeUs:J

.field public mUnpluggedUptimeUs:J

.field public mUptimeStartUs:J

.field public mUptimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2389
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2385
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 2393
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeRealtime(JI)J
    .locals 2

    .line 2435
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public computeUptime(JI)J
    .locals 2

    .line 2431
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getRealtime(J)J
    .locals 4

    .line 2447
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2448
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 2449
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getUptime(J)J
    .locals 4

    .line 2439
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2440
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 2441
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public init(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2405
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 2406
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2407
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2408
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2409
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2410
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2411
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2412
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 2463
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    return p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 2502
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2503
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    return-void
.end method

.method public remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 2397
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(JJ)V
    .locals 1

    .line 2416
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 2417
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2418
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    return-void

    .line 2420
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2421
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2426
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    return-void
.end method

.method public setRunning(ZJJ)Z
    .locals 7

    .line 2467
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v0, p1, :cond_2

    .line 2468
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz p1, :cond_0

    .line 2470
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2471
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2472
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2473
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 2477
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2478
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2479
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v1, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    goto :goto_0

    .line 2483
    :cond_0
    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v5, p2, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2484
    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v5, p4, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2485
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v3

    .line 2486
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    .line 2490
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2491
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2492
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v1, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 2507
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2508
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
