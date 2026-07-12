.class public Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# instance fields
.field public stats:Ljava/util/List;

.field public timeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    return-void
.end method

.method public static collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 2

    .line 447
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;-><init>()V

    .line 448
    iput-wide p0, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    const/4 p0, 0x0

    .line 449
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p0, p1, :cond_1

    .line 450
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/metrics/NetworkMetrics;

    invoke-virtual {p1}, Landroid/net/metrics/NetworkMetrics;->getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 452
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 460
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics$Summary;

    .line 462
    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics$Summary;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 464
    :cond_0
    iget-wide v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%tT.%tL: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
