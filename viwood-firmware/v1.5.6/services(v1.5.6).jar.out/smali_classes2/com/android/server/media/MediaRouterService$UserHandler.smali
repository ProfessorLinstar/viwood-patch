.class public final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# instance fields
.field public mClientStateUpdateScheduled:Z

.field public mConnectionPhase:I

.field public mConnectionTimeoutReason:I

.field public mConnectionTimeoutStartTime:J

.field public mDiscoveryMode:I

.field public final mProviderRecords:Ljava/util/ArrayList;

.field public mRunning:Z

.field public mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field public final mService:Lcom/android/server/media/MediaRouterService;

.field public final mTempClients:Ljava/util/ArrayList;

.field public final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1260
    invoke-direct {p0, p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1246
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 1248
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 1252
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    const/4 p3, -0x1

    .line 1254
    iput p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1261
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 1262
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 1263
    new-instance p3, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    move-result-object p1

    iget p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-direct {p3, p1, p0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/os/Looper;Lcom/android/server/media/MediaRouterService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService$UserHandler;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/os/Looper;)V

    return-void
.end method

.method public static getConnectionPhase(I)I
    .locals 2

    .line 0
    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2

    .line 1437
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1438
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    const/4 v0, 0x0

    .line 1439
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1441
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    return-void
.end method

.method public final checkSelectedRouteState()V
    .locals 6

    .line 1486
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1487
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1488
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    .line 1493
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1494
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1500
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1501
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    const/4 v4, 0x2

    if-lt v0, v2, :cond_2

    if-ge v3, v2, :cond_2

    .line 1503
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    :cond_2
    if-eqz v3, :cond_7

    .line 1508
    const-string v5, "MediaRouterService"

    if-eq v3, v2, :cond_5

    if-eq v3, v4, :cond_3

    .line 1526
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    :cond_3
    if-eq v0, v4, :cond_4

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    :cond_5
    if-eq v0, v2, :cond_6

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x4

    .line 1519
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    :cond_7
    const/4 v0, 0x3

    .line 1522
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    .line 1495
    :cond_8
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void
.end method

.method public final connectionTimedOut()V
    .locals 8

    .line 1558
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    const-string v1, "MediaRouterService"

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    .line 1564
    const-string v3, " ms: "

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1580
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while connecting after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1574
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1570
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route connection lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1566
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route no longer available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 1585
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1587
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    return-void

    .line 1560
    :cond_5
    :goto_1
    const-string p0, "Handled connection timeout for no reason."

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDiscoveryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSelectedRouteRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionPhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionTimeoutReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionTimeoutStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v2, :cond_0

    .line 1323
    iget-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "<n/a>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1322
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 1333
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<no providers>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .locals 3

    .line 1665
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1668
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .locals 3

    .line 1676
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1678
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1307
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->notifyGroupRouteSelected(Ljava/lang/String;)V

    return-void

    .line 1303
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    return-void

    .line 1299
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    return-void

    .line 1295
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    return-void

    .line 1291
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    return-void

    .line 1287
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    return-void

    .line 1283
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    return-void

    .line 1279
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    return-void

    .line 1275
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    return-void

    .line 1271
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyGroupRouteSelected(Ljava/lang/String;)V
    .locals 7

    .line 1636
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1637
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->-$$Nest$fgetmClientGroupMap(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    if-nez p1, :cond_0

    .line 1639
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1641
    :cond_0
    :try_start_2
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 1642
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1644
    iget-object v5, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1645
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1646
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1649
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1651
    :try_start_3
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-ge v3, p1, :cond_3

    .line 1654
    :try_start_4
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterClient;->onGroupRouteSelected(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 1656
    :catch_0
    :try_start_5
    const-string v0, "MediaRouterService"

    const-string v2, "Failed to call onSelectedRouteChanged. Client probably died."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1660
    :cond_3
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1649
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1660
    :goto_4
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1661
    throw p1
.end method

.method public onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 0

    .line 1465
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2

    .line 1450
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    const/4 v1, 0x0

    .line 1453
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1454
    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    const/4 v0, 0x0

    .line 1455
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_0
    return-void
.end method

.method public final requestSetVolume(Ljava/lang/String;I)V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1424
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    :cond_0
    return-void
.end method

.method public final requestUpdateVolume(Ljava/lang/String;I)V
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1431
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    :cond_0
    return-void
.end method

.method public final scheduleUpdateClientState()V
    .locals 1

    .line 1591
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1592
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    const/16 v0, 0x8

    .line 1593
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final selectRoute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1388
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1395
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1338
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1339
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 1340
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1345
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1346
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 1347
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1348
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    :cond_0
    return-void
.end method

.method public final unselectRoute(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    :cond_0
    return-void
.end method

.method public final unselectSelectedRoute()V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unselected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1414
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_0
    return-void
.end method

.method public final updateClientState()V
    .locals 6

    const/4 v0, 0x0

    .line 1598
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1601
    new-instance v1, Landroid/media/MediaRouterClientState;

    invoke-direct {v1}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1602
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1604
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1607
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1609
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v1, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 1612
    iget-object v1, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1614
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1616
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    :try_start_2
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-ge v0, v1, :cond_2

    .line 1622
    :try_start_3
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/IMediaRouterClient;

    invoke-interface {v2}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1624
    :catch_0
    :try_start_4
    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onStateChanged. Client probably died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1629
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1616
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1629
    :goto_5
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1630
    throw v0
.end method

.method public final updateConnectionTimeout(I)V
    .locals 4

    .line 1532
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eq p1, v0, :cond_4

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    :cond_0
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0xea60

    .line 1551
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const-wide/16 v2, 0x1388

    .line 1547
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1543
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateDiscoveryRequest()V
    .locals 8

    .line 1355
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1358
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1359
    iget v7, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    or-int/2addr v4, v7

    .line 1360
    iget-boolean v6, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1362
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_2

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1375
    :goto_1
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    if-eq v1, v0, :cond_3

    .line 1376
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 1377
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1379
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v1

    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 1362
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 1

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1473
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_0
    return-void
.end method
