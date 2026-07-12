.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

.field public mCloseTarget:Lcom/android/server/wm/WindowContainer;

.field public mIsLaunchBehind:Z

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mOpenTargets:[Lcom/android/server/wm/WindowContainer;

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;


# direct methods
.method public static synthetic $r8$lambda$5-TMGNN5bJg5OrHMzzAUjDRpoUs(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->lambda$build$0([Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareTransitionIfNeeded(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->prepareTransitionIfNeeded([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .locals 0

    .line 1826
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 1828
    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    return-void
.end method


# virtual methods
.method public final applyPreviewStrategy(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;[Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1902
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isSupportWindowlessSurface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmShowWindowlessSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    if-nez v0, :cond_2

    .line 1904
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 1906
    aget-object v2, p2, v0

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_1

    if-nez v1, :cond_2

    .line 1911
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->createStartingSurface(Landroid/window/TaskSnapshot;)V

    .line 1915
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1916
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    .line 1917
    aget-object p1, p2, p0

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public build()Ljava/lang/Runnable;
    .locals 4

    .line 1923
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_6

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1926
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isSupportWindowlessSurface()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1927
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smgetTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 1930
    const-string p0, "CoreBackPreview"

    const-string v0, "No opening activity"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    if-nez v0, :cond_4

    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmShowWindowlessSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v0, v0, v2

    invoke-static {v0, v3}, Lcom/android/server/wm/BackNavigationController;->getSnapshot(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 1938
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0, p0, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$mcomposeAnimations(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    .line 1941
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 1942
    invoke-virtual {v0}, Lcom/android/server/wm/ActivitySnapshotController;->clearOnBackPressedActivities()V

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->applyPreviewStrategy(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;[Lcom/android/server/wm/ActivityRecord;)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->makeAnimationFinishedCallback()Landroid/window/IBackAnimationFinishedCallback;

    move-result-object v0

    .line 1946
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->getAnimationTargets()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 1948
    new-instance v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    return-object v2

    :cond_6
    :goto_2
    return-object v1
.end method

.method public containTarget(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    .line 1845
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1846
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1847
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    aget-object v2, v2, v0

    .line 1848
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    .line 1853
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eq p1, v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method public final synthetic lambda$build$0([Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V
    .locals 2

    .line 1950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smvalidateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    .line 1955
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1956
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1954
    :goto_0
    invoke-interface {v0, p1, p0, p2}, Landroid/window/IBackAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/os/IBinder;Landroid/window/IBackAnimationFinishedCallback;)V

    return-void

    .line 1951
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string p2, "cancelAnimation"

    invoke-static {p1, p2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V

    .line 1952
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {p0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1960
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final makeAnimationFinishedCallback()Landroid/window/IBackAnimationFinishedCallback;
    .locals 1

    .line 1966
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    return-object v0
.end method

.method public final prepareTransitionIfNeeded([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 7

    .line 1859
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1862
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 1864
    aget-object v4, p1, v2

    .line 1865
    iget-boolean v5, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1868
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1870
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 v5, 0xd

    .line 1871
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v5

    .line 1873
    invoke-virtual {v4, p2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1874
    invoke-virtual {v5, p2, v3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1875
    array-length p2, p3

    sub-int/2addr p2, v3

    :goto_2
    if-ltz p2, :cond_4

    .line 1876
    aget-object v6, p3, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1877
    aget-object v6, p3, p2

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1879
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1880
    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smsetLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;

    .line 1882
    :cond_5
    invoke-virtual {v4, v5, v1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1885
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, p0, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-object v5
.end method

.method public varargs setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .locals 0

    .line 1833
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 1834
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .locals 0

    .line 1839
    iput-boolean p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mIsLaunchBehind:Z

    return-object p0
.end method
