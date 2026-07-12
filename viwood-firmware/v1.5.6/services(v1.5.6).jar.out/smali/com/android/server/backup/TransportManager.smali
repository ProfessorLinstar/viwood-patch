.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# static fields
.field public static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"


# instance fields
.field public volatile mCurrentTransportName:Ljava/lang/String;

.field public mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRegisteredTransportsDescriptionMap:Ljava/util/Map;

.field public final mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

.field public final mTransportLock:Ljava/lang/Object;

.field public final mTransportServiceIntent:Landroid/content/Intent;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mTransportWhitelist:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$GleZFtibz2k01TszCsNrXgtNNYY(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$GuAgwBUCTZyU_OWH69IG2pxehQk(Landroid/content/ComponentName;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$n7ID6cQRmC-6Pr89PAOQ2mV8_O8(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 792
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$velBFHaSmoGaDDo2t7urM380RiQ(Landroid/content/ComponentName;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 76
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 98
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 101
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 102
    new-instance p3, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p3}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 103
    new-instance p4, Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/backup/transport/TransportConnectionManager;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V

    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/transport/TransportConnectionManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/transport/TransportConnectionManager;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 76
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 114
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 116
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 117
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 118
    new-instance p1, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p1}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 119
    iput-object p5, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    return-void
.end method

.method public static addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UserID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1

    .line 792
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final checkCanUseTransport()V
    .locals 1

    .line 779
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 780
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Can\'t call transport with transport lock held"

    .line 779
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public dumpTransportClients(Ljava/io/PrintWriter;)V
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnectionManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpTransportStats(Ljava/io/PrintWriter;)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportStats;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forEachRegisteredTransport(Ljava/util/function/Consumer;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 393
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 395
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 547
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 543
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No transport selected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 567
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 563
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No transport selected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 276
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 279
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentTransportName()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 463
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 432
    :cond_0
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegisteredTransportComponents()[Landroid/content/ComponentName;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 232
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 233
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/TransportManager$TransportDescription;

    return-object p0
.end method

.method public final getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 441
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/TransportManager$TransportDescription;

    if-eqz p0, :cond_0

    return-object p0

    .line 443
    :cond_0
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Landroid/content/ComponentName;)V

    throw p0
.end method

.method public final getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 453
    :cond_0
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 2

    .line 479
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 481
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegisteredTransportNames()[Ljava/lang/String;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 246
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 247
    invoke-static {v3}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 250
    :cond_0
    monitor-exit v0

    return-object v1

    .line 251
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 1

    .line 501
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 503
    :catch_0
    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transport "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupTransportManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 524
    :cond_0
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 356
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgettransportDirName(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgettransportDirName(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTransportWhitelist()Ljava/util/Set;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object p0
.end method

.method public isTransportRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isTransportTrusted(Landroid/content/ComponentName;)Z
    .locals 5

    .line 677
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupTransportManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 678
    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupTransport "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not whitelisted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 678
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 686
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 687
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 689
    iget v0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not privileged"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-static {v0, p1}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 694
    :goto_0
    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    const-string v0, "Package not found."

    invoke-static {p0, v0}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public varargs onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 152
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    aget-object v0, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 201
    const-string v0, "BackupTransportManager"

    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enabled setting: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageDisabled(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageDisabled(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageEnabled(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageEnabled(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    array-length v2, p2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 210
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    .line 211
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :catch_0
    return-void

    .line 216
    :cond_6
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 218
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    new-instance p2, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    return-void

    :catchall_0
    move-exception p0

    .line 218
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onPackageDisabled(Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageEnabled(Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerAndSelectTransport(Landroid/content/ComponentName;)I
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 614
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 619
    :catch_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 628
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 629
    :try_start_3
    monitor-exit v2

    return v1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 631
    :catch_1
    const-string p1, "BackupTransportManager"

    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    const-string v0, "Transport got unregistered"

    invoke-static {p0, v0}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit v2

    const/4 p0, -0x1

    return p0

    .line 634
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 619
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final registerTransport(Landroid/content/ComponentName;)I
    .locals 10

    .line 711
    const-string v0, "Transport "

    const-string v1, "BackupTransportManager"

    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v2

    const/4 v3, -0x2

    if-nez v2, :cond_0

    return v3

    .line 717
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 720
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 721
    const-string v5, "android.app.backup.extra.TRANSPORT_REGISTRATION"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 723
    iget-object v5, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 724
    const-string v6, "TransportManager.registerTransport()"

    invoke-virtual {v5, p1, v4, v6}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    const/4 v5, -0x1

    .line 728
    :try_start_0
    invoke-virtual {v4, v6}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v7
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v8

    .line 740
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_2

    if-nez v9, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 746
    iget p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " registered"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    invoke-interface {p1, v8, v9}, Lcom/android/server/backup/transport/OnTransportRegisteredListener;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    return v3

    .line 751
    :catch_0
    iget p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died while registering"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return v5

    .line 730
    :catch_1
    iget p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t connect to transport "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for registration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return v5
.end method

.method public final registerTransport(Landroid/content/ComponentName;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 8

    .line 763
    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 765
    new-instance v0, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 767
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 770
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->currentDestinationString()Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v5

    .line 772
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager-IA;)V

    .line 773
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 774
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerTransports()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    new-instance v1, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 662
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 667
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 668
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .locals 3

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 654
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 655
    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 653
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    return-void

    .line 648
    :catch_0
    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to register transports from package not found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupTransportManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 597
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 598
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 599
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 411
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/TransportManager$TransportDescription;

    if-nez p1, :cond_0

    .line 413
    const-string p1, "BackupTransportManager"

    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Transport "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered tried to change description"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputname(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V

    .line 418
    invoke-static {p1, p3}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V

    .line 419
    invoke-static {p1, p4}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V

    .line 420
    invoke-static {p1, p5}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V

    .line 421
    invoke-static {p1, p6}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)V

    .line 422
    const-string p1, "BackupTransportManager"

    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Transport "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " updated its attributes"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/backup/TransportManager;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
