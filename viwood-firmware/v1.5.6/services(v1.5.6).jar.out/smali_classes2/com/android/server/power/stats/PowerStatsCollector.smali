.class public abstract Lcom/android/server/power/stats/PowerStatsCollector;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mCollectAndDeliverStats:Ljava/lang/Runnable;

.field public volatile mConsumerList:Ljava/util/List;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLastScheduledUpdateMs:J

.field public final mThrottlePeriodMs:J

.field public final mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/stats/PowerStatsCollector;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 72
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 77
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    .line 78
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 79
    new-instance p1, Lcom/android/server/power/stats/PowerStatsCollector$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    invoke-virtual {p4, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    .line 93
    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method

.method public static uJtoUc(JI)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 242
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public addConsumer(Ljava/util/function/Consumer;)V
    .locals 2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 109
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final awaitCompletion()V
    .locals 2

    .line 230
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 231
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda6;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public collectAndDeliverStats()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->collectStats()Lcom/android/internal/os/PowerStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->deliverStats(Lcom/android/internal/os/PowerStats;)V

    return-void
.end method

.method public collectAndDump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 205
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string p0, ": disabled"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v1, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->awaitCompletion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Ljava/util/function/Consumer;)V

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/os/PowerStats;

    .line 225
    invoke-virtual {v2, v0}, Lcom/android/internal/os/PowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_2
    return-void

    .line 221
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Ljava/util/function/Consumer;)V

    .line 222
    throw p1

    .line 201
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Calling this method from the handler thread would cause a deadlock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public deliverStats(Lcom/android/internal/os/PowerStats;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 191
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 192
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public forceSchedule()Z
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    return p0
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public removeConsumer(Ljava/util/function/Consumer;)V
    .locals 2

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public schedule()Z
    .locals 10

    .line 144
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    .line 149
    iget-wide v4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    sub-long v6, v2, v4

    iget-wide v8, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    return v1

    .line 153
    :cond_1
    iput-wide v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 154
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    return-void
.end method
