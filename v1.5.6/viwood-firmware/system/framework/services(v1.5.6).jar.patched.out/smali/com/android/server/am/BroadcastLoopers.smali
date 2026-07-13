.class public abstract Lcom/android/server/am/BroadcastLoopers;
.super Ljava/lang/Object;
.source "BroadcastLoopers.java"


# static fields
.field public static final sLoopers:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$27Bh_FLEzO8BtN-IYP8CP4CBSmE(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 0

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$A2_CfiacArHZQJuYXNQ2IMURYOQ(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$UyojhGe6Qfb4i3J9e4_peV567S0(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$fAfZe6hhLlLJsQiwd_u6A62iAyM(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    return-void
.end method

.method public static addMyLooper()V
    .locals 5

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v1, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "BroadcastLoopers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found previously unknown looper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public static waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/am/BroadcastLoopers;->waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V
    .locals 9

    .line 105
    sget-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 107
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 109
    sget-object v4, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Looper;

    .line 110
    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 114
    :cond_0
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    .line 120
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    cmp-long p1, v5, v0

    if-lez p1, :cond_3

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v3

    cmp-long p1, v5, v7

    if-ltz p1, :cond_2

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " loopers to drain..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    move-wide v3, v5

    :cond_2
    const-wide/16 v5, 0x64

    .line 127
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 129
    :cond_3
    const-string p1, "Loopers drained!"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void

    .line 117
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static waitForIdle(Ljava/io/PrintWriter;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/am/BroadcastLoopers;->waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V

    return-void
.end method
