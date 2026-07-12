.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationIntrusivenessExtractor.java"


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V
    .locals 0

    .line 67
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLastIntrusive()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    .line 78
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    :cond_0
    return-void
.end method

.method public work()V
    .locals 0

    .line 0
    return-void
.end method
