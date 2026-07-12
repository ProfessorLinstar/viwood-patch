.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

.field public final mFlags:I

.field public final mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V
    .locals 2

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->-$$Nest$fgetmResetOnUnplugHighBatteryLevel(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z

    move-result v0

    .line 694
    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->-$$Nest$fgetmResetOnUnplugAfterSignificantCharge(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 697
    :cond_0
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    .line 698
    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->-$$Nest$fgetmDefaultPowerStatsThrottlePeriod(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    .line 699
    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->-$$Nest$fgetmPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    .line 700
    invoke-static {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->-$$Nest$fgetmMaxHistorySizeBytes(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Lcom/android/server/power/stats/BatteryStatsImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getMaxHistorySizeBytes()I
    .locals 0

    .line 731
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mMaxHistorySizeBytes:I

    return p0
.end method

.method public getPowerStatsThrottlePeriod(Ljava/lang/String;)J
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public shouldResetOnUnplugAfterSignificantCharge()Z
    .locals 1

    .line 717
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldResetOnUnplugHighBatteryLevel()Z
    .locals 1

    .line 708
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
