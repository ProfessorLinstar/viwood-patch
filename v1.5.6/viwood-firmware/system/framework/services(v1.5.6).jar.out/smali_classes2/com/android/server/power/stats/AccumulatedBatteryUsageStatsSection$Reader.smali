.class public Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;
.super Ljava/lang/Object;
.source "AccumulatedBatteryUsageStatsSection.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    .line 62
    const-string p0, "accumulated-battery-usage-stats"

    return-object p0
.end method

.method public read(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 0

    .line 68
    new-instance p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    .line 69
    invoke-static {p2}, Landroid/os/BatteryUsageStats;->createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-object p0
.end method
