.class public Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# instance fields
.field public combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

.field public proportionalEstimates:Ljava/util/List;

.field public final states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 312
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 313
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    return-void
.end method
