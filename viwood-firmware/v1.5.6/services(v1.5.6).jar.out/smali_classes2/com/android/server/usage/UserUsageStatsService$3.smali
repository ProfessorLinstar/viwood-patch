.class public Lcom/android/server/usage/UserUsageStatsService$3;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 0

    .line 435
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->addEventStatsTo(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method
