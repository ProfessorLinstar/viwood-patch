.class public Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# static fields
.field public static sDefaultAnimationResId:I

.field public static final sPredictBackEnable:Z


# instance fields
.field public mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

.field public mBackAnimationInProgress:Z

.field public mGestureRequest:Landroid/os/RemoteCallback;

.field public mLastBackType:I

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mPendingAnimation:Ljava/lang/Runnable;

.field public mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public mShowWallpaper:Z

.field public final mTmpCloseApps:Ljava/util/ArrayList;

.field public final mTmpOpenApps:Ljava/util/ArrayList;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$3_KWrE8HBx9sWqaF7TUbrvEMTM8(Lcom/android/server/wm/BackNavigationController;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9FAtneOmsYwhkA7x9NZbSzZmCVg(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$MpGSwhHhHzFwdxMFmCI8GhqOovU(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 589
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZWcHyBw4KQ0liM5RskEDFSCfIrs(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$_sV-s730ojBqnLYMHc-ZKLBxF6k(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic $r8$lambda$dzjU19f-cdWdq3iK18MCOe7rztY([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 524
    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$g_ByDeNVNXPA9YaYHzGXMOjxL_o(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$iba_QcmJPhU9b-dQl7x9mb0PizA(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 603
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$jtdGhPvR6R8BpMfaHPUFhfbu-Xk(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 506
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$mF74DH2d0MR6aEa1hZ5Su4VxFXQ(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->lambda$registerBackGestureDelegate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ptIdwp8stbZ4vPWtkGqX3ppBLc4(Lcom/android/server/wm/BackNavigationController;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$4(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zeWg6C_okbSt8pY-FxCY8pNTnmg(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcanCancelAnimations(Lcom/android/server/wm/BackNavigationController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAnimation(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smrestoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smvalidateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    return-void
.end method

.method public static addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 587
    :cond_1
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z
    .locals 3

    .line 626
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 627
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 628
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static allActivitiesHaveWindow(Ljava/util/ArrayList;)Z
    .locals 3

    .line 637
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 638
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 639
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 905
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 906
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 908
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 909
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 910
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_2
    return-void
.end method

.method public static findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 565
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    .line 566
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 472
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->shouldInterceptBackPressedOnRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 478
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 480
    invoke-static {p1, v2}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 485
    :cond_1
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 487
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 488
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_8

    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 495
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_4

    .line 496
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 497
    invoke-static {p1, v3}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 505
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 507
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 511
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-static {p0, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    :cond_3
    return v0

    .line 518
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->size()I

    move-result p2

    const/4 v2, 0x2

    if-gt p2, v2, :cond_7

    .line 522
    new-array p2, v0, [Lcom/android/server/wm/TaskFragment;

    .line 523
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    .line 527
    aget-object p2, p2, v1

    .line 528
    invoke-static {p1, p2}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 531
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 533
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ge v3, v2, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, p2

    .line 535
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 539
    new-instance p2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    return v1

    .line 519
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v2, :cond_9

    return v0

    .line 554
    :cond_9
    invoke-static {v2, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 555
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getSnapshot(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .locals 3

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    goto :goto_0

    .line 2207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 2212
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2213
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    .line 2217
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .locals 3

    const/4 v0, 0x0

    .line 2014
    aget-object v0, p0, v0

    .line 2015
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2016
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2017
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2018
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    invoke-static {v0, p0}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2024
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 2025
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 2026
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 2028
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2029
    array-length v0, p0

    .line 2030
    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2032
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 3

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 615
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_3

    .line 616
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 617
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method public static isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z
    .locals 2

    .line 648
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 649
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isAllActivitiesCreated(Ljava/util/ArrayList;)Z
    .locals 3

    .line 658
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 659
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 660
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 719
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v2, 0x7

    .line 723
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I

    move-result v0

    .line 725
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 726
    sget v3, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-nez v3, :cond_1

    .line 727
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->getDefaultAnimationResId(II)I

    move-result p0

    sput p0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 730
    :cond_1
    sget p0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getCompanionTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2226
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 2227
    aget-object v3, p1, v1

    .line 2228
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 2231
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    .line 2233
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x30

    if-eq v4, v5, :cond_2

    return v0

    .line 2237
    :cond_2
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 5

    .line 2122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2126
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2127
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x3da5c2b6b5a7cc04L    # -4.5078945212881226E11

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2132
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 2133
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 2137
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2138
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->clearOnBackPressedActivities()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Transition;
    .locals 9

    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 2077
    aget-object v3, p0, v1

    .line 2078
    iget-boolean v4, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2081
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2083
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    const/4 v1, 0x0

    .line 2087
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2091
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_2
    if-ltz p0, :cond_6

    .line 2092
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2093
    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v5, v5, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2094
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivitySnapshotController;->addOnBackPressedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2095
    iput-boolean v2, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2097
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x1cd3c640fb4335b0L    # 8.187030472293235E-170

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2099
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2101
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2102
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 2103
    invoke-virtual {v4, v3, v2}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_6
    return-object v3
.end method

.method public static validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1992
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1995
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1996
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final canCancelAnimations()Z
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelPendingAnimation()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1081
    const-string v1, "CoreBackPreview"

    const-string v2, "Remote animation gone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 1083
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 1084
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    return-void
.end method

.method public checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .locals 1

    .line 2143
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2147
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_2

    .line 2148
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2149
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 2150
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 2151
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public clearBackAnimations(Z)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 1008
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 2256
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10800000001L

    .line 2257
    iget-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000002L

    .line 2258
    iget v2, p0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000003L

    .line 2259
    iget-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    const-wide v1, 0x10900000004L

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 2265
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2268
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide v0, 0x10800000005L

    invoke-virtual {p1, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2270
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public hasFixedRotationAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    aget-object p0, p0, v1

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v0, :cond_1

    .line 696
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 701
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result p0

    return p0
.end method

.method public isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 986
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 988
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 991
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 992
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public isMonitoringFinishTransition()Z
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStartingSurfaceShown(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isStartingSurfaceDrawn(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 2251
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$registerBackGestureDelegate$0()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 126
    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    .line 127
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

.method public final synthetic lambda$startBackNavigation$1(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x4

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method public final synthetic lambda$startBackNavigation$4(ILandroid/os/Bundle;)V
    .locals 0

    .line 453
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method public onAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    .line 858
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 859
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 860
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 861
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p2

    .line 862
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v1

    .line 865
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v0

    move-object v6, v4

    :goto_0
    if-ltz v2, :cond_2

    .line 866
    iget-object v7, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    aget-object v7, v7, v2

    .line 867
    iget-boolean v8, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_1

    .line 869
    invoke-virtual {p1, v7}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 871
    invoke-static {v7, v3, v0}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    move v5, v3

    move-object v6, v7

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 876
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    .line 877
    iget-object v7, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-static {p2, v1, v7, v0}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 881
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmCloseAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {p2, v1, v2, v3}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    if-eqz v5, :cond_5

    if-ne v1, v3, :cond_5

    .line 885
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 887
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_2
    if-eq p0, p2, :cond_4

    .line 888
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 890
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_2

    .line 892
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_5
    if-eqz v6, :cond_6

    .line 896
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onBackNavigationDone(Landroid/os/Bundle;I)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2182
    :cond_0
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2183
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2185
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v2, 0x3b7efecc2bb300dL

    const/16 p2, 0xc

    invoke-static {v0, v2, v3, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2188
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 2189
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 2190
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 2191
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    const/4 p2, 0x0

    .line 2193
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 2194
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2195
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onFocusChanged(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monFocusWindowChanged(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 930
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 939
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string p1, "targetDetached"

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_8

    .line 943
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 944
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_5

    .line 945
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 949
    :cond_5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 953
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 954
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 956
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 959
    :cond_8
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 960
    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containsBackAnimationTargets(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p2

    .line 961
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v0, -0x59411bcd8bffc571L

    const/16 v2, 0xc0

    invoke-static {v3, v0, v1, v2, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 965
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_a

    .line 966
    const-string p0, "CoreBackPreview"

    const-string p1, "Gesture animation is applied on another transition?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_a
    iput-object p1, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    .line 971
    invoke-virtual {p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 973
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_b

    .line 974
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 975
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 977
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 978
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onTransitionFinish(Lcom/android/server/wm/Transition;)V
    .locals 5

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez p1, :cond_8

    const/4 p1, 0x1

    .line 1019
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1024
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 1026
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 1029
    :cond_2
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x383ac77d153bcb3aL    # -5.64144236978451E37

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1036
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-string v3, "CoreBackPreview"

    if-ge v1, v0, :cond_7

    .line 1037
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 1043
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->containTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1058
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1059
    const-string p1, "Skip predictive back transition, another transition is playing"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void

    .line 1068
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-eqz p1, :cond_8

    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 1070
    iput-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished transition didn\'t include the targets open: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 1052
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " close: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1051
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    :cond_8
    :goto_2
    return-void
.end method

.method public registerBackGestureDelegate(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 118
    sget-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 130
    :catch_0
    :try_start_2
    const-string p1, "CoreBackPreview"

    const-string v1, "Failed to link to death"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_1
    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removePredictiveSurfaceIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markWindowHasDrawn(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public requestBackGesture()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mGestureRequest:Landroid/os/RemoteCallback;

    if-nez p0, :cond_0

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 141
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 142
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    .line 143
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public restoreBackNavigation()Z
    .locals 6

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2042
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2045
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 2046
    aget-object v4, p0, v0

    .line 2047
    iget-boolean v5, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_1

    .line 2048
    iget-object v3, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2049
    invoke-static {v4, v2, v1}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    move v3, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public restoreBackNavigationSetTransitionReady(Lcom/android/server/wm/Transition;)Z
    .locals 5

    .line 2058
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2061
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2063
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 2064
    aget-object v3, p0, v0

    .line 2065
    invoke-virtual {p1, v3}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2066
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .locals 0

    .line 677
    invoke-virtual {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->build()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 678
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    return-void

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 683
    iget-boolean p1, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz p1, :cond_1

    .line 684
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 685
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_1
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 2244
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 2245
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-void
.end method

.method public shouldPauseTouch(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    .line 999
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startAnimation()V
    .locals 2

    .line 2162
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2166
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 2168
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    return-void

    .line 2172
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2173
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2174
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 158
    sget-boolean v1, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return-object v10

    .line 161
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 178
    new-instance v11, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v11}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    .line 179
    iget-object v12, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    .line 180
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    const-string v1, "CoreBackPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous animation hasn\'t finish, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-nez v2, :cond_4

    .line 191
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v2, v2, v13

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x9b41c630000c8cdL    # -6.860898158053238E261

    invoke-static {v2, v4, v5, v14, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 193
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 195
    new-instance v4, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v10

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 199
    const-string v0, "CoreBackPreview"

    const-string v1, "Window is null, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 208
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_6

    .line 209
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->getMostRecentUsedEmbeddedWindowForBack(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 211
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_8

    .line 212
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x27fbab9c3de33d6dL    # 4.389109128093316E-116

    invoke-static {v0, v1, v2, v14, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 214
    :cond_7
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 217
    :cond_8
    :try_start_3
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 218
    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmbeddedWindowController;->getByHostWindow(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 221
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 222
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    if-eqz v7, :cond_a

    .line 223
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v7, :cond_d

    if-eqz v5, :cond_d

    .line 225
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eq v4, v7, :cond_d

    .line 228
    :cond_b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x55d06398df97c38aL

    invoke-static {v0, v1, v2, v14, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 229
    :cond_c
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 232
    :cond_d
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v4

    if-nez v4, :cond_e

    .line 234
    const-string v0, "CoreBackPreview"

    const-string v1, "No callback registered, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 237
    :cond_e
    :try_start_5
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v6

    const/4 v8, 0x4

    if-nez v6, :cond_f

    move v6, v8

    goto :goto_1

    :cond_f
    const/4 v6, -0x1

    .line 240
    :goto_1
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 241
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v9

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 242
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v5, :cond_10

    .line 244
    iget v9, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v9}, Landroid/window/BackNavigationInfo$Builder;->setFocusedTaskId(I)Landroid/window/BackNavigationInfo$Builder;

    :cond_10
    const/4 v15, 0x1

    if-eqz v1, :cond_12

    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v15

    :goto_2
    if-ltz v9, :cond_12

    .line 249
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-boolean v10, v10, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    if-eqz v10, :cond_11

    move v1, v15

    goto :goto_3

    :cond_11
    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_12
    move v1, v14

    .line 255
    :goto_3
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_13

    if-nez v1, :cond_13

    .line 258
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v15

    goto :goto_4

    :cond_13
    move v1, v14

    .line 257
    :goto_4
    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 259
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    move-object/from16 v9, p1

    invoke-virtual {v1, v2, v9}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->startMonitor(Lcom/android/server/wm/WindowState;Landroid/os/RemoteCallback;)V

    .line 261
    invoke-virtual {v4}, Landroid/window/OnBackInvokedCallbackInfo;->getOverrideBehavior()I

    move-result v1

    .line 262
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v9, v9, v14

    if-eqz v9, :cond_14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v9, v10, v4, v13}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v9, 0x380e880485133941L    # 1.1215435302787646E-38

    invoke-static {v15, v9, v10, v14, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_14
    const/4 v4, 0x2

    if-ne v1, v4, :cond_16

    if-eqz v5, :cond_15

    .line 266
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    goto :goto_5

    :cond_15
    const/4 v9, 0x0

    :goto_5
    if-eqz v7, :cond_16

    if-eq v9, v7, :cond_16

    move v1, v14

    .line 275
    :cond_16
    iget-object v9, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->clearPointerDownOutsideFocusRunnable()V

    if-eq v6, v8, :cond_17

    if-eqz v7, :cond_17

    if-eqz v5, :cond_17

    .line 286
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_17

    goto :goto_7

    :cond_17
    :goto_6
    move v6, v8

    goto/16 :goto_16

    :cond_18
    :goto_7
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    if-eqz v6, :cond_19

    goto :goto_6

    :cond_19
    move v6, v8

    .line 301
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-static {v5, v7, v8}, Lcom/android/server/wm/BackNavigationController;->getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v9

    .line 304
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController;->isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-nez v9, :cond_1b

    :cond_1a
    :goto_8
    move v2, v6

    const/4 v6, 0x0

    :goto_9
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 307
    :cond_1b
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-eq v9, v13, :cond_1c

    move-object v9, v2

    move v2, v14

    const/4 v6, 0x0

    goto/16 :goto_d

    .line 311
    :cond_1c
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_8

    .line 314
    :cond_1d
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto :goto_8

    .line 318
    :cond_1e
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveWindow(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto :goto_8

    .line 322
    :cond_1f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_24

    if-nez v1, :cond_24

    if-eqz v10, :cond_20

    .line 324
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 325
    :cond_20
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCreated(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 327
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 329
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_21

    .line 330
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 331
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 333
    :cond_21
    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController;->isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 334
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11, v2, v1}, Landroid/window/BackNavigationInfo$Builder;->setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;

    .line 338
    :cond_22
    invoke-virtual {v7, v14}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 340
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v9, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v1, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v11, v2, v6, v9, v1}, Landroid/window/BackNavigationInfo$Builder;->setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;

    .line 346
    :cond_23
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 347
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    .line 346
    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;

    .line 349
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v6, v1

    move v2, v4

    move-object v9, v7

    goto/16 :goto_d

    .line 355
    :cond_24
    iget-object v1, v5, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 356
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_8

    .line 362
    :cond_25
    iget-object v1, v5, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v5, v14, v13}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 370
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_a

    :cond_26
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_27

    .line 372
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {v1, v8}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    :cond_27
    if-eqz v2, :cond_2d

    .line 375
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    if-eqz v10, :cond_28

    .line 376
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_c

    .line 378
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 380
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 383
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_b

    :cond_29
    move v2, v14

    :goto_b
    iput-boolean v2, v0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    move-object v6, v1

    move-object v9, v5

    const/4 v2, 0x1

    goto :goto_d

    .line 389
    :cond_2a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 390
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 391
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_2b

    if-ne v1, v9, :cond_2d

    .line 393
    :cond_2b
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 394
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveWindow(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 395
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_c

    :cond_2c
    move-object v6, v2

    move-object v9, v6

    const/4 v2, 0x3

    goto :goto_d

    :cond_2d
    :goto_c
    move v9, v6

    move-object v6, v2

    move v2, v9

    goto/16 :goto_9

    .line 403
    :goto_d
    invoke-virtual {v11, v2}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 405
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v14

    if-eqz v1, :cond_30

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    const-string v1, ";"

    invoke-virtual {v8}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v13, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;

    invoke-direct {v13}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v10, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_2e
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_2f
    const/4 v10, 0x0

    :goto_f
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v10, v13, v15}, [Ljava/lang/Object;

    move-result-object v1

    move-object v10, v5

    move-object v13, v6

    const-wide v5, 0x755cb5c5d22e3a9dL    # 2.1554118172289596E257

    invoke-static {v4, v5, v6, v14, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :goto_10
    const/4 v1, 0x1

    goto :goto_11

    :cond_30
    move-object v10, v5

    move-object v13, v6

    goto :goto_10

    :goto_11
    if-eq v2, v1, :cond_31

    const/4 v1, 0x3

    if-eq v2, v1, :cond_31

    const/4 v1, 0x2

    if-eq v2, v1, :cond_31

    if-nez v2, :cond_32

    :cond_31
    if-eqz v3, :cond_32

    .line 418
    invoke-virtual {v3, v2}, Landroid/window/BackAnimationAdapter;->isAnimatable(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v15, 0x1

    goto :goto_12

    :cond_32
    move v15, v14

    :goto_12
    if-eqz v15, :cond_36

    .line 421
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    move-object v5, v10

    move-object v6, v13

    .line 422
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v3, 0x1

    goto :goto_13

    :cond_33
    move v3, v14

    .line 431
    :goto_13
    iput-boolean v3, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v3, :cond_36

    .line 433
    iget-object v3, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 434
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/16 v16, 0x3

    aget-boolean v3, v3, v16

    if-eqz v3, :cond_34

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4403bbab80973f99L    # 4.550139763671087E19

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v14, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 436
    :cond_34
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 440
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_36

    .line 441
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 444
    :cond_35
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 448
    :cond_36
    invoke-virtual {v11, v15}, Landroid/window/BackNavigationInfo$Builder;->setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v9, :cond_37

    .line 452
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/BackNavigationController;I)V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 454
    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_15

    .line 456
    :cond_37
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 458
    :goto_15
    iput v2, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 459
    invoke-virtual {v11}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 289
    :goto_16
    :try_start_6
    invoke-virtual {v11, v6}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 290
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v11, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 292
    iput v6, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 293
    invoke-virtual {v11}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 460
    :goto_17
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
