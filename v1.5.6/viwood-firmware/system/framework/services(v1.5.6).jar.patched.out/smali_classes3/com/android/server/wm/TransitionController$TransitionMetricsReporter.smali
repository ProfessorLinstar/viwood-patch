.class public Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
.super Landroid/window/ITransitionMetricsReporter$Stub;
.source "TransitionController.java"


# instance fields
.field public final mMetricConsumers:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1806
    invoke-direct {p0}, Landroid/window/ITransitionMetricsReporter$Stub;-><init>()V

    .line 1807
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1811
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportAnimationStart(Landroid/os/IBinder;J)V
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1819
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1820
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/LongConsumer;

    .line 1821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1823
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_1
    return-void

    .line 1821
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
