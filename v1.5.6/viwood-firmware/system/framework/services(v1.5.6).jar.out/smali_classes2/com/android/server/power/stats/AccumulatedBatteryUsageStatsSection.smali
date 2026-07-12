.class public Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "AccumulatedBatteryUsageStatsSection.java"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .locals 1

    .line 36
    const-string v0, "accumulated-battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getBatteryUsageStatsBuilder()Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    return-object p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
