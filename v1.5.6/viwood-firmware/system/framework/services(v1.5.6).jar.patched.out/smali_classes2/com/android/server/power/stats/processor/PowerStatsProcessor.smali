.class public abstract Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# direct methods
.method public static synthetic $r8$lambda$i372F_C3eS3_IAG4Sadr6UR4rVY(Ljava/util/List;[I)V
    .locals 1

    .line 342
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->concatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->getAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 5

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 329
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 330
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    .line 332
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object v3

    aget v4, p1, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 336
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I
    .locals 4

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    new-instance v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput p0, v1, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method public static uCtoMah(J)D
    .locals 2

    .line 0
    long-to-double p0, p0

    const-wide v0, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 0

    .line 68
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public abstract finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setUidState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;IIIJ)V
    .locals 0

    .line 63
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setProcessedUidState(IIIJ)V

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 0
    return-void
.end method
