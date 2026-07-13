.class public Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;
.super Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final mMaxPostedForReset:I

.field public final mNumPosted:Ljava/util/Map;


# direct methods
.method public constructor <init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1403
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;-><init>(IIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    .line 1405
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mNumPosted:Ljava/util/Map;

    .line 1406
    iput p5, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mMaxPostedForReset:I

    .line 1408
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StrategyPerApp: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifAttentionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getNextState(IJLcom/android/server/notification/NotificationRecord;)I
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    invoke-interface {v0, p4}, Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;->isExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1448
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getNextState(IJ)I

    move-result p0

    return p0
.end method

.method public onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 8

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1418
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 1422
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->getNextState(IJLcom/android/server/notification/NotificationRecord;)I

    move-result p1

    .line 1428
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mNumPosted:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1429
    iget-object v6, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mNumPosted:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 1430
    iget v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mMaxPostedForReset:I

    if-lt v4, v3, :cond_0

    .line 1432
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mNumPosted:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v5

    .line 1435
    :cond_0
    sget-boolean v3, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationPosted time delta: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " vol state: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " numposted "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifAttentionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 1453
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;->mNumPosted:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
