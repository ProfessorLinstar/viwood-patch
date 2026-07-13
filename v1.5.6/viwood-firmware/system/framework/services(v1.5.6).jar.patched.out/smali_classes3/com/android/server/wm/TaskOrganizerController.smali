.class public Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskOrganizerStates:Landroid/util/ArrayMap;

.field public final mTaskOrganizers:Ljava/util/ArrayDeque;


# direct methods
.method public static synthetic $r8$lambda$-E7HA_4Ykr1Ex3yc_2uHWFkdKAE([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1061
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1064
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$VSKvVVPI5NKYlAdukWH1TzgUuVQ(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskOrganizerController;->lambda$registerTaskOrganizer$1(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bT61f4Y0QjfsnHX0y1DB-YUT2U4(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->lambda$unregisterTaskOrganizer$2(Landroid/window/ITaskOrganizer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ersYTYpQCW6sGFO8mYwHFWIJ7D0(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 514
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    xor-int/lit8 v1, v0, 0x1

    .line 515
    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 518
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 519
    const-string v0, "TaskOrganizerController.registerTaskOrganizer"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    .line 521
    new-instance v0, Landroid/window/TaskAppearedInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterceptBackPressedOnRootTasks(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizerStates(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController;Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 478
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 473
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 474
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 479
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 480
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;
    .locals 4

    .line 610
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 611
    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;

    invoke-direct {v1}, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x80

    .line 612
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 613
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start starting window animation, the window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskOrganizerController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 619
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object v1
.end method


# virtual methods
.method public addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z
    .locals 2

    .line 625
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 633
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 635
    iput p3, p1, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 637
    :cond_2
    iput-object p4, p1, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 638
    iget-object p2, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object p2, p1, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 641
    :try_start_0
    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 643
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending onTaskStart callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public addWindowlessStartingSurface(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/content/res/Configuration;Landroid/window/IWindowlessStartingSurfaceCallback;)I
    .locals 3

    .line 714
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 718
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_1

    return v1

    .line 722
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    move-result-object v0

    .line 723
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 724
    iget-object p5, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object p2, p5, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 725
    iput-object p4, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 726
    iput-object p6, v0, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    .line 727
    iput-object p3, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 729
    :try_start_0
    invoke-interface {p0, v0}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :catch_0
    move-exception p0

    .line 731
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending addWindowlessStartingSurface "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public copySplashScreenView(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)Z
    .locals 2

    .line 755
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    return v1

    .line 765
    :cond_2
    :try_start_0
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p2, p0}, Landroid/window/ITaskOrganizer;->copySplashScreenView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 767
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending copyStartingWindowView callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x0

    .line 860
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;Z)Lcom/android/server/wm/Task;
    .locals 6

    .line 866
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    int-to-long v4, p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x757eae26280037d0L    # 9.213305648872434E257

    const/4 v5, 0x5

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 871
    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 872
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 873
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task$Builder;->setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 875
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 876
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task$Builder;->setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 877
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 878
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task$Builder;->setRemoveWithTaskOrganizer(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 879
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    return-object p0
.end method

.method public createRootTask(IILandroid/os/IBinder;Z)V
    .locals 4

    .line 840
    const-string v0, "createRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 843
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 844
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 846
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_0

    int-to-long p0, p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p3, -0x1fbba92e0f95c2b2L    # -5.4540658974403305E155

    const/4 p1, 0x1

    invoke-static {p2, p3, p4, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 848
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 851
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;Z)Lcom/android/server/wm/Task;

    .line 852
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 854
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 852
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 854
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw p0
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 8

    .line 886
    const-string v0, "deleteRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 889
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 890
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 891
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 892
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1

    .line 893
    monitor-exit p0

    goto :goto_0

    .line 894
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_3

    .line 899
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    int-to-long v6, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x5f4d1700cbd737a7L    # 1.1902807635953502E151

    const/4 v7, 0x5

    invoke-static {v2, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 901
    :cond_2
    const-string v2, "deleteRootTask"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 902
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 895
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to delete task not created by organizer task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw p0
.end method

.method public dispatchPendingEvents()V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 913
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 914
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 915
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchPendingEvents()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "TaskOrganizerController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/ITaskOrganizer;

    .line 1174
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ITaskOrganizer;

    .line 1175
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {v3}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 1176
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizedTasks(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmUid(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne p2, v3, :cond_1

    .line 1180
    const-string v3, " (active)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0x3a

    .line 1182
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    const/4 v3, 0x0

    .line 1183
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1184
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1185
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    .line 1186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-static {v6}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1186
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1191
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 6

    .line 1008
    const-string v0, "getChildTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1011
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_6

    .line 1015
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1017
    const-string p2, "TaskOrganizerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get children of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because it is not valid."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1020
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1022
    const-string p1, "TaskOrganizerController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a task..."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    monitor-exit p0

    goto :goto_0

    .line 1026
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_2

    .line 1027
    const-string p1, "TaskOrganizerController"

    const-string p2, "Can only get children of root tasks created via createRootTask"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    monitor-exit p0

    goto :goto_0

    .line 1030
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 1032
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 1035
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 1038
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1040
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1043
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 1013
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t get children of null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1041
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1043
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    throw p0
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 4

    .line 977
    const-string v0, "getImeTarget()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 980
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 984
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 987
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 988
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 993
    :cond_1
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_2

    .line 995
    monitor-exit v2

    goto :goto_0

    .line 998
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1001
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 989
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 999
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw p0
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .locals 4

    .line 1049
    const-string v0, "getRootTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1052
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1053
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1058
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, p1}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1066
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1056
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1067
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1069
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    throw p0
.end method

.method public getTaskOrganizer()Landroid/window/ITaskOrganizer;
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    return-object p0
.end method

.method public getTaskOrganizerPendingEvents(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object p0

    return-object p0
.end method

.method public getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    return-object p0
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->shouldInterceptBackPressedOnRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 1136
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1139
    const-string p0, "TaskOrganizerController"

    const-string p1, "cannot get handle BackPressedOnTaskRoot because organizerState is not present"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 1145
    invoke-static {v0, p1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x3

    .line 1152
    invoke-static {v0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1155
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v3, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->removePendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    .line 1160
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->addPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    .line 1161
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return v2
.end method

.method public isSupportWindowlessStartingSurface()Z
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$registerTaskOrganizer$1(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .locals 5

    .line 504
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x877a5a0909bc4a9L    # -6.28201494567975E267

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 513
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$unregisterTaskOrganizer$2(Landroid/window/ITaskOrganizer;I)V
    .locals 3

    .line 545
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-nez p0, :cond_0

    return-void

    .line 549
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, p2

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, 0x17ac6f2129153930L

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    return-void
.end method

.method public onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V
    .locals 1

    .line 784
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 793
    :cond_2
    :try_start_0
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p2, p0}, Landroid/window/ITaskOrganizer;->onAppSplashScreenViewRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 795
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending onAppSplashScreenViewRemoved callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 1

    .line 800
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_0

    .line 801
    invoke-static {p0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$maddTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 802
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object p0

    const/4 p1, 0x0

    .line 804
    invoke-static {p0, p2, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->addPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    :cond_0
    return-void
.end method

.method public onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 2

    .line 931
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 936
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 937
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object p0

    if-nez p0, :cond_1

    .line 940
    const-string p0, "TaskOrganizerController"

    const-string p1, "cannot send onTaskInfoChanged because pending events queue is not present for this organizer"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->numPendingTaskEvents()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x1

    .line 951
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mdispatchTaskInfoChanged(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;Z)V

    return-void

    .line 958
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 960
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    goto :goto_1

    .line 962
    :cond_3
    iget p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eq p1, v1, :cond_4

    :goto_0
    return-void

    .line 969
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->removePendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    .line 971
    :goto_1
    iget-boolean p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    or-int/2addr p1, p2

    iput-boolean p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->addPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    return-void
.end method

.method public onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p1, :cond_0

    .line 815
    iget-boolean v0, p2, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$mremoveTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method public final onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V
    .locals 2

    if-nez p1, :cond_0

    .line 822
    const-string p0, "TaskOrganizerController"

    const-string p1, "cannot send onTaskVanished because organizer state is not present for this organizer"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 826
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object p0

    .line 829
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->removePendingTaskEvents(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 833
    :cond_1
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->addPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 487
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 489
    const-string p1, "TaskOrganizerController"

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 498
    const-string v0, "registerTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 502
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, v0, v3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    .line 525
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 530
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 532
    :goto_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p1

    .line 530
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 534
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    throw p0
.end method

.method public removeStartingWindow(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;ZZ)V
    .locals 4

    .line 651
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    goto/16 :goto_5

    .line 660
    :cond_2
    new-instance p0, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {p0}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 661
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 663
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 664
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p3

    iget p3, p3, Landroid/view/DisplayInfo;->state:I

    if-ne p3, v1, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, v2

    :goto_1
    iput-boolean p3, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 665
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p3

    .line 666
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 669
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz p4, :cond_5

    .line 671
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_4

    .line 672
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 673
    iput v1, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    goto :goto_2

    .line 675
    :cond_4
    iput v0, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    .line 680
    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 683
    iget-boolean v0, p4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 685
    :cond_6
    iget-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    .line 686
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 687
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p1

    .line 688
    invoke-virtual {p1, p4}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/window/StartingWindowRemovalInfo;->roundedCornerRadius:F

    .line 689
    invoke-static {p4}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 690
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    .line 691
    iget-object p3, p4, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4

    .line 684
    :cond_7
    :goto_3
    iput-boolean v2, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 696
    :cond_8
    :goto_4
    :try_start_0
    invoke-interface {p2, p0}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 698
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending onStartTaskFinished callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public removeWindowlessStartingSurface(IZ)V
    .locals 1

    .line 738
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    new-instance v0, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 743
    iput p1, v0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    const/4 p1, 0x1

    .line 744
    iput-boolean p1, v0, Landroid/window/StartingWindowRemovalInfo;->windowlessSurface:Z

    .line 745
    iput-boolean p2, v0, Landroid/window/StartingWindowRemovalInfo;->removeImmediately:Z

    const/4 p1, 0x3

    .line 746
    iput p1, v0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    .line 748
    :try_start_0
    invoke-interface {p0, v0}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 750
    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending removeWindowlessStartingSurface "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 920
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_0

    .line 923
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onImeDrawnOnTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 925
    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onImeDrawnOnTask callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .locals 7

    .line 1105
    const-string v0, "restartTopActivityProcessIfVisible()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1109
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1111
    const-string p1, "TaskOrganizerController"

    const-string v2, "Could not resolve window from token"

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1114
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1116
    const-string p1, "TaskOrganizerController"

    const-string v2, "Could not resolve task from token"

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    monitor-exit p0

    goto :goto_0

    .line 1119
    :cond_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x7c0ff7ece6ec0f6L

    invoke-static {v2, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1121
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 1125
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 1125
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1127
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    throw p0
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .locals 8

    .line 1076
    const-string v0, "setInterceptBackPressedOnTaskRoot()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1079
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1080
    :try_start_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x3ba0bfb5c1b2ccd6L    # -2.3059265998119675E21

    const/4 v7, 0x3

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1084
    const-string p0, "TaskOrganizerController"

    const-string p1, "Could not resolve window from token"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1087
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1089
    const-string p0, "TaskOrganizerController"

    const-string p1, "Could not resolve task from token"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    monitor-exit v2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 1093
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1095
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1097
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1097
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1099
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    throw p0
.end method

.method public shouldInterceptBackPressedOnRootTask(Lcom/android/server/wm/Task;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1166
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .locals 6

    .line 540
    const-string v0, "unregisterTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 544
    :try_start_0
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    .line 554
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 555
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 557
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 559
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p1

    .line 559
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0
.end method
