.class public Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
.super Ljava/lang/Object;
.source "AggregatedMobileDataStatsPuller.java"


# instance fields
.field public mRxBytes:J

.field public mRxPackets:J

.field public mTxBytes:J

.field public mTxPackets:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 84
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 85
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 86
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;-><init>()V

    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    return-void
.end method

.method public addRxPackets(J)V
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    return-void
.end method

.method public addTxBytes(J)V
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-void
.end method

.method public addTxPackets(J)V
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    return-void
.end method

.method public getRxBytes()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 121
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
