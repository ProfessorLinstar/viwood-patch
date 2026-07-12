.class public Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "BroadcastQueueImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Handler;)V
    .locals 2

    .line 1352
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {p1}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    const/4 v0, 0x1

    .line 1354
    invoke-virtual {p1, v0}, Lcom/android/server/utils/AnrTimer$Args;->extend(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/AnrTimer$Args;->freeze(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object p1

    const/4 v0, 0x2

    .line 1352
    const-string v1, "BROADCAST_TIMEOUT"

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method


# virtual methods
.method public getPid(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 0

    .line 1359
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getPid(Ljava/lang/Object;)I
    .locals 0

    .line 1350
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;->getPid(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    return p0
.end method

.method public getUid(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 0

    .line 1364
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getUid(Ljava/lang/Object;)I
    .locals 0

    .line 1350
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;->getUid(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    return p0
.end method
