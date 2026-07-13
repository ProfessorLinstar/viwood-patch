.class public Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsSection.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    .line 62
    const-string p0, "aggregated-power-stats"

    return-object p0
.end method

.method public read(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 0

    .line 68
    new-instance p1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 69
    invoke-static {p2, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-object p1
.end method
