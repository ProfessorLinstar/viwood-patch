.class public Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# instance fields
.field public mFirstFgsStartRealtime:J

.field public mFirstFgsStartUptime:J

.field public mLastFgsStartTime:J

.field public mNumParallelServices:I

.field public mTimeLimitExceededAt:J

.field public mTotalRuntime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 687
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    const-wide/16 v0, 0x0

    .line 689
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const/4 v0, 0x0

    .line 691
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    return-void
.end method


# virtual methods
.method public decNumParallelServices()V
    .locals 2

    .line 718
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 719
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    .line 721
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 722
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    :cond_1
    return-void
.end method

.method public getFirstFgsStartRealtime()J
    .locals 2

    .line 709
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    return-wide v0
.end method

.method public getFirstFgsStartUptime()J
    .locals 2

    .line 704
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    return-wide v0
.end method

.method public getLastFgsStartTime()J
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-wide v0
.end method

.method public getTimeLimitExceededAt()J
    .locals 2

    .line 742
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-wide v0
.end method

.method public getTotalRuntime()J
    .locals 2

    .line 733
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    return-wide v0
.end method

.method public noteFgsFgsStart(J)V
    .locals 2

    .line 694
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-ne v0, v1, :cond_0

    .line 696
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    .line 699
    :cond_0
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 746
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const-wide/16 v0, 0x0

    .line 747
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    .line 748
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    .line 749
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    .line 750
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 751
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-void
.end method

.method public setTimeLimitExceededAt(J)V
    .locals 0

    .line 737
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-void
.end method

.method public updateTotalRuntime(J)V
    .locals 4

    .line 727
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iget-wide v2, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    .line 728
    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    return-void
.end method
