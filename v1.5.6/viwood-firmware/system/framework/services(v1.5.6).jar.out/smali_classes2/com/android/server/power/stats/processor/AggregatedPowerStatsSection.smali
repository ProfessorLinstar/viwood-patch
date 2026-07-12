.class public Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "AggregatedPowerStatsSection.java"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 1

    .line 35
    const-string v0, "aggregated-power-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-object p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
