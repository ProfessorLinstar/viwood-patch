.class public final Lcom/android/server/app/GameManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public static synthetic $r8$lambda$mE-7E21f94kUEAgfV42TQXpejok(Lcom/android/server/app/GameManagerService$MyUidObserver;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService$MyUidObserver;->lambda$handleUidMovedToTop$0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 2300
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleUidMovedOffTop(I)V
    .locals 4

    .line 2354
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_0

    .line 2356
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2357
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    .line 2358
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2359
    const-string p1, "GameManagerService"

    const-string v1, "Game power mode OFF (no games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2362
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2363
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2364
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2365
    const-string p1, "GameManagerService"

    const-string v1, "Game power mode ON (only games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 2369
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleUidMovedToTop(I)V
    .locals 6

    .line 2320
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2321
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2325
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2326
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/app/GameManagerService$MyUidObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/app/GameManagerService$MyUidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 2328
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2332
    const-string v0, "GameManagerService"

    const-string v4, "Game power mode OFF (first non-game in foreground)"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2335
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2337
    monitor-exit v1

    return-void

    .line 2339
    :cond_2
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    .line 2340
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2341
    const-string v0, "GameManagerService"

    const-string v5, "Game power mode ON (first game in foreground)"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 2344
    :cond_3
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSysProps(Lcom/android/server/app/GameManagerService;)Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    move-result-object v0

    const-string v2, "debug.graphics.game_default_frame_rate.disabled"

    .line 2345
    invoke-interface {v0, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2347
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    xor-int/2addr v0, v4

    .line 2348
    invoke-static {v2, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetGameDefaultFrameRate(Lcom/android/server/app/GameManagerService;Z)F

    move-result v0

    .line 2347
    invoke-virtual {v2, p1, v0}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    .line 2349
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2350
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public final synthetic lambda$handleUidMovedToTop$0(ILjava/lang/String;)Z
    .locals 0

    .line 2327
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$misPackageGame(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onUidGone(IZ)V
    .locals 0

    .line 2303
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2304
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    .line 2305
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 2315
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    return-void

    .line 2312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedToTop(I)V

    return-void
.end method
