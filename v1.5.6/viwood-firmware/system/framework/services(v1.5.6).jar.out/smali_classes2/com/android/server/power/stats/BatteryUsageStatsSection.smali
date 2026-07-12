.class public Lcom/android/server/power/stats/BatteryUsageStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "BatteryUsageStatsSection.java"


# instance fields
.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats;


# direct methods
.method public constructor <init>(Landroid/os/BatteryUsageStats;)V
    .locals 1

    .line 37
    const-string v0, "battery-usage-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 60
    const-string v0, "BatteryUsageStatsSection"

    const-string v1, "Closing BatteryUsageStats"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getBatteryUsageStats()Landroid/os/BatteryUsageStats;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    return-object p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
