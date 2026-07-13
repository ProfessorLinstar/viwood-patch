.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "BackNavigationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mAppWindowDrawn:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public final mIsOpen:Z

.field public final mSwitchType:I

.field public final mTarget:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZI)V
    .locals 2

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 1674
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1675
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 1676
    iput-boolean p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mIsOpen:Z

    .line 1677
    iput p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    return-void
.end method


# virtual methods
.method public createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 21

    move-object/from16 v0, p0

    .line 1745
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_0

    return-object v1

    .line 1749
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1750
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1751
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    .line 1752
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1753
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1754
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    .line 1757
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_2

    .line 1758
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 1761
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_9

    if-nez v1, :cond_7

    goto :goto_5

    .line 1767
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1769
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 1770
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v5

    const/4 v6, 0x0

    .line 1769
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    .line 1771
    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    :goto_3
    move-object v10, v2

    goto :goto_4

    .line 1772
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 1773
    :goto_4
    iget-boolean v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mIsOpen:Z

    xor-int/lit8 v6, v2, 0x1

    .line 1774
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1775
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1776
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v11

    new-instance v12, Landroid/graphics/Point;

    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v12, v13, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 1777
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    .line 1778
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v19

    .line 1779
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v20

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v13

    invoke-direct/range {v4 .. v20}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    iput-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v4

    .line 1764
    :cond_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRemoteAnimationTarget fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreBackPreview"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "BackWindowAnimationAdaptor mCapturedLeash="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1736
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTopTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 1689
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1718
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 1

    .line 1704
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    .line 1706
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1707
    iget p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_0

    .line 1708
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    .line 1709
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    .line 1710
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 1711
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget p1, p4, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p3, p4, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method
