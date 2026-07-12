.class public Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;
.super Ljava/lang/Object;
.source "BatteryHistoryStepDetailsProvider.java"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mCurStepCpuSystemTimeMs:J

.field public mCurStepCpuUserTimeMs:J

.field public mCurStepStatIOWaitTimeMs:J

.field public mCurStepStatIdleTimeMs:J

.field public mCurStepStatIrqTimeMs:J

.field public mCurStepStatSoftIrqTimeMs:J

.field public mCurStepStatSystemTimeMs:J

.field public mCurStepStatUserTimeMs:J

.field public final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public final mEntityNames:Ljava/util/Map;

.field public mHasHistoryStepDetails:Z

.field public mLastStepCpuSystemTimeMs:J

.field public mLastStepCpuUserTimeMs:J

.field public mLastStepStatIOWaitTimeMs:J

.field public mLastStepStatIdleTimeMs:J

.field public mLastStepStatIrqTimeMs:J

.field public mLastStepStatSoftIrqTimeMs:J

.field public mLastStepStatSystemTimeMs:J

.field public mLastStepStatUserTimeMs:J

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mStateNames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public addCpuStats(IIIIIIII)V
    .locals 4

    .line 186
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    .line 187
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    .line 188
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    .line 189
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    .line 190
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    int-to-long p3, p5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    .line 191
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    int-to-long p3, p6

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    .line 192
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    int-to-long p3, p7

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    .line 193
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    int-to-long p3, p8

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    return-void
.end method

.method public final calculateHistoryStepDetails()V
    .locals 11

    .line 103
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 118
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 119
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 120
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 122
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 124
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 125
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 127
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v1, -0x1

    .line 128
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    const/4 v1, 0x0

    .line 129
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 130
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 131
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 134
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 135
    iget-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iget-wide v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    sub-long v6, v4, v6

    long-to-int v6, v6

    .line 137
    iget-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iget-wide v9, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    sub-long v9, v7, v9

    long-to-int v9, v9

    add-int v10, v6, v9

    .line 140
    iput-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 141
    iput-wide v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    .line 142
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v5, v7

    if-gt v10, v5, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int v8, v5, v7

    if-gt v10, v8, :cond_2

    .line 146
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 147
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 148
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_1

    .line 150
    :cond_2
    iget v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 151
    iput v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 152
    iput v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 153
    iget v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int v8, v5, v7

    if-gt v10, v8, :cond_3

    .line 154
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 155
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 156
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_1

    .line 158
    :cond_3
    iget v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v8, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 159
    iput v5, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 160
    iput v7, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 161
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v3, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 162
    iput v6, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 163
    iput v9, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_4
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 168
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 169
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 170
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 171
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 172
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 173
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 174
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public finishAddingCpuLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 82
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/power/PowerStatsInternal;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->populatePowerEntityMaps()V

    :cond_0
    return-void
.end method

.method public final populatePowerEntityMaps()V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 265
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 266
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v2

    .line 267
    :goto_1
    iget-object v7, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 268
    aget-object v7, v7, v6

    .line 269
    iget v8, v7, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v7, v7, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 272
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v7, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v4, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v4, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public requestUpdate()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    const-wide/16 v0, 0x0

    .line 202
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuUserTimeMs:J

    .line 203
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepCpuSystemTimeMs:J

    .line 204
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatUserTimeMs:J

    .line 205
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSystemTimeMs:J

    .line 206
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIOWaitTimeMs:J

    .line 207
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIrqTimeMs:J

    .line 208
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatSoftIrqTimeMs:J

    .line 209
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public update()V
    .locals 7

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z

    .line 94
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuDetails()V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->calculateHistoryStepDetails()V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->updateStateResidency()V

    .line 97
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V

    return-void
.end method

.method public final updateStateResidency()V
    .locals 12

    .line 213
    const-string v0, "BatteryHistoryStepDetails"

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    .line 222
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    .line 228
    array-length v3, v1

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 232
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SubsystemPowerState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v2

    .line 233
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 234
    aget-object v5, v1, v4

    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 236
    const-string v7, " subsystem_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v7, " name="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mEntityNames:Ljava/util/Map;

    iget v9, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v2

    .line 239
    :goto_1
    iget-object v9, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    .line 240
    aget-object v9, v9, v8

    .line 241
    const-string v10, " state_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mStateNames:Ljava/util/Map;

    iget v11, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    iget v11, v9, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 242
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v10, " time="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    const-string v10, " count="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    const-string v10, " last entry="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v9, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const v7, 0x8000

    if-le v5, v7, :cond_3

    .line 250
    const-string/jumbo v1, "updateStateResidency: buffer not enough"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 256
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p0

    .line 224
    const-string v1, "Failed to getStateResidencyAsync"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-void
.end method
