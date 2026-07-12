.class public Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
.super Ljava/lang/Object;
.source "PowerComponentAggregatedPowerStats.java"


# instance fields
.field public hasPowerStats:Z

.field public states:[I

.field public stats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public updated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>()V

    return-void
.end method
