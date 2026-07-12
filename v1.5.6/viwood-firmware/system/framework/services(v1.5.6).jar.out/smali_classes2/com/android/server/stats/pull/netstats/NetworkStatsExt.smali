.class public Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
.super Ljava/lang/Object;
.source "NetworkStatsExt.java"


# instance fields
.field public final isTypeProxy:Z

.field public final oemManaged:I

.field public final ratType:I

.field public final slicedByFgbg:Z

.field public final slicedByMetered:Z

.field public final slicedByTag:Z

.field public final stats:Landroid/net/NetworkStats;

.field public final subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

.field public final transports:[I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;[IZ)V
    .locals 10

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 48
    invoke-direct/range {v0 .. v9}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 59
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 62
    iput-boolean p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 63
    iput-boolean p4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    .line 64
    iput-boolean p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    .line 65
    iput p6, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 66
    iput-object p7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 67
    iput p8, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 68
    iput-boolean p9, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    return-void
.end method


# virtual methods
.method public hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-object v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 77
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iget v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    iget-boolean p1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
