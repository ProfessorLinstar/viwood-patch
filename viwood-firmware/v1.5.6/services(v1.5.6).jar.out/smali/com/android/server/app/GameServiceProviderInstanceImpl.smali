.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderInstance;


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameServiceController:Landroid/service/games/IGameServiceController;

.field public final mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

.field public final mGameSessionController:Landroid/service/games/IGameSessionController;

.field public final mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

.field public final mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

.field public volatile mIsRunning:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mTaskStackListener:Landroid/app/TaskStackListener;

.field public final mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-GVnoC3-iGycUUR3m60ZQRgOVSU(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V
    .locals 2

    .line 447
    new-instance v0, Landroid/service/games/GameStartedEvent;

    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 449
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/service/games/GameStartedEvent;-><init>(ILjava/lang/String;)V

    .line 447
    invoke-interface {p1, v0}, Landroid/service/games/IGameService;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PpF6D3DGlIR7Dzk2mkJO3nI_TfY(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$createGameSessionLocked$3(ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ST7_KY_rDNbV8lfuuM06-M5LDts(Lcom/android/server/app/GameServiceProviderInstanceImpl;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$stopLocked$0(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZY9VPc5KcwRjDUhGLsea0Tnd2eo(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    .line 881
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 883
    :cond_0
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createSuccessResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$mDIPWPIU06rIGFotmoDVDviW_os(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$takeScreenshot$5(Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQZdYbclR8S-pnnmQrhsovBnzC8(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$createGameSessionLocked$2(Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameServiceController(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/service/games/IGameServiceController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateGameSession(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSession(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyAndClearAllGameSessionsLocked(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskCreated(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILandroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskFocusChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskRemoved(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTransientSystemBarsVisibilityChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTransientSystemBarsVisibilityChanged(IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestartGame(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->restartGame(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 92
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 108
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    .line 120
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 161
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 189
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    .line 202
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 247
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 268
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 269
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 270
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mContext:Landroid/content/Context;

    .line 271
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 272
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 273
    iput-object p6, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 274
    iput-object p7, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 275
    iput-object p8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 276
    iput-object p9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 277
    iput-object p10, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 278
    iput-object p11, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 279
    iput-object p12, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 280
    iput-object p13, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-void
.end method


# virtual methods
.method public final attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 604
    const-string v1, "GameServiceProviderInstance"

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No associated game session record. Destroying id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->isGameSessionRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    .line 616
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 618
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    .line 616
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 627
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v1

    .line 628
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p2

    .line 626
    invoke-virtual {v0, v1, p2}, Lcom/android/server/app/GameSessionRecord;->withGameSession(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)Lcom/android/server/app/GameSessionRecord;

    move-result-object p2

    .line 625
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 620
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add task overlay. Destroying id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void
.end method

.method public final createGameSession(I)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createGameSessionLocked(I)V
    .locals 7

    .line 512
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/app/GameSessionRecord;

    .line 517
    const-string v0, ") creation. Ignoring."

    const-string v1, "GameServiceProviderInstance"

    if-nez v4, :cond_1

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing game session record found for task (id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 522
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/app/GameSessionRecord;->isAwaitingGameSessionRequest()Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing game session for task (id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not awaiting game session request. Ignoring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 529
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;

    move-result-object v5

    if-nez v5, :cond_3

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create view host configuration for task (id"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/app/GameSessionRecord;->withGameSessionRequested()Lcom/android/server/app/GameSessionRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 545
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 546
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v6

    .line 568
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 569
    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;
    .locals 2

    .line 831
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 836
    :cond_0
    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 837
    new-instance v0, Landroid/service/games/GameSessionViewHostConfiguration;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 840
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    return-object v0
.end method

.method public final destroyAndClearAllGameSessionsLocked()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 634
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 0

    .line 643
    :try_start_0
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 645
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to destroy session: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V
    .locals 4

    .line 667
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 668
    const-string v1, "GameServiceProviderInstance"

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 671
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    .line 670
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove task overlay. This is expected if the task is already destroyed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 684
    :try_start_1
    invoke-interface {v0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 695
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    :cond_2
    return-void
.end method

.method public final endGameSessionsForPackageLocked(Ljava/lang/String;)V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 794
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 795
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 803
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 804
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 811
    :cond_1
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 812
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->withGameSessionEndedOnProcessDeath()Lcom/android/server/app/GameSessionRecord;

    move-result-object v4

    .line 811
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z
    .locals 1

    .line 820
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 821
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V
    .locals 3

    .line 430
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-eqz v0, :cond_1

    .line 436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing game session found for task (id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") creation. Ignoring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :cond_1
    iget v0, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object v1, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/app/GameTaskInfo;)V

    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final synthetic lambda$createGameSessionLocked$2(Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V

    .line 559
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {p3}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p1

    .line 564
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V

    return-void

    :catchall_0
    move-exception p0

    .line 559
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 548
    :cond_1
    :goto_0
    const-string p3, "GameServiceProviderInstance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create GameSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 552
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 553
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final synthetic lambda$createGameSessionLocked$3(ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V
    .locals 1

    .line 570
    new-instance v0, Landroid/service/games/CreateGameSessionRequest;

    .line 573
    invoke-virtual {p2}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    .line 574
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    invoke-interface {p5, p0, v0, p3, p4}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public final synthetic lambda$stopLocked$0(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    return-void
.end method

.method public final synthetic lambda$takeScreenshot$5(Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .locals 4

    .line 859
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 862
    new-array v1, v1, [Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 863
    aput-object p1, v1, v2

    .line 864
    invoke-virtual {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->captureTaskBitmap(ILandroid/window/ScreenCapture$LayerCaptureArgs$Builder;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 868
    const-string v0, "GameServiceProviderInstance"

    if-nez p1, :cond_1

    .line 869
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not get bitmap for id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 873
    invoke-virtual {v1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get running task info for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 878
    :cond_2
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 879
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 886
    new-instance p3, Lcom/android/internal/util/ScreenshotRequest$Builder;

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {p3, v2, v3}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 888
    invoke-virtual {p4}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p3

    .line 889
    invoke-virtual {p3, p2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 890
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p2

    .line 891
    invoke-virtual {p2, p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p1

    .line 892
    invoke-virtual {p1, v0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 893
    invoke-virtual {p1, p2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p1

    .line 894
    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object p1

    .line 895
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 896
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 895
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final maybeCreateGameSessionForFocusedTaskLocked(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->get(I)Lcom/android/server/app/GameTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No task info for focused task: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    iget-boolean p1, v0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p1, :cond_1

    return-void

    .line 421
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    return-void
.end method

.method public final onForegroundActivitiesChanged(I)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChangedLocked(I)V

    .line 702
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onForegroundActivitiesChangedLocked(I)V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 725
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 724
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 726
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_3

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->recreateEndedGameSessionsLocked(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onProcessDied(I)V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDiedLocked(I)V

    .line 763
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onProcessDiedLocked(I)V
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 777
    const-string p0, "GameServiceProviderInstance"

    const-string/jumbo p1, "onProcessDiedLocked(): Missing process count for package"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 781
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 782
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v0, :cond_2

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->endGameSessionsForPackageLocked(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->get(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object p1

    .line 362
    iget-boolean p2, p1, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p2, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    .line 368
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChangedLocked(IZ)V

    .line 374
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTaskFocusChangedLocked(IZ)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->maybeCreateGameSessionForFocusedTaskLocked(I)V

    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 401
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to notify session of task focus change: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 466
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameSessionRecord;

    .line 480
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 492
    :cond_2
    :try_start_1
    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 494
    :catch_0
    const-string p0, "GameServiceProviderInstance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to send transient system bars visibility from reveal gesture for task: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 480
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final recreateEndedGameSessionsLocked(Ljava/lang/String;)V
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 743
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->isGameSessionEndedForProcessDeath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v2

    .line 753
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 754
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 753
    invoke-static {v2, v5}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAndDestroyGameSessionIfNecessaryLocked(I)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/app/GameSessionRecord;

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    return-void
.end method

.method public final restartGame(I)V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    if-nez v1, :cond_0

    .line 906
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 909
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 915
    :cond_1
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->restartTaskActivityProcessIfVisible(ILjava/lang/String;)V

    return-void

    .line 909
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V
    .locals 0

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 585
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 586
    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    .line 587
    invoke-interface {p2, p0}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 590
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set task focused for ID: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

    .line 287
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startLocked()V
    .locals 3

    .line 299
    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 304
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 305
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 308
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 313
    const-string v2, "Failed to register task stack listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 319
    const-string v2, "Failed to register process observer"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    .line 294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopLocked()V
    .locals 3

    .line 327
    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 330
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 335
    const-string v2, "Failed to unregister process observer"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 341
    const-string v2, "Failed to unregister task stack listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    .line 349
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 352
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 354
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 355
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 8

    .line 846
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/app/GameSessionRecord;

    if-nez v7, :cond_0

    .line 849
    const-string p0, "GameServiceProviderInstance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No game session found for id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 851
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 853
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-virtual {v7}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 858
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 853
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
