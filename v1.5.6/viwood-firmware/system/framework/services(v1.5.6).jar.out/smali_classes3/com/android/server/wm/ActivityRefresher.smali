.class public Lcom/android/server/wm/ActivityRefresher;
.super Ljava/lang/Object;
.source "ActivityRefresher.java"


# instance fields
.field public final mEvaluators:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$WDYeu8LhQV7CvDT_5B8bMM1qFDw(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->lambda$onActivityConfigurationChanging$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwO7VpmwnP9FlPRmGMzyHmcJCmE(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Ljava/lang/Object;)Z
    .locals 0

    .line 126
    check-cast p3, Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 127
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher$Evaluator;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 111
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isRefreshRequested()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onActivityConfigurationChanging$0(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 5

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 79
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshCycleThroughStopEnabled()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityViaPauseForCameraCompat()Z

    move-result p2

    if-nez p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, v0

    .line 83
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    .line 84
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x6413691bf2e03f6eL    # 1.200206803860267E174

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 87
    :cond_2
    new-instance v1, Landroid/app/servertransaction/RefreshCallbackItem;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    .line 88
    :goto_1
    invoke-direct {v1, v2, p2}, Landroid/app/servertransaction/RefreshCallbackItem;-><init>(Landroid/os/IBinder;I)V

    .line 89
    new-instance p2, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p2, v2, v0, v0}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .line 93
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 94
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v1, v4, v0

    aput-object p2, v4, p3

    .line 93
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move p2, v0

    :goto_2
    if-eqz p2, :cond_4

    .line 99
    iget-object p2, p0, Lcom/android/server/wm/ActivityRefresher;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 105
    :cond_4
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    :goto_3
    return-void
.end method

.method public onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 117
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->setIsRefreshRequested(Z)V

    return-void
.end method

.method public removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
