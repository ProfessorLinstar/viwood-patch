.class Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/net/INetworkScoreCache;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

.field public final mNetworkType:I

.field public mScanResultsFilter:Ljava/util/function/UnaryOperator;

.field public final mScoredNetworkList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;I",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 518
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 519
    iput p3, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    .line 520
    iput-object p4, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 521
    iput-object p5, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
    .locals 6

    .line 508
    new-instance v0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V
    .locals 1

    .line 527
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 528
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 532
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 533
    invoke-virtual {p0, v0, p2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->filterScores(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 534
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    invoke-interface {p1, p2}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 538
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-$$Nest$sfgetVERBOSE()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to update scores of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NetworkScoreService"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 494
    check-cast p1, Landroid/net/INetworkScoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V

    return-void
.end method

.method public final filterScores(Ljava/util/List;I)Ljava/util/List;
    .locals 2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown filter type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "NetworkScoreService"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 561
    :cond_0
    iget-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    if-nez p2, :cond_1

    .line 562
    new-instance p2, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;

    new-instance v0, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 565
    :cond_1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {p0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 554
    :cond_2
    iget-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    if-nez p2, :cond_3

    .line 555
    new-instance p2, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;

    new-instance v0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 558
    :cond_3
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {p0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_4
    return-object p1
.end method
