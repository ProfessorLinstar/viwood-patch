.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# static fields
.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

.field public static final DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J


# instance fields
.field public mDefaultPowerStatsThrottlePeriod:J

.field public mMaxHistorySizeBytes:I

.field public final mPowerStatsThrottlePeriods:Ljava/util/Map;

.field public mResetOnUnplugAfterSignificantCharge:Z

.field public mResetOnUnplugHighBatteryLevel:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultPowerStatsThrottlePeriod(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxHistorySizeBytes(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetOnUnplugAfterSignificantCharge(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetOnUnplugHighBatteryLevel(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 740
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 741
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    .line 742
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 743
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    sget-wide v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 747
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    .line 751
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    .line 752
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->DEFAULT_POWER_STATS_THROTTLE_PERIOD_CPU:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;
    .locals 2

    .line 761
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Lcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    return-object v0
.end method

.method public setDefaultPowerStatsThrottlePeriodMillis(J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .locals 0

    .line 797
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    return-object p0
.end method

.method public setMaxHistorySizeBytes(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .locals 0

    .line 806
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    return-object p0
.end method

.method public setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setResetOnUnplugAfterSignificantCharge(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .locals 0

    .line 778
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    return-object p0
.end method

.method public setResetOnUnplugHighBatteryLevel(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;
    .locals 0

    .line 769
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    return-object p0
.end method
