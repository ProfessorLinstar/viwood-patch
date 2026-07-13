.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mPreparedOpenTransition:Lcom/android/server/wm/Transition;

.field public final mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mRequestedStartingSurfaceId:I

.field public mStartingSurface:Landroid/view/SurfaceControl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedStartingSurfaceId(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Landroid/view/SurfaceControl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public varargs constructor <init>(ZILandroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/WindowContainer;)V
    .locals 4

    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1496
    iput v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 1503
    array-length v0, p4

    new-array v0, v0, [Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1504
    array-length v0, p4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, p4, v0

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$smcreateAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1507
    :cond_0
    array-length p1, p4

    if-le p1, v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->createWrapTarget(Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    goto :goto_1

    .line 1508
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public cleanUp(Z)V
    .locals 1

    .line 1521
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    .line 1522
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1525
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1526
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1527
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1530
    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public cleanUpWindowlessSurface(Z)V
    .locals 3

    .line 1649
    iget v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    xor-int/lit8 p1, p1, 0x1

    .line 1653
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/TaskOrganizerController;->removeWindowlessStartingSurface(IZ)V

    .line 1655
    iput v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 1656
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1657
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    const/4 p1, 0x0

    .line 1658
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    :cond_1
    :goto_0
    return-void
.end method

.method public createStartingSurface(Landroid/window/TaskSnapshot;)V
    .locals 11

    if-nez p1, :cond_0

    goto :goto_1

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1587
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v2

    .line 1588
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1594
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1595
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1596
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 1600
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_5
    move-object v6, v4

    if-nez v6, :cond_6

    :goto_1
    return-void

    .line 1609
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    if-eq v2, v3, :cond_7

    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1611
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v4

    :cond_8
    if-eqz v1, :cond_9

    .line 1613
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_2

    .line 1614
    :goto_3
    iget-object v0, v5, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    if-eqz v1, :cond_a

    .line 1616
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_4
    move-object v7, v0

    goto :goto_5

    .line 1617
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    goto :goto_4

    :goto_5
    new-instance v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;

    invoke-direct {v10, p0, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Task;)V

    move-object v8, p1

    .line 1615
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskOrganizerController;->addWindowlessStartingSurface(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/content/res/Configuration;Landroid/window/IWindowlessStartingSurfaceCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    return-void
.end method

.method public final createWrapTarget(Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1538
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1539
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 1540
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1542
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 1543
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1544
    iget-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    .line 1545
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v7, "cross-animation-leash"

    .line 1546
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1547
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1548
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1549
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "BackWindowAnimationAdaptorWrapper.getOrCreateAnimationTarget"

    .line 1550
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1552
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1553
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    .line 1554
    invoke-virtual {v4, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1555
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1556
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 1557
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v4, v4, v2

    .line 1558
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1559
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1564
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1566
    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 1567
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 1566
    invoke-virtual {v7, v4, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1570
    :cond_2
    new-instance v0, Landroid/view/RemoteAnimationTarget;

    iget v1, v5, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget v2, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-boolean v4, v5, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    move-object v7, v6

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    move-object v8, v7

    iget v7, v5, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    move-object v10, v8

    new-instance v8, Landroid/graphics/Point;

    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    invoke-direct {v8, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v5, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v15, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v5, v5, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v5

    move-object v5, v10

    move-object v10, v9

    invoke-direct/range {v0 .. v16}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1513
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

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
