.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mBatteryTimeRemainingMs:J

.field public final mChargeTimeRemainingMs:J

.field public final mCustomEnergyConsumerNames:[Ljava/lang/String;

.field public final mEstimatedBatteryCapacityMah:J

.field public final mHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public final mMonotonicStartTime:J

.field public final mStartClockTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;JJJJJ[Ljava/lang/String;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 332
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    .line 333
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    .line 334
    iput-wide p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    .line 335
    iput-wide p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    .line 336
    iput-wide p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    .line 337
    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    .line 338
    iput-object p13, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public getBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public getBatteryTimeRemainingMs()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method public getChargeTimeRemainingMs()J
    .locals 2

    .line 358
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method public getCustomEnergyConsumerNames()[Ljava/lang/String;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getEstimatedBatteryCapacity()D
    .locals 2

    .line 362
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getHistory()Lcom/android/internal/os/BatteryStatsHistory;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method public getMonotonicStartTime()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    return-wide v0
.end method

.method public getStartClockTime()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    return-wide v0
.end method
