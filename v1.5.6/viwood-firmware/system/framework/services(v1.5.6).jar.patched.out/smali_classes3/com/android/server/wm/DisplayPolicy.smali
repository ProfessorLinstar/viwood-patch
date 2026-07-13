.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# static fields
.field public static final SHOW_TYPES_FOR_PANIC:I

.field public static final SHOW_TYPES_FOR_SWIPE:I

.field public static final USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field public volatile mAwake:Z

.field public mBottomGestureHost:Lcom/android/server/wm/WindowState;

.field public mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

.field public mCanSystemBarsBeShownByUser:Z

.field public final mCarDockEnablesAccelerometer:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public final mDeskDockEnablesAccelerometer:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mFocusedApp:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public mForciblyShownTypes:I

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHasBottomNavigationBar:Z

.field public volatile mHasNavigationBar:Z

.field public volatile mHasStatusBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Ljava/lang/Runnable;

.field public mImeInsetsConsumed:Z

.field public mImmersiveConfirmationWindowExists:Z

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public final mIsGesturalMode:Z

.field public mIsImmersiveMode:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mLastRequestedVisibleTypes:I

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLeftGestureHost:Lcom/android/server/wm/WindowState;

.field public mLeftGestureInset:I

.field public final mLetterboxDetails:Ljava/util/ArrayList;

.field public volatile mLidState:I

.field public final mLock:Ljava/lang/Object;

.field public mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public volatile mNotificationShade:Lcom/android/server/wm/WindowState;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public final mRecentsComponentName:Landroid/content/ComponentName;

.field public mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public final mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public mRightGestureHost:Lcom/android/server/wm/WindowState;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSystemBarColorApps:Landroid/util/ArraySet;

.field public mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopGestureHost:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public final mUiContext:Landroid/content/Context;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method public static synthetic $r8$lambda$0D3qSFTs4ZGrtzHlfTiLEIQETeU(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$callStatusBarSafely$9(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$77M0WC5DVTFJWkt-VSvKuBKWmLs(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .locals 0

    .line 2617
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8LdvEordfxTTSy9wu2U7CmjSry4(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayAddSystemDecorations$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$AdJ1gMBLzNWLf1c9rz5iLY-Z5Po(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)Ljava/lang/Integer;
    .locals 0

    .line 1348
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1353
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 1354
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1350
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IME insets must be provided by a window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$BKTr9ZjdQgcFR5eJzDS_qFVcM9Q(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GRfdgAecI7OT2glQOBoKxEYtuTw(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasAdjacentTask()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NZzAQnlrSr5c31KvymgfhHHJdsA(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$OYiNZTKrLZN0J-F0iJMDMc00nbQ(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .locals 1

    move v0, p1

    move p1, p0

    move-object p0, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, v0

    .line 2644
    invoke-interface/range {p0 .. p8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WrdAsexcVfs8v_wSDSxSFmYy5EE(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)Ljava/lang/Integer;
    .locals 4

    .line 1275
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 1276
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object p1, v0, p1

    .line 1277
    iget-object v0, p3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1278
    iget-object p3, p3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 1280
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getSource()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 p4, 0x2

    if-eq v1, p4, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getArbitraryRectangle()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1288
    :cond_1
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_4

    move v2, v3

    goto :goto_0

    .line 1285
    :cond_2
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1282
    :cond_3
    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    :goto_0
    const/4 p0, -0x1

    if-ne p2, p0, :cond_5

    .line 1296
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_1

    .line 1297
    :cond_5
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    .line 1299
    :goto_1
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1300
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1302
    :cond_6
    invoke-static {p5, p0}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    if-eqz v2, :cond_7

    if-eqz p0, :cond_7

    .line 1305
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, v0, p5, p0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1308
    :cond_7
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 1311
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    .line 1312
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, v0, p0, p2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1314
    invoke-virtual {p0, p5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1315
    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1318
    :cond_8
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cwQIVBNfOd9lUcZu_4zrQu6oD1s(Lcom/android/server/wm/DisplayPolicy;IZLcom/android/server/wm/WindowState;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarsLw$11(IZLcom/android/server/wm/WindowState;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ha0oEYT1NWF3FgSX1TFp2tFnhcU(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayRemoveSystemDecorations$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$qs4Rqs-Mm2GUBkf9Pjp3ZXa02kk(Lcom/android/server/wm/DisplayPolicy;ZIZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayAddSystemDecorations$4(ZIZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8wJWTcVhOMmJgm9Sq80-TCQWoU(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$onOverlayChanged$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBottomGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsGesturalMode(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsGesturalMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeftGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentsComponentName(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRecentsComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRightGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingPanicGestureUptime(Lcom/android/server/wm/DisplayPolicy;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStatusBarService(Lcom/android/server/wm/DisplayPolicy;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTopActivityNameByActivityManager(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopActivityNameByActivityManager()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendEvent(Lcom/android/server/wm/DisplayPolicy;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->sendEvent(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 192
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 193
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 198
    const-string v0, "persist.wm.debug.cached_insets_switch"

    const/4 v1, 0x1

    .line 199
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 353
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 9

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    const/4 v1, 0x0

    .line 276
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 278
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    .line 281
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 284
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 287
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 334
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 339
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 345
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 355
    new-instance v3, Landroid/view/WindowLayout;

    invoke-direct {v3}, Landroid/view/WindowLayout;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 359
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 2947
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 417
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 418
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 419
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 420
    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_1

    .line 422
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/content/Context;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 423
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 424
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v5, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 427
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 429
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111006f

    .line 430
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v7, 0x1110136

    .line 431
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const v7, 0x1110006

    .line 432
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x111021b

    .line 433
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v2

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    const v7, 0x10e00a6

    .line 435
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    const v7, 0x10402c2

    .line 438
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 437
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRecentsComponentName:Landroid/content/ComponentName;

    const v7, 0x10e00df

    .line 439
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v0

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mIsGesturalMode:Z

    .line 441
    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 443
    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v6, :cond_5

    .line 444
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 445
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 446
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 449
    :cond_5
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 450
    new-instance v7, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v7, p0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 452
    sget-boolean v6, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v6, :cond_6

    .line 453
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v6, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 672
    new-instance v8, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {v8, v4, v7, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 674
    invoke-virtual {p2, v8}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 676
    :cond_6
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v4, p0, v5, v5}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;II)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 727
    iget-object v5, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 730
    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_7

    .line 731
    new-instance v1, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v1, v3}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    :cond_7
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 733
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_9

    .line 734
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 735
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x111023c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 739
    const-string v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 741
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_5

    .line 742
    :cond_8
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 743
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_5

    .line 746
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 747
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 750
    :cond_a
    :goto_5
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy;

    .line 751
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 754
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 755
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {p1, v7, p2, v3, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 765
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v7, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-direct {p1, v7, v3}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 769
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 770
    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 771
    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v7, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1333
    :cond_0
    iget v0, p1, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_1

    .line 1334
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    .line 1335
    :cond_1
    iget v0, p1, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_2

    .line 1336
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 1337
    :cond_2
    iget v0, p1, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_3

    .line 1338
    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    return-void

    .line 1339
    :cond_3
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    if-eqz p1, :cond_4

    .line 1340
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    .line 1342
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public static chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    if-eqz p1, :cond_0

    .line 2918
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2919
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 2922
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    if-eqz p1, :cond_2

    .line 2665
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_1

    .line 2674
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2677
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    return-object p0
.end method

.method public static drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2841
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2843
    :goto_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x8000

    and-int/2addr p0, v3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public static getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;
    .locals 1

    .line 1274
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    return-object v0
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .locals 4

    .line 3231
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3232
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 3233
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p2

    if-nez v3, :cond_0

    goto :goto_1

    .line 3236
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2780
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method

.method public static isNavBarEmpty(I)Z
    .locals 1

    .line 0
    const/high16 v0, 0x1600000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 3215
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3221
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 3222
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 3221
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 2529
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2530
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8

    .line 1735
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 1741
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, p4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 1758
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, p1, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1760
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 1761
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v3, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_3

    .line 1762
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v3, Landroid/graphics/Rect;->right:I

    if-eq p1, p2, :cond_4

    .line 1766
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v3, v4, v5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return v1

    .line 1742
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return v1
.end method

.method public final addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1777
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_0

    .line 1779
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 9

    .line 1227
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1235
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1232
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1238
    :goto_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1239
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 1241
    :cond_3
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v0, :cond_6

    .line 1242
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_6

    .line 1243
    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    .line 1248
    invoke-static {p1, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;

    move-result-object v3

    .line 1250
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1254
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1255
    array-length v6, v4

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_5

    .line 1256
    aget-object v7, v4, v6

    .line 1257
    invoke-virtual {v7}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getWindowType()I

    move-result v7

    invoke-static {p1, v0, v6}, Lcom/android/server/wm/DisplayPolicy;->getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;

    move-result-object v8

    .line 1256
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 1262
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1263
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getId()I

    move-result v6

    .line 1264
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v7

    .line 1263
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    .line 1265
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getFlags()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 1266
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 1267
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    .line 1048
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7df

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1067
    :cond_0
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1004

    if-ltz v2, :cond_1

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 1069
    :cond_1
    iput-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1078
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1080
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v0, :cond_7

    const v0, 0x1030004

    .line 1081
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 1052
    :cond_3
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    const v1, -0x40001

    and-int/2addr v0, v1

    .line 1054
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    .line 1059
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 1086
    :cond_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    .line 1087
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 1089
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1092
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal attributes: Main window of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1093
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that isn\'t translucent trying to fit insets. fitInsetsTypes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p1

    .line 1094
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1100
    :cond_7
    :goto_0
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_8

    or-int/lit8 v1, v1, 0x10

    .line 1101
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1104
    :cond_8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1105
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 1106
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_9

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 1108
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1113
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1113
    const-string v1, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1120
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput p0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1124
    :cond_9
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    if-nez p0, :cond_a

    .line 1125
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p0, p0, -0x21

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_a
    return-void
.end method

.method public final applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 1817
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1818
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p2

    .line 1819
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    .line 1824
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1828
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    return-void

    .line 1830
    :cond_1
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_2
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 9

    .line 1555
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-ne v0, v1, :cond_0

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasBottomNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    .line 1560
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 1561
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": affectsSystemUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1565
    iget-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    const/4 v1, 0x1

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p4, :cond_2

    .line 1566
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1567
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1570
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasInsetsSourceProvider()Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_9

    .line 1571
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object p4

    .line 1572
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1573
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_9

    .line 1574
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1575
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v5

    .line 1576
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    .line 1577
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v8

    or-int/2addr v7, v8

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    goto :goto_1

    .line 1580
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_4

    goto :goto_1

    .line 1584
    :cond_4
    invoke-virtual {v5, v3, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v5

    .line 1585
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_5

    iget v6, v5, Landroid/graphics/Insets;->left:I

    if-lez v6, :cond_5

    .line 1586
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1588
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_6

    iget v6, v5, Landroid/graphics/Insets;->top:I

    if-lez v6, :cond_6

    .line 1589
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1591
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_7

    iget v6, v5, Landroid/graphics/Insets;->right:I

    if-lez v6, :cond_7

    .line 1592
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1594
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_8

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_8

    .line 1595
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1600
    :cond_9
    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p4, p4, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    if-eqz p4, :cond_a

    .line 1601
    iget p4, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    or-int/2addr p4, v3

    iput p4, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1604
    :cond_a
    iget-boolean p4, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    if-eq p4, v3, :cond_b

    .line 1605
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1606
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p4, p4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1607
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 1608
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 1611
    :cond_b
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x2000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 1612
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    :cond_c
    if-nez v0, :cond_d

    goto/16 :goto_4

    .line 1619
    :cond_d
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt p4, v1, :cond_e

    const/16 v0, 0x7d0

    if-ge p4, v0, :cond_e

    move p4, v1

    goto :goto_2

    :cond_e
    move p4, v2

    .line 1621
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_11

    .line 1622
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1623
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1626
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1627
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    move p4, v1

    :cond_10
    if-eqz p4, :cond_11

    if-nez p3, :cond_11

    .line 1632
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_11

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1634
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_11
    if-eqz p4, :cond_12

    if-nez p3, :cond_12

    .line 1639
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v0, v3, :cond_19

    .line 1648
    :cond_13
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_14

    iget-boolean p2, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz p2, :cond_14

    goto :goto_3

    :cond_14
    move v1, v2

    .line 1653
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_15

    if-nez v1, :cond_15

    .line 1654
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1659
    :cond_15
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_16

    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1660
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1661
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 1662
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1664
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 1665
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p4, Lcom/android/internal/view/AppearanceRegion;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x8

    new-instance v1, Landroid/graphics/Rect;

    .line 1667
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p4, v0, v1}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 1665
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1679
    :cond_16
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1680
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_17

    .line 1681
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1682
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1684
    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_18

    .line 1685
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1691
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 1693
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1694
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxDetails()Lcom/android/internal/statusbar/LetterboxDetails;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 1696
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1699
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1700
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1a

    .line 1703
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p2

    .line 1704
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p3

    if-ge p3, p2, :cond_1a

    .line 1705
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p2, p2, 0x8

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1708
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 1706
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/wm/DisplayPolicy;->addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1709
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1712
    :cond_1a
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1e

    .line 1713
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1714
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_1b
    if-eqz p4, :cond_1e

    if-nez p3, :cond_1e

    .line 1716
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1e

    .line 1718
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 1719
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p3

    .line 1718
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 1720
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1d

    .line 1721
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1724
    :cond_1d
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1e

    .line 1725
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_1e
    :goto_4
    return-void
.end method

.method public areSystemBarsForcedConsumedLw()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public areTypesForciblyShownTransiently(I)Z
    .locals 0

    .line 1807
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 1

    const/4 v0, 0x0

    .line 1525
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1526
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1527
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1528
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1529
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1530
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1531
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1533
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1534
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1537
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 1539
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1540
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1541
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1542
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 1543
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    return-void
.end method

.method public final callStatusBarSafely(Ljava/util/function/Consumer;)V
    .locals 2

    .line 2650
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final clearNavBarOpaqueFlag(I)I
    .locals 0

    .line 0
    and-int/lit8 p0, p1, -0x3

    return p0
.end method

.method public final configureNavBarOpacity(IZZ)I
    .locals 5

    .line 2876
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2880
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 2885
    :goto_1
    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_6

    .line 2887
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3

    :cond_2
    if-nez v3, :cond_5

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_6

    .line 2895
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3

    .line 2891
    :cond_4
    :goto_2
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz p2, :cond_6

    .line 2892
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_3

    :cond_5
    if-ne v3, v1, :cond_6

    if-eqz p3, :cond_6

    .line 2899
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    .line 2903
    :cond_6
    :goto_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result p0

    if-nez p0, :cond_7

    or-int/lit8 p0, p1, 0x40

    return p0

    :cond_7
    return p1
.end method

.method public final configureStatusBarOpacity(I)I
    .locals 5

    .line 2853
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2854
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2855
    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 2856
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    and-int/lit8 p1, p1, -0x2

    :cond_1
    if-nez v2, :cond_2

    or-int/lit8 p0, p1, 0x20

    return p0

    :cond_2
    return p1
.end method

.method public final disablePointerLocation()V
    .locals 2

    .line 3177
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3182
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3185
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3186
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3187
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 3020
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3023
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3024
    const-string v1, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3025
    const-string v1, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3026
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3027
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDockMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v1}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3028
    const-string v1, " mLidState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAwake="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3030
    const-string v1, " mScreenOnEarly="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3031
    const-string v1, " mScreenOnFully="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3032
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyguardDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3033
    const-string v1, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3034
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHdmiPlugged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3035
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v1, :cond_0

    .line 3036
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastDisableFlags=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3037
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    :cond_0
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v1, :cond_1

    .line 3040
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastAppearance="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3041
    const-class v1, Landroid/view/InsetsFlags;

    const-string v2, "appearance"

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v1, :cond_2

    .line 3044
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastBehavior="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3045
    const-class v1, Landroid/view/InsetsFlags;

    const-string v2, "behavior"

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    :cond_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mShowingDream="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3048
    const-string v1, " mDreamingLockscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3049
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3

    .line 3050
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStatusBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3052
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    .line 3053
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExpandedPanel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3055
    :cond_4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "isKeyguardShowing="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3056
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5

    .line 3057
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3058
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarOpacityMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3059
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarCanMove="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3060
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHasBottomNavigationBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3061
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3063
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_6

    .line 3064
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLeftGestureHost="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3066
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_7

    .line 3067
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopGestureHost="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3069
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    .line 3070
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRightGestureHost="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3072
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_9

    .line 3073
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBottomGestureHost="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3075
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_a

    .line 3076
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFocusedWindow="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3078
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_b

    .line 3079
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3082
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3083
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSystemBarColorApps="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3084
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3086
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3087
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRelaunchingSystemBarColorApps="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3088
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3090
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_e

    .line 3091
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarColorWindowCandidate="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3092
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3094
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_f

    .line 3095
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarBackgroundWindowCandidate="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3098
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    if-eqz v1, :cond_10

    .line 3099
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastStatusBarAppearanceRegions="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_10

    .line 3101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3104
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    if-eqz v1, :cond_11

    .line 3105
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastLetterboxDetails="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_11

    .line 3107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3110
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3111
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStatusBarBackgroundWindows="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_12

    .line 3113
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3114
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3117
    :cond_12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopIsFullscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3118
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mImeInsetsConsumed="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceShowNavigationBarEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3120
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3121
    const-string v1, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3122
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRemoteInsetsControllerControlsSystemBars="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3124
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDecorInsetsInfo:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3126
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v1, :cond_13

    .line 3127
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCachedDecorInsets:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3130
    :cond_13
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez p1, :cond_14

    .line 3131
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final enablePointerLocation()V
    .locals 3

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    return-void

    .line 3153
    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    .line 3154
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3155
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7df

    .line 3156
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    .line 3157
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3160
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3161
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 3162
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3163
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3164
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3165
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    const/4 v1, -0x3

    .line 3168
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3170
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3171
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3172
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3173
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 999
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1000
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1001
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 996
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 1001
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishPostLayoutPolicyLw()V
    .locals 2

    .line 1791
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 1795
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 1797
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v0, v1, :cond_1

    .line 1798
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 1800
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    return-void
.end method

.method public finishScreenTurningOn()Z
    .locals 8

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0x566f8194b44dc932L    # -1.755751079760187E-108

    const/16 v5, 0x3ff

    invoke-static {v7, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1027
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 1032
    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v1, v1, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x53a7e01d7e89c72aL    # -4.517733403274509E-95

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1033
    :cond_2
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    const/4 v1, 0x1

    .line 1034
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1035
    monitor-exit v0

    return v1

    .line 1029
    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    .line 1035
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1012
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1013
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 1009
    monitor-exit v0

    return p0

    .line 1013
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 2437
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2438
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2439
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_0

    .line 2440
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2442
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 10

    .line 2784
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object p0

    .line 2785
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2786
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2787
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 2788
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 2789
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2790
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2791
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2792
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_5

    .line 2793
    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 2794
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    if-eq v8, p2, :cond_0

    goto :goto_2

    .line 2797
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    if-ne p2, v8, :cond_4

    .line 2798
    iget-object v8, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2799
    invoke-virtual {v7, v0, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    .line 2802
    iget v9, v8, Landroid/graphics/Insets;->left:I

    if-lez v9, :cond_1

    .line 2803
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 2804
    :cond_1
    iget v9, v8, Landroid/graphics/Insets;->top:I

    if-lez v9, :cond_2

    .line 2805
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 2806
    :cond_2
    iget v9, v8, Landroid/graphics/Insets;->right:I

    if-lez v9, :cond_3

    .line 2807
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Insets;->right:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 2808
    :cond_3
    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v8, :cond_4

    .line 2809
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Insets;->bottom:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 2812
    :cond_4
    :goto_1
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2813
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2814
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1963
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1958
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 0

    .line 2327
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->get(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayId()I
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getDockMode()I
    .locals 0

    .line 835
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return p0
.end method

.method public getImeSourceFrameProvider()Lcom/android/internal/util/function/TriFunction;
    .locals 0

    .line 1347
    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;-><init>()V

    return-object p0
.end method

.method public getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 0

    .line 2522
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getLidState()I
    .locals 0

    .line 871
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return p0
.end method

.method public getNavigationBar()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1403
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getNotificationShade()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1399
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 0

    .line 3016
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object p0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object p0
.end method

.method public getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 239
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 240
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 242
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    .line 243
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSystemUiContext()Landroid/content/Context;
    .locals 0

    .line 1968
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getTopActivityNameByActivityManager()Ljava/lang/String;
    .locals 1

    .line 3273
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 3274
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3276
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3277
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    .line 3279
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 3281
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3285
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1514
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getWindowCornerRadius()F
    .locals 2

    .line 2050
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2051
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasBottomNavigationBar()Z
    .locals 3

    .line 2427
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2429
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    const/4 v2, 0x1

    .line 2428
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 2430
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-lez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasNavigationBar()Z
    .locals 0

    .line 839
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return p0
.end method

.method public hasSideGestures()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAwake()Z
    .locals 0

    .line 910
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return p0
.end method

.method public isCarDockEnablesAccelerometer()Z
    .locals 0

    .line 815
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return p0
.end method

.method public isDeskDockEnablesAccelerometer()Z
    .locals 0

    .line 819
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return p0
.end method

.method public isForceShowNavigationBarEnabled()Z
    .locals 0

    .line 930
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    return p0
.end method

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2833
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isHdmiPlugged()Z
    .locals 0

    .line 811
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return p0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2932
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 2933
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2936
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 0

    .line 922
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return p0
.end method

.method public final isKeyguardOccluded()Z
    .locals 0

    .line 2518
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 2514
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result p0

    return p0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 0

    .line 827
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return p0
.end method

.method public final isPowerKeyDownPanic(ZJZZ)Z
    .locals 4

    if-nez p1, :cond_0

    .line 2973
    iget-wide v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2975
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-nez p5, :cond_1

    .line 2979
    iput-wide p2, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 2981
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteInsetsControllerControllingSystemBars()Z
    .locals 0

    .line 939
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return p0
.end method

.method public isScreenOnEarly()Z
    .locals 0

    .line 914
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0
.end method

.method public isScreenOnFully()Z
    .locals 0

    .line 918
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return p0
.end method

.method public isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3197
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz p0, :cond_0

    .line 3198
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 0

    .line 926
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return p0
.end method

.method public final synthetic lambda$callStatusBarSafely$9(Ljava/util/function/Consumer;)V
    .locals 0

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2653
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 759
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 762
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 763
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$notifyDisplayAddSystemDecorations$4(ZIZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1989
    invoke-interface {p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1993
    const-class p1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 1994
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p1, :cond_1

    .line 1996
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2000
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    :cond_2
    return-void
.end method

.method public final synthetic lambda$notifyDisplayAddSystemDecorations$5()V
    .locals 1

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2009
    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayAddSystemDecorations(I)V

    .line 2011
    :cond_0
    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2012
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p0, :cond_1

    .line 2014
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$notifyDisplayRemoveSystemDecorations$6()V
    .locals 2

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2026
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    .line 2028
    :cond_0
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2029
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz v1, :cond_1

    .line 2031
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    .line 2033
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    .line 2035
    const-class p0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 2036
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerInternal;

    if-eqz p0, :cond_2

    .line 2038
    invoke-interface {p0, v0}, Lcom/android/server/notification/NotificationManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    :cond_2
    return-void
.end method

.method public final synthetic lambda$onOverlayChanged$3()V
    .locals 1

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1883
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    .line 1884
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateSystemBarsLw$11(IZLcom/android/server/wm/WindowState;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .locals 0

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    .line 2751
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result p3

    .line 2750
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->immersiveModeChanged(IIZI)V

    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 15

    move-object/from16 v0, p1

    .line 1489
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->skipLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p3

    .line 1495
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    .line 1497
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1498
    sget-object v14, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v14, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 1502
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-ne v5, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 1503
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 1504
    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_4
    move v11, v3

    .line 1506
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 1507
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    .line 1508
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v12

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1506
    invoke-virtual/range {v4 .. v14}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 1510
    iget p0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v14, p0, v1}, Lcom/android/server/wm/WindowState;->setFrames(Landroid/window/ClientWindowFrames;II)V

    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 0

    .line 863
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return p0
.end method

.method public notifyDisplayAddSystemDecorations()V
    .locals 7

    .line 1977
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v4

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1980
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v3

    .line 1981
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    move-result v5

    if-eqz v3, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_0

    .line 1984
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->allowContentModeSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1985
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/DisplayPolicy;ZIZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move-object v2, p0

    .line 2005
    iget-object p0, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyDisplayRemoveSystemDecorations()V
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 1893
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e0

    .line 1894
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 1895
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 1896
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    const v1, 0x11101f7

    .line 1898
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    const v1, 0x1110006

    .line 1899
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    const v1, 0x111003a

    .line 1905
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1907
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v1, v0, :cond_0

    .line 1908
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    :cond_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 1

    .line 1472
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    .line 1473
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public final onDisplaySwitchFinished()V
    .locals 1

    .line 875
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplaySwitching(Z)V

    return-void
.end method

.method public onDisplaySwitchStart()V
    .locals 1

    .line 2423
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplaySwitching(Z)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1881
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->requestDisplayUpdate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPowerKeyDown(Z)V
    .locals 6

    .line 2964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 2965
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    .line 2964
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->isPowerKeyDownPanic(ZJZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2967
    iget-object p0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUserActivityEventTouch()V
    .locals 1

    .line 2991
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v0, :cond_0

    return-void

    .line 2995
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 2996
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public physicalDisplayChanged()V
    .locals 1

    .line 2337
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    if-eqz v0, :cond_0

    .line 2338
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCachedDecorInsets()V

    :cond_0
    return-void
.end method

.method public physicalDisplayUpdated()V
    .locals 1

    .line 2409
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-nez v0, :cond_0

    return-void

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2414
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    return-void

    .line 2417
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result p0

    iput p0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    return-void
.end method

.method public release()V
    .locals 3

    .line 3205
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 3206
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3207
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3208
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3209
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 2538
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 2539
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 2540
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_0
    return-void
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 5

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 1366
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    .line 1368
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    .line 1370
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1372
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3

    .line 1373
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1376
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasInsetsSourceProvider()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1377
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v0

    .line 1378
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 1379
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    .line 1380
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1381
    invoke-virtual {v4, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 1385
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InsetsStateController;->removeSourceProvider(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1388
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1389
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1390
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    :cond_5
    return-void
.end method

.method public replaceInsetsSourcesIfNeeded(Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 2

    .line 2388
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2392
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 2393
    new-instance p2, Landroid/view/InsetsState;

    invoke-direct {p2, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p1, p2

    .line 2394
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    .line 2395
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 2396
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2397
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .locals 7

    .line 2447
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_9

    .line 2450
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 2454
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    const-string v1, "WindowManager"

    if-nez v0, :cond_2

    .line 2455
    const-string p0, "Remote insets controller disallows showing system bars - ignoring request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2459
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2461
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_9

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto/16 :goto_2

    .line 2469
    :cond_4
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2471
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 2476
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    .line 2477
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result v4

    and-int/2addr v3, v4

    .line 2479
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 2480
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    if-ne v4, v6, :cond_6

    .line 2481
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_6

    .line 2485
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-interface {v0, p0, v5, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 2490
    :cond_6
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2492
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p1

    sget v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 2494
    invoke-interface {v0, v3, v5, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    .line 2498
    :cond_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr p2, v3

    invoke-interface {v0, p2, v5, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2503
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, p2, :cond_8

    .line 2504
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->transferTouch()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2506
    const-string p1, "Could not transfer touch to the status bar"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->confirmImmersivePrompt()V

    :cond_9
    :goto_2
    return-void
.end method

.method public resetSystemBarAttributes()V
    .locals 1

    const/4 v0, 0x0

    .line 2545
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 2546
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public screenTurnedOff(Z)V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 981
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 983
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 984
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 985
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 986
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 p1, 0x0

    .line 987
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 988
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 989
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public screenTurnedOn()V
    .locals 0

    .line 974
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    return-void
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    const/4 v1, 0x1

    .line 953
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v1, 0x0

    .line 954
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 955
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 956
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 957
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 958
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    .line 961
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 962
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 964
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x20

    .line 967
    const-string v2, "screenTurnedOnWhileDozing"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 968
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1
    return-void

    .line 964
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .locals 5

    .line 1425
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v1, p2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, -0x67141f488b6fcf64L

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x5

    const/4 v1, 0x0

    if-ne p2, p0, :cond_3

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1429
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1434
    :cond_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x57024d80d683c60dL

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    const p0, 0x10a0013

    return p0

    :cond_3
    return v1
.end method

.method public final sendEvent(II)V
    .locals 13

    .line 3252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3253
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v11, 0x48

    const/16 v12, 0x101

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3257
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setAwake(Z)V
    .locals 3

    .line 879
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-ne p1, v1, :cond_0

    .line 881
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 883
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 884
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_1

    .line 885
    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    .line 889
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3

    .line 891
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 893
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    if-nez p1, :cond_4

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 901
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result p1

    if-nez p1, :cond_4

    .line 902
    const-string p1, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Late acquire sleep token for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    .line 906
    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCanSystemBarsBeShownByUser(Z)V
    .locals 0

    .line 1973
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    return-void
.end method

.method public setDockMode(I)V
    .locals 0

    .line 831
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return-void
.end method

.method public setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1134
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-nez p2, :cond_0

    .line 1138
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 1139
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 1

    if-nez p2, :cond_1

    .line 800
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 801
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 802
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 803
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 804
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 805
    const-string v0, "state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setLidState(I)V
    .locals 0

    .line 867
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0

    .line 823
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return-void
.end method

.method public setPointerLocationEnabled(Z)V
    .locals 1

    .line 3140
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3144
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .locals 0

    .line 945
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return-void
.end method

.method public shouldAttachNavBarToAppDuringTransition()Z
    .locals 1

    .line 3247
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1836
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1841
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_2

    .line 1842
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1843
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    return v1

    .line 1849
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_4

    .line 1851
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_4

    :cond_3
    move v1, p2

    :cond_4
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public shouldKeepCurrentDecorInsets()Z
    .locals 1

    .line 2332
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    if-eqz v0, :cond_0

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->canPreserve()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .locals 13

    .line 1454
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1456
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1457
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1459
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    .line 1460
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v10

    iget v11, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v12, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1457
    invoke-virtual/range {v2 .. v12}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 1462
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v1

    .line 1463
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 1464
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 1465
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final supportsPointerLocation()Z
    .locals 1

    .line 3136
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

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

.method public switchUser()V
    .locals 0

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1872
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 783
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_1
    return-void
.end method

.method public topAppHidesSystemBar(I)Z
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1864
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateCachedDecorInsets()V
    .locals 5

    .line 2351
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2352
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    move-object v0, v1

    move-object v3, v0

    goto :goto_0

    .line 2354
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2355
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 2356
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2357
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRegularBarsInsets:Ljava/util/ArrayList;

    iput-object v4, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    .line 2360
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 2362
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 2369
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRegularBarsInsets:Ljava/util/ArrayList;

    .line 2370
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v0, :cond_2

    .line 2374
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    if-eqz v3, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v3, v0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2378
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    :cond_2
    return-void
.end method

.method public updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 3

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1914
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v2, v1, :cond_0

    const v1, 0x11101f8

    .line 1916
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 1917
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final updateCurrentUserResources()V
    .locals 14

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_0

    .line 1931
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    .line 1937
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 1938
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1937
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1939
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 1940
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1941
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    .line 1943
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v6

    .line 1944
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v7

    .line 1945
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1946
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1948
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1939
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method public updateDecorInsetsInfo()Z
    .locals 11

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 2287
    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2288
    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 2289
    iget v2, v2, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 2290
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2291
    invoke-virtual {v5, v0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    move-result-object v0

    .line 2292
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v6

    .line 2293
    iget-object v7, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    .line 2294
    iget-object v9, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 2295
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2298
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2299
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    invoke-static {v0, v6, v7}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->hasInsetsFrameDiff(Landroid/view/InsetsState;Landroid/view/InsetsState;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2301
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    :goto_0
    if-ltz v0, :cond_5

    if-eq v0, v3, :cond_4

    add-int v6, v0, v3

    .line 2303
    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v8, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v6, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v2

    .line 2306
    :goto_3
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v9}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v9

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v10, v0, v7, v6}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2309
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    :cond_6
    return v1

    .line 2313
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->canPreserve()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2314
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2316
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->invalidate()V

    .line 2317
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 2318
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez p0, :cond_9

    return v8

    :cond_9
    xor-int/lit8 p0, v7, 0x1

    return p0
.end method

.method public final updateForceShowNavBarSettings()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 777
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 779
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateHasNavigationBarIfNeeded()V
    .locals 2

    .line 843
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    const-string v0, "WindowManager"

    const-string v1, "mHasNavigationBar shouldn\'t be updated when the flag is off."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_1

    return-void

    .line 851
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return-void
.end method

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .locals 0

    if-eqz p2, :cond_1

    .line 2691
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p1, -0x11

    .line 2699
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p1, p1, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    and-int/lit8 p0, p1, -0x11

    return p0
.end method

.method public updateSystemBarAttributes()V
    .locals 13

    .line 2552
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2553
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 2560
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 2562
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 2565
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2568
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 2570
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_1
    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 2577
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2578
    const-string v1, "====updateSystemUiVisibilityLw start===="

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "winCandidate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusedWindow:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTopFullscreenOpaqueWindowState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNotificationShade:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastFocusedWindow:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    const-string v1, "====updateSystemUiVisibilityLw end===="

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_5
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v4

    .line 2591
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisableFlags()I

    move-result v1

    .line 2592
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    .line 2593
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    .line 2598
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v3, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 2600
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v7, :cond_7

    move v7, v6

    goto :goto_2

    :cond_7
    move v7, v5

    .line 2602
    :goto_2
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p0, v8, v3}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    move-result v3

    or-int/2addr v2, v3

    .line 2604
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2605
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_8
    move-object v3, v0

    .line 2607
    :goto_3
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v3, Landroid/view/InsetsFlags;->behavior:I

    .line 2608
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2609
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2610
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v6

    .line 2611
    :goto_5
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2612
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/internal/view/AppearanceRegion;

    .line 2613
    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2614
    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eq v11, v1, :cond_b

    .line 2615
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 2616
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2617
    new-instance v12, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v12, v4, v1, v11}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 2620
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v0

    .line 2621
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v11, v1, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2622
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2623
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v1, v8, :cond_c

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    if-ne v1, v0, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 2626
    invoke-static {v1, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2628
    invoke-static {v1, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2629
    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_6
    return-void

    .line 2632
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_10

    .line 2634
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v3, :cond_e

    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_f

    :cond_e
    move v5, v6

    :cond_f
    invoke-virtual {v1, v5}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 2637
    :cond_10
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 2638
    iput v8, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 2639
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 2640
    iput-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 2641
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 2642
    iput-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2643
    iput-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2644
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    move v5, v2

    move-object v6, v9

    move v9, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I
    .locals 11

    .line 2705
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2706
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>()V

    .line 2707
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x5

    .line 2711
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2713
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 2715
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    .line 2717
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v5

    .line 2718
    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_FULLY_IMMERSIVE_IN_DESKTOP:Landroid/window/DesktopModeFlags;

    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v0, v4

    .line 2717
    :goto_3
    invoke-virtual {v5, p1, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->updateSystemBars(Lcom/android/server/wm/WindowState;ZZ)V

    .line 2721
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v0

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2723
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2725
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v6

    invoke-interface {v5, v6, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(IZ)V

    :cond_4
    if-eqz v0, :cond_6

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 2731
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    const/4 v0, 0x3

    .line 2734
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->configureStatusBarOpacity(I)I

    move-result v0

    .line 2735
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZ)I

    move-result v0

    .line 2739
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 2740
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eq v1, v4, :cond_8

    .line 2742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update navigation bar window="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", disableFlags="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", appearance="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", this="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 2747
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, -0x1

    goto :goto_5

    .line 2748
    :cond_7
    iget v1, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 2750
    :goto_5
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1, v4, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayPolicy;IZLcom/android/server/wm/WindowState;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 2755
    :cond_8
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result p1

    .line 2756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2757
    iget-wide v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_9

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-gtz v1, :cond_9

    move v2, v3

    .line 2759
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2760
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    if-eqz v2, :cond_a

    if-nez p1, :cond_a

    if-eqz v4, :cond_a

    .line 2763
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2766
    iput-wide v9, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 2767
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 2768
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    sget p1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    :cond_a
    return v0
.end method

.method public validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 5

    .line 1159
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1164
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1171
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/android/server/wm/WindowManagerService;->isCallerVirtualDeviceOwner(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1172
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    const-string v0, "android.permission.CREATE_VIRTUAL_DEVICE"

    goto :goto_0

    .line 1175
    :cond_2
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    .line 1177
    :goto_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, -0x7

    if-eq v2, v3, :cond_7

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7e8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7f9

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 1186
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    .line 1193
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1195
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    .line 1203
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 p0, -0xa

    return p0

    .line 1179
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1181
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    .line 1210
    :cond_8
    :goto_1
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz p1, :cond_9

    .line 1212
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1213
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
