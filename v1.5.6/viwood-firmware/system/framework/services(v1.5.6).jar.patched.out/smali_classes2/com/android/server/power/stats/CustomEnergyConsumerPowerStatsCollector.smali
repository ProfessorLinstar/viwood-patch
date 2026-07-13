.class public Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "CustomEnergyConsumerPowerStatsCollector.java"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mCollectors:Ljava/util/List;

.field public final mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;)V
    .locals 6

    .line 36
    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 37
    iput-object p1, v0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    return-void
.end method


# virtual methods
.method public collectAndDump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ensureInitialized()V
    .locals 11

    .line 41
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getEnergyConsumerIds(I)[I

    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    const/16 v3, 0x3e8

    move v5, v3

    .line 49
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 50
    aget v3, v2, v1

    invoke-interface {v0, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getEnergyConsumerName(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    new-instance v3, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    iget-object v4, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    add-int/lit8 v10, v5, 0x1

    aget v8, v2, v1

    sget-object v9, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    const/4 v4, 0x1

    .line 54
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 55
    new-instance v4, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    .line 56
    iget-object v4, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v5, v10

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public forceSchedule()Z
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public schedule()Z
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    move v0, v1

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
