.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "StatsPullAtomService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5397
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 5402
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/4 p1, 0x1

    const/16 v0, 0x62

    .line 5401
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 5409
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/4 p1, 0x2

    const/16 v0, 0x62

    .line 5408
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
