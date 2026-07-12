.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mCounts:[J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static bridge synthetic -$$Nest$mreadSummaryFromParcelLocked(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteSummaryToParcelLocked(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 2628
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2629
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2630
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1

    .line 2733
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2736
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 2701
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    return-void
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2724
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2727
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public addCountLocked([J)V
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    return-void
.end method

.method public addCountLocked([JZ)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2664
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p2, :cond_1

    .line 2665
    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    :cond_1
    const/4 p2, 0x0

    .line 2667
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 2668
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v1, v0, p2

    aget-wide v3, p1, p2

    add-long/2addr v1, v3

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public detach()V
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountsLocked(I)[J
    .locals 0

    .line 2647
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 2674
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCounts="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
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

.method public reset(ZJ)Z
    .locals 2

    .line 2682
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 2683
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 2697
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
