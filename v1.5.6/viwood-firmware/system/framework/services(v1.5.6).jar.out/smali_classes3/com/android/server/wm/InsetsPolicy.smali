.class public Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public mForcedShowingTypes:I

.field public final mHideNavBarForKeyboard:Z

.field public final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mShowingTransientTypes:I

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 66
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    .line 68
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 94
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 103
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 104
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101c1

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 106
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string v0, "TransientControlTarget"

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 107
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string v0, "PermanentControlTarget"

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .locals 1

    .line 362
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    if-ne v0, p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    .line 366
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p3

    if-ne p3, p1, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 373
    new-instance p0, Landroid/view/InsetsSource;

    invoke-direct {p0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 374
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 375
    invoke-virtual {p3, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p3

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v3, 0x63

    if-gt v1, v3, :cond_0

    .line 556
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abortTransient()V
    .locals 3

    .line 490
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(II)V

    :cond_1
    const/4 v0, 0x0

    .line 497
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 498
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 499
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    return-void
.end method

.method public final adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 1

    if-eqz p1, :cond_3

    .line 434
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_1

    .line 438
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p3

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 441
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 440
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    :cond_3
    return-object p2
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 4

    if-nez p3, :cond_0

    .line 227
    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 231
    :goto_1
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p3

    .line 232
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-ne p3, p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/DisplayPolicy;->replaceInsetsSourcesIfNeeded(Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p3

    .line 233
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne p3, p2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public final adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    return-object p1

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 352
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object p1

    .line 354
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 4

    .line 381
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4

    .line 385
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    xor-int/lit8 p0, p0, 0x1

    .line 386
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, p2

    :goto_0
    if-ltz p1, :cond_3

    .line 387
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_1

    .line 392
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 394
    :cond_1
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 395
    invoke-virtual {v2, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 396
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 399
    :cond_4
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 401
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 402
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_5

    .line 404
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p1

    .line 406
    :cond_5
    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 408
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p2

    .line 411
    :cond_6
    iget p0, p1, Lcom/android/server/wm/WindowContainer;->mMergedExcludeInsetsTypes:I

    .line 412
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_8

    .line 415
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 416
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    .line 418
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p1

    .line 420
    :cond_7
    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 422
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 423
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 424
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_8
    return-object p2
.end method

.method public areTypesForciblyShowing(I)Z
    .locals 0

    .line 628
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V
    .locals 2

    .line 465
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 470
    invoke-virtual {v1, p1}, Lcom/android/server/wm/InsetsStateController;->getFakeControllingTypes(Lcom/android/server/wm/InsetsTarget;)I

    move-result v1

    .line 472
    invoke-interface {p1}, Lcom/android/server/wm/InsetsTarget;->getRequestedVisibleTypes()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz v0, :cond_1

    .line 473
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 474
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz p1, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 480
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 694
    :cond_1
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 700
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 701
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->dispatchTransientSystemBarVisibilityChanged(IZZ)V

    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InsetsPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nav: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShowingTransientTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 714
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    if-eqz v0, :cond_1

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mForcedShowingTypes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 718
    invoke-static {p0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public enforceInsetsPolicyForTarget(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 8

    .line 276
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 279
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_0

    .line 280
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 281
    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    goto :goto_2

    .line 282
    :cond_0
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v1, :cond_4

    .line 283
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move-object v3, p2

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 284
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p2, :cond_2

    .line 288
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v3, v6

    .line 290
    :cond_2
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    move-object v1, p2

    .line 294
    :goto_2
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    if-ne v1, p2, :cond_6

    .line 296
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 304
    :cond_6
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_8

    .line 305
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 306
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->removeSourceAt(I)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 311
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProviders()Landroid/util/SparseArray;

    move-result-object v2

    .line 312
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 313
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_b

    .line 314
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 315
    invoke-virtual {v4, v0}, Lcom/android/server/wm/InsetsSourceProvider;->overridesFrame(I)Z

    move-result v5

    if-eqz v5, :cond_a

    if-ne v1, p2, :cond_9

    .line 317
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v5

    .line 319
    :cond_9
    new-instance v5, Landroid/view/InsetsSource;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 320
    invoke-virtual {v4, v0}, Lcom/android/server/wm/InsetsSourceProvider;->getOverriddenFrame(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 321
    invoke-virtual {v1, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 325
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    .line 326
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x6

    if-ne p2, v0, :cond_c

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    return-object v1

    .line 329
    :cond_d
    :goto_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_e

    .line 331
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_e

    .line 332
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-ne p1, p0, :cond_e

    .line 333
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    .line 334
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    or-int/2addr v0, p0

    .line 337
    :cond_e
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0}, Landroid/view/InsetsState;-><init>()V

    .line 338
    invoke-virtual {p0, v1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    return-object p0
.end method

.method public final forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isForceShowNavigationBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 248
    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 249
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    if-eqz p1, :cond_3

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    .line 257
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result p1

    div-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->scale(F)V

    :cond_3
    return-void
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 564
    aget v0, p3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 565
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, p3, p2

    .line 566
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v0, :cond_0

    .line 577
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 579
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 587
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-object p1

    .line 593
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShowing(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 598
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->areTypesForciblyShownTransiently(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 604
    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 605
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 606
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 607
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p2

    if-nez p2, :cond_7

    .line 610
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object p1
.end method

.method public getPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 511
    aget v0, p3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 512
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, p3, p2

    .line 513
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    if-nez p2, :cond_0

    .line 521
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 529
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShowing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->areTypesForciblyShownTransiently(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 538
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 540
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 541
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    .line 542
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p2

    if-nez p2, :cond_5

    .line 545
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object p1
.end method

.method public getTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public hasHiddenSources(I)Z
    .locals 4

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hideTransient()V
    .locals 2

    .line 202
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 211
    iput v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public isTransient(I)Z
    .locals 0

    .line 216
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 620
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_1

    .line 621
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 623
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V

    .line 453
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    .line 663
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isRemoteInsetsControllerControllingSystemBars()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 670
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez p0, :cond_1

    goto :goto_0

    .line 677
    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_2

    const/16 v0, 0x63

    if-gt p0, v0, :cond_2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public showTransient(IZ)V
    .locals 6

    .line 162
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 165
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 170
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    or-int/2addr v0, v5

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 175
    :cond_2
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eq p1, v0, :cond_5

    .line 176
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 177
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 178
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-interface {p1, v1, v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(IIZ)V

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 184
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 186
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 184
    :goto_2
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    :cond_5
    return-void
.end method

.method public updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .locals 9

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    filled-new-array {v1}, [I

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 121
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    .line 123
    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    .line 125
    invoke-virtual {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 126
    :goto_1
    iput-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    .line 129
    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v5, v8, :cond_4

    .line 130
    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_2

    :cond_4
    if-ne v5, v2, :cond_5

    .line 132
    invoke-virtual {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    .line 133
    :cond_5
    :goto_2
    iput-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 134
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v4, v2, :cond_6

    if-ne v5, v2, :cond_6

    .line 140
    aget v0, v1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {p1, v4, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 144
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-static {p0, v5, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method public updateSystemBars(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 636
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_1

    .line 634
    :cond_2
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p3

    or-int/2addr p2, p3

    .line 637
    :goto_1
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 641
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    or-int/2addr p2, v0

    .line 641
    invoke-virtual {p3, p2}, Lcom/android/server/wm/InsetsStateController;->setForcedConsumingTypes(I)V

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
