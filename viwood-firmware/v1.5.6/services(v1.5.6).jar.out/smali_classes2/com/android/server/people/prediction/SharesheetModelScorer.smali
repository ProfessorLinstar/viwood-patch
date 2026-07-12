.class public abstract Lcom/android/server/people/prediction/SharesheetModelScorer;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# static fields
.field public static final FOREGROUND_APP_PROMO_TIME_WINDOW:J

.field static final FOREGROUND_APP_WEIGHT:F

.field public static final ONE_MONTH_WINDOW:J

.field public static final RECENCY_SCORE_COUNT:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$7FkxCQ5ZV6cMoLM7UQFPi_l0X4g(Landroid/util/Pair;)J
    .locals 2

    .line 78
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$r6TVbXv33F_zO4tPP5uxiOCTb2c(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 182
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    return-void
.end method

.method public static computeScore(Ljava/util/List;IJ)V
    .locals 18

    .line 68
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 76
    :cond_0
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;-><init>()V

    .line 78
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move v5, v4

    move v8, v5

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 81
    new-instance v10, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>(Lcom/android/server/people/prediction/SharesheetModelScorer-IA;)V

    .line 82
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    sget-object v12, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v11, v12}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v11

    .line 88
    invoke-virtual {v11}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v11

    .line 89
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 90
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 92
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, p2, v12

    invoke-static {v12, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v12

    .line 91
    invoke-virtual {v10, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementFrequencyScore(F)V

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v11

    add-float/2addr v5, v11

    add-int/lit8 v6, v6, 0x1

    .line 98
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    move/from16 v12, p1

    invoke-interface {v11, v12}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v11

    .line 99
    invoke-virtual {v11}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v11

    .line 100
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 101
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 103
    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, p2, v13

    invoke-static {v13, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v13

    .line 102
    invoke-virtual {v10, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementMimeFrequencyScore(F)V

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v11

    add-float/2addr v8, v11

    add-int/lit8 v7, v7, 0x1

    .line 109
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v9

    sget-object v11, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v9, v11}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/android/server/people/data/EventIndex;->getMostRecentActiveTimeSlot()Landroid/util/Range;

    move-result-object v9

    if-nez v9, :cond_7

    goto/16 :goto_0

    .line 114
    :cond_7
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v11

    sget-object v13, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v11, v14, :cond_8

    .line 115
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/util/Range;

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-lez v11, :cond_1

    .line 116
    :cond_8
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v11

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v11, v13, :cond_9

    .line 117
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 119
    :cond_9
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 123
    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 125
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/4 v9, 0x1

    if-le v2, v9, :cond_b

    .line 127
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v9

    const v9, 0x3eb33333    # 0.35f

    sub-float/2addr v9, v2

    goto :goto_4

    :cond_b
    const v9, 0x3ecccccd    # 0.4f

    .line 129
    :goto_4
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    invoke-virtual {v2, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setRecencyScore(F)V

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_d

    int-to-float v0, v6

    div-float/2addr v5, v0

    goto :goto_5

    :cond_d
    move v5, v4

    .line 132
    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz v7, :cond_e

    int-to-float v2, v7

    div-float/2addr v8, v2

    goto :goto_6

    :cond_e
    move v8, v4

    .line 133
    :goto_6
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 134
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    move-object/from16 v6, p0

    .line 135
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 139
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_f

    move-wide v13, v11

    goto :goto_8

    :cond_f
    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v10

    div-float/2addr v10, v5

    float-to-double v13, v10

    .line 138
    :goto_8
    invoke-static {v13, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeFreqScore(D)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setFrequencyScore(F)V

    .line 140
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_9

    .line 141
    :cond_10
    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v10

    div-float/2addr v10, v8

    float-to-double v11, v10

    .line 140
    :goto_9
    invoke-static {v11, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeMimeFreqScore(D)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setMimeFrequencyScore(F)V

    .line 144
    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getRecencyScore()F

    move-result v10

    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v10

    .line 145
    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v11

    .line 144
    invoke-static {v10, v11}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v10

    .line 143
    invoke-virtual {v9, v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setTotalScore(F)V

    .line 146
    invoke-virtual {v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getTotalScore()F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    :goto_a
    return-void
.end method

.method public static computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;ILjava/lang/String;)V
    .locals 0

    .line 170
    invoke-static {p0, p1, p3, p4}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 171
    invoke-static {p0, p2, p5, p6, p7}, Lcom/android/server/people/prediction/SharesheetModelScorer;->postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;ILjava/lang/String;)V

    return-void
.end method

.method public static findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 303
    sget-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    sub-long v2, v4, v0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object p1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-ltz p2, :cond_3

    .line 307
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 310
    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getFreqDecayedOnElapsedTime(J)F
    .locals 2

    .line 333
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 334
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const-wide/16 v0, 0x3

    .line 336
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_1

    const p0, 0x3f666666    # 0.9f

    return p0

    :cond_1
    const-wide/16 v0, 0x7

    .line 338
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_2

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_2
    const-wide/16 v0, 0xe

    .line 340
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-gtz p0, :cond_3

    const p0, 0x3f333333    # 0.7f

    return p0

    :cond_3
    const p0, 0x3f19999a    # 0.6f

    return p0
.end method

.method public static normalizeFreqScore(D)F
    .locals 2

    .line 0
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const p0, 0x3e4ccccd    # 0.2f

    return p0

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    const p0, 0x3e19999a    # 0.15f

    return p0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_2
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_3

    const p0, 0x3d4ccccd    # 0.05f

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeMimeFreqScore(D)F
    .locals 2

    .line 0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const p0, 0x3e4ccccd    # 0.2f

    return p0

    :cond_0
    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    const p0, 0x3e19999a    # 0.15f

    return p0

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;ILjava/lang/String;)V
    .locals 6

    .line 179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 182
    new-instance v3, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 183
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 185
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    :cond_1
    :goto_2
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {v0, p2, p3, p4}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;ILjava/lang/String;)V

    .line 194
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V

    return-void
.end method

.method public static probOR(FF)F
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    sub-float p1, v0, p1

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F
    .locals 6

    .line 237
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/AppUsageStatsData;

    .line 238
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    if-lez v2, :cond_4

    .line 241
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 246
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    goto :goto_1

    .line 249
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v4, v2

    div-float/2addr v0, v4

    .line 250
    invoke-virtual {v3, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 252
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    goto :goto_1

    :cond_4
    return p4
.end method

.method public static promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;ILjava/lang/String;)V
    .locals 0

    .line 275
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 278
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    :cond_0
    return-void
.end method

.method public static promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V
    .locals 11

    .line 208
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 210
    invoke-virtual {v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 212
    invoke-virtual {v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    return-void

    .line 220
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 221
    sget-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    sub-long v6, v8, v0

    .line 223
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    move-object v4, p2

    move v5, p3

    .line 222
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/people/data/DataManager;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object p1

    .line 225
    new-instance p2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda2;-><init>()V

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p3, v2

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    move-result p2

    .line 228
    new-instance p3, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda3;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p2

    invoke-static {p0, p1, p3, v0, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    return-void
.end method
