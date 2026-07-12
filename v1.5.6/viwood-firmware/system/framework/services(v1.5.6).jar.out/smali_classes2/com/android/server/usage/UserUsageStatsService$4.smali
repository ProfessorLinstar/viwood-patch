.class public Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic val$beginTime:J

.field public final synthetic val$endTime:J

.field public final synthetic val$flags:I

.field public final synthetic val$isQueryForAllEvents:Z

.field public final synthetic val$isQueryForAllPackages:Z

.field public final synthetic val$names:Landroid/util/ArraySet;

.field public final synthetic val$pkgNameFilter:Landroid/util/ArraySet;

.field public final synthetic val$queryEventFilter:[Z


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 558
    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput-boolean p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    iput p8, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    iput-boolean p9, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    iput-object p10, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    iput-object p11, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 7

    .line 562
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p2

    .line 563
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ge p2, v0, :cond_c

    .line 566
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 567
    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 571
    :cond_0
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 572
    iget-boolean v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 576
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x1e

    if-ne v3, v5, :cond_3

    .line 580
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    .line 584
    :cond_4
    iget v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 588
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 590
    :cond_5
    iget v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_6

    .line 591
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 594
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 598
    :cond_7
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 599
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_8
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 602
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_9
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 605
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_a
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 608
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_b
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_c
    return v1
.end method
