.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public mDisplayId:I

.field public mEndParent:Lcom/android/server/wm/WindowContainer;

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mKnownConfigChanges:I

.field public mReadyFlags:I

.field public mReadyMode:I

.field public mRestoringTransientHide:Z

.field public mRotation:I

.field public mShowWallpaper:Z

.field public mSnapshot:Landroid/view/SurfaceControl;

.field public mSnapshotLuma:F

.field public mStartParent:Lcom/android/server/wm/WindowContainer;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 3595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3566
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 3570
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    .line 3574
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 3576
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3577
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 3581
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 3596
    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3597
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3598
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 3599
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3600
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 3601
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3602
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3603
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 0

    .line 3608
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 3609
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 3610
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 p1, 0x0

    .line 3611
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .locals 6

    .line 3674
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3677
    :goto_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 3680
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 3683
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 3687
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3689
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3691
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_5

    .line 3692
    invoke-virtual {v3}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit16 v0, v0, 0x800

    .line 3695
    :cond_5
    iget-boolean v3, v2, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    const/16 v4, 0x100

    .line 3696
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3697
    const-string v3, "Transition"

    const-string v4, "Unexpected launch-task-behind operation in shell transition"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x80000

    or-int/2addr v0, v3

    .line 3700
    :cond_6
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v3, 0x48000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    or-int/2addr v0, v3

    .line 3705
    :cond_7
    iget-object v2, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_8

    or-int/lit8 v0, v0, 0x10

    .line 3710
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/high16 v3, 0x400000

    if-eqz v2, :cond_a

    .line 3712
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3713
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v5, :cond_9

    or-int/lit8 v0, v0, 0x10

    .line 3716
    :cond_9
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/2addr v0, v5

    .line 3717
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v5

    if-eqz v5, :cond_b

    or-int/2addr v0, v3

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 3721
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_c

    if-nez v1, :cond_c

    .line 3723
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_11

    .line 3726
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x200

    .line 3730
    :cond_d
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eq v1, v2, :cond_f

    .line 3732
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_10

    .line 3735
    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 3736
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_10

    :cond_f
    :goto_3
    or-int/lit16 v0, v0, 0x4000

    .line 3740
    :cond_10
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_16

    or-int/lit16 p1, v0, 0x400

    goto :goto_4

    .line 3745
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_13

    or-int/lit8 p1, v0, 0x20

    .line 3748
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit16 v0, v0, 0xa0

    goto :goto_5

    :cond_12
    :goto_4
    move v0, p1

    goto :goto_5

    .line 3751
    :cond_13
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 3753
    :cond_14
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_15

    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    .line 3757
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result p1

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_16

    const/16 v1, 0xbb7

    if-gt p1, v1, :cond_16

    const/high16 p1, 0x10000

    or-int/2addr v0, p1

    .line 3764
    :cond_16
    :goto_5
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_17

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_17

    const/high16 p1, 0x40000

    or-int/2addr v0, p1

    :cond_17
    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_18

    const/high16 p1, 0x100000

    or-int/2addr v0, p1

    :cond_18
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_19

    or-int p0, v0, v3

    return p0

    :cond_19
    return v0
.end method

.method public getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 4

    .line 3654
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    .line 3655
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    return v1

    .line 3660
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    .line 3661
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne p1, v0, :cond_3

    const/4 p0, 0x6

    return p0

    .line 3664
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2

    :cond_5
    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method public hasChanged()Z
    .locals 4

    .line 3626
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3628
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_5

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5

    :cond_0
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_5

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3636
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-nez v2, :cond_2

    return v3

    :cond_2
    if-ne v0, v2, :cond_5

    .line 3637
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3641
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v0, v2, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3642
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3643
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3644
    invoke-static {v2}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_5

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v1
.end method

.method public final isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z
    .locals 5

    .line 3779
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 3780
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3781
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 3782
    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 3783
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3785
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    .line 3786
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ne v0, p0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    .line 3787
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3788
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v4

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v3

    :goto_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3616
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3617
    const-string v1, "ChangeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3620
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 3621
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
