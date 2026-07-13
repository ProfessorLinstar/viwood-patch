.class public Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;
.super Ljava/lang/Object;
.source "BatteryUsageStatsSection.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    .line 67
    const-string p0, "battery-usage-stats"

    return-object p0
.end method

.method public read(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 0

    .line 73
    new-instance p0, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    invoke-static {p2}, Landroid/os/BatteryUsageStats;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    return-object p0
.end method
