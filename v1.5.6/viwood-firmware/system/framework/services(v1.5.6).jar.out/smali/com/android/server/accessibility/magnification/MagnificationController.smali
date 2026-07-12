.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static final KEYBOARD_REPEAT_INTERVAL_MS:I = 0x3c


# instance fields
.field public final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

.field public mActivePanDirections:[Z

.field public mActivePanDisplay:I

.field public mActiveZoomDirection:I

.field public mActiveZoomDisplay:I

.field public final mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field public mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialKeyboardRepeatIntervalMs:I

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field public mLastPannedTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationCapabilities:I

.field public mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

.field public final mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

.field public mRepeatKeysEnabled:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

.field public final mSupportWindowMagnification:Z

.field public mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

.field public final mTempPoint:Landroid/graphics/PointF;

.field public final mTransitionModes:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$-JjdcX8hsnJgy97WdKBAPK8G4lU(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinueZoom()V

    return-void
.end method

.method public static synthetic $r8$lambda$R3k8N3qbC-xGQ3K5bFGkfo5pSVk(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->maybeContinuePan()V

    return-void
.end method

.method public static synthetic $r8$lambda$RK4GNS1IfZDRx9pPFHvEPIoaYjc(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hDLBh-fi6zCVpWqZQdsbmMSqy4A(Lcom/android/server/accessibility/magnification/MagnificationController;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->lambda$transitionMagnificationConfigMode$0(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAms(Lcom/android/server/accessibility/magnification/MagnificationController;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetDisableMagnificationCallbackLocked(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTransitionState(Lcom/android/server/accessibility/magnification/MagnificationController;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationUIControls(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 358
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    .line 359
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 360
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-object/from16 p1, p9

    .line 361
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 5

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 110
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 121
    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v2, -0x1

    .line 122
    iput v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const-wide/16 v3, 0x0

    .line 126
    iput-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    .line 127
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    .line 129
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 130
    iput v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/16 v0, 0x190

    .line 132
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    .line 137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 139
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 142
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 143
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 147
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 333
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 334
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 335
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 336
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 337
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 338
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 339
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController-IA;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    .line 340
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 341
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->setUiChangesForAccessibilityCallbacks(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    .line 342
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p4, "android.software.window_magnification"

    invoke-virtual {p2, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 344
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    .line 345
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    .line 347
    new-instance p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 348
    invoke-virtual {p2, p5, p0}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final assignMagnificationWindowManagerDelegateByMode(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 735
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 736
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    .line 735
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 738
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 739
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    .line 738
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 741
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final disableFullScreenMagnificationIfNeeded(I)V
    .locals 2

    .line 868
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 871
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 872
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    .line 874
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    :cond_1
    return-void
.end method

.method public final disableWindowMagnificationIfNeeded(I)V
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 912
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 913
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    :cond_0
    return-void
.end method

.method public final getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 1136
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz p2, :cond_1

    .line 1137
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 1141
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    move-result p1

    .line 1140
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    .line 1143
    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p2, :cond_4

    .line 1144
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 1147
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1148
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p1

    .line 1147
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1150
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .locals 0

    .line 1049
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object p0
.end method

.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 10

    .line 1081
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v0, :cond_0

    .line 1083
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1085
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)V

    iput-object v2, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v6, p0

    .line 1093
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    iget-object p0, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object p0

    .line 1093
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInitialKeyboardRepeatIntervalMs()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return p0
.end method

.method public getLastMagnificationActivatedMode(I)I
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .locals 8

    .line 1118
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez v0, :cond_0

    .line 1120
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1121
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v2, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v5, p0

    .line 1124
    :goto_0
    iget-object p0, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    monitor-exit v1

    return-object p0

    .line 1125
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTargetModeScaleFromCurrentMagnification(II)F
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result p0

    return p0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p0

    return p0
.end method

.method public final handleUserInteractionChanged(II)V
    .locals 2

    .line 497
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public hasDisableMagnificationCallback(I)Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 720
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 722
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isActivated(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez p0, :cond_0

    .line 1166
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p0

    .line 1169
    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1171
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1172
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez p0, :cond_2

    .line 1173
    monitor-exit p2

    return v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 1175
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    .line 1176
    monitor-exit p2

    return p0

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    return v1
.end method

.method public isAlwaysOnMagnificationFeatureFlagEnabled()Z
    .locals 0

    .line 1044
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->isFeatureFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isMagnificationConnectionManagerInitialized()Z
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isMagnificationSystemUIConnectionReady()Z
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationConnectionManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getFullScreenMagnificationController$1()Ljava/lang/Boolean;
    .locals 0

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isMagnificationSystemUIConnectionReady()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$transitionMagnificationConfigMode$0(IIZ)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0

    .line 958
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    return-void
.end method

.method public final logMagnificationModeWithImeOnIfNeeded(I)V
    .locals 4

    .line 1064
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1067
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1069
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 1071
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public logMagnificationUsageState(IJF)V
    .locals 0

    .line 947
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJF)V

    return-void
.end method

.method public final maybeContinuePan()V
    .locals 4

    .line 458
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 462
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 466
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 465
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final maybeContinueZoom()V
    .locals 3

    .line 472
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 473
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 474
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 476
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3c

    .line 475
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .locals 1

    const/4 v0, 0x2

    .line 383
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1002
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onDisplayRemoved(I)V

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1006
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1009
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onDisplayRemoved(I)V

    return-void

    .line 1009
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onFullScreenMagnificationActivationState(IZ)V
    .locals 5

    .line 880
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    .line 881
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onFullscreenMagnificationActivationChanged(IZ)Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 884
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 886
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 888
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableWindowMagnificationIfNeeded(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 890
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 896
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 897
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 899
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 900
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 901
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getLastActivatedScale(I)F

    move-result v3

    .line 902
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 903
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 906
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_1
    move-exception p0

    .line 902
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3

    const/4 v0, 0x1

    .line 822
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 825
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    .line 824
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 827
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_0
    return-void
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onImeWindowVisibilityChanged(IZ)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 921
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onKeyboardInteractionStop()V
    .locals 1

    const/4 v0, -0x1

    .line 452
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 453
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v0, 0x4

    .line 454
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public onPanMagnificationStart(II)V
    .locals 3

    .line 400
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    .line 402
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    aput-boolean v2, v1, p2

    .line 404
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->panMagnificationByStep(I[Z)V

    if-nez v0, :cond_1

    .line 405
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda3;-><init>()V

    .line 407
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v0, p0

    .line 406
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public onPanMagnificationStop(I)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 416
    aget-boolean p1, v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 421
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    :cond_0
    return-void
.end method

.method public onPerformScaleAction(IFZ)V
    .locals 9

    .line 366
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZZI)Z

    if-eqz p3, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->persistScale(I)V

    return-void

    :cond_0
    move v2, p1

    move v3, p2

    .line 373
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    if-eqz p3, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->persistScale(I)V

    :cond_1
    return-void
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 8

    .line 750
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 752
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 754
    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 752
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onRequestMagnificationSpec(II)V
    .locals 1

    .line 761
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x1

    .line 762
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 763
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 764
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 764
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onScaleMagnificationStart(II)V
    .locals 2

    .line 428
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    .line 434
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->scaleMagnificationByStep(II)V

    .line 436
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>()V

    .line 438
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    int-to-long v0, p0

    .line 437
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onScaleMagnificationStop(I)V
    .locals 1

    .line 445
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 446
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    :cond_0
    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x2

    .line 803
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 806
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v3

    .line 805
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)Z

    .line 808
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 809
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    .line 810
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 812
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 813
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    .line 814
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v0

    .line 815
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_0
    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .locals 0

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onTouchInteractionStart(II)V
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 1017
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserRemoved(I)V

    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .locals 5

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 773
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 775
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 777
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 779
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 785
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 786
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 788
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 789
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getLastActivatedScale(I)F

    move-result v3

    .line 790
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 793
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_1
    move-exception p0

    .line 790
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final panMagnificationByStep(I[Z)V
    .locals 11

    .line 1216
    array-length v3, p2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1217
    const-string v0, "MagnificationController"

    const-string v1, "Invalid number of panning directions"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v3

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1228
    aget-boolean v5, p2, v4

    const/4 v6, 0x1

    .line 1229
    aget-boolean v7, p2, v6

    add-int/2addr v5, v7

    const/4 v7, 0x2

    .line 1230
    aget-boolean v8, p2, v7

    add-int/2addr v5, v8

    const/4 v8, 0x3

    .line 1231
    aget-boolean v9, p2, v8

    add-int/2addr v5, v9

    if-nez v5, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v9

    goto :goto_1

    .line 1238
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v9

    .line 1239
    :goto_1
    iget-object v10, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;

    invoke-interface {v10, v9, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;->nextPanStep(FI)F

    move-result v10

    if-ne v5, v7, :cond_4

    const/high16 v5, 0x40000000    # 2.0f

    .line 1247
    invoke-static {v5}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v5

    div-float/2addr v10, v5

    .line 1254
    :cond_4
    aget-boolean v4, p2, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    sub-float v4, v5, v10

    goto :goto_2

    :cond_5
    move v4, v5

    .line 1257
    :goto_2
    aget-boolean v6, p2, v6

    if-eqz v6, :cond_6

    add-float/2addr v4, v10

    .line 1260
    :cond_6
    aget-boolean v6, p2, v7

    if-eqz v6, :cond_7

    sub-float/2addr v5, v10

    .line 1263
    :cond_7
    aget-boolean v1, p2, v8

    if-eqz v1, :cond_8

    add-float/2addr v5, v10

    :cond_8
    if-eqz v3, :cond_9

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v3

    move v6, v1

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    add-float/2addr v4, v6

    add-float/2addr v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v2, p1

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_3

    .line 1273
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 1277
    :goto_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    return-void
.end method

.method public final scaleMagnificationByStep(II)V
    .locals 9

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    .line 1191
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v1, v0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result v4

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_0

    :cond_0
    move v3, p1

    .line 1198
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p1

    .line 1201
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;->nextScaleStep(FI)F

    move-result p1

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    :cond_1
    return-void
.end method

.method public setAlwaysOnMagnificationEnabled(Z)V
    .locals 0

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setAlwaysOnMagnificationEnabled(Z)V

    return-void
.end method

.method public final setCurrentMagnificationModeAndSwitchDelegate(II)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->assignMagnificationWindowManagerDelegateByMode(II)V

    return-void
.end method

.method public final setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0

    .line 1054
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMagnificationCapabilities(I)V
    .locals 0

    .line 1021
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setMagnificationFollowTypingEnabled(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    return-void
.end method

.method public setRepeatKeysEnabled(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    return-void
.end method

.method public setRepeatKeysTimeoutMs(I)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return-void
.end method

.method public final setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 693
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldNotifyMagnificationChange(II)Z
    .locals 5

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 846
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v1, v2

    .line 847
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v4, :cond_1

    .line 848
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 849
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-ne p2, v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    if-eqz v4, :cond_4

    :cond_3
    if-nez p0, :cond_4

    .line 853
    monitor-exit v0

    return v3

    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez p0, :cond_5

    .line 857
    monitor-exit v0

    return v3

    :cond_5
    if-eqz p0, :cond_6

    .line 859
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_6

    .line 860
    monitor-exit v0

    return v3

    .line 862
    :cond_6
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public supportWindowMagnification()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    return p0
.end method

.method public transitionMagnificationConfigMode(ILandroid/accessibilityservice/MagnificationConfig;ZI)V
    .locals 12

    .line 612
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    .line 614
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v0

    .line 615
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v3

    .line 616
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v3, :cond_2

    .line 618
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 619
    iget v5, v3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    .line 620
    :cond_0
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v5

    .line 621
    :goto_0
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 622
    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 623
    :cond_1
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v3

    .line 624
    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 628
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 630
    const-string v5, "MagnificationController"

    const-string v6, "Discard previous animation request"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    .line 636
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v5

    .line 637
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 638
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result p2

    :goto_2
    move v7, p2

    goto :goto_3

    .line 639
    :cond_4
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    const/4 p2, 0x0

    .line 641
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-eqz p3, :cond_5

    .line 643
    new-instance v6, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    move-object v9, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v9, p2

    :goto_4
    const/4 v6, 0x2

    const/4 v8, 0x0

    if-ne v2, v6, :cond_7

    .line 647
    invoke-virtual {v3, p1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    if-eqz v0, :cond_6

    .line 649
    iget v8, v4, Landroid/graphics/PointF;->x:F

    move-object v10, v9

    iget v9, v4, Landroid/graphics/PointF;->y:F

    move v6, p1

    move/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_5

    .line 653
    :cond_6
    invoke-virtual {v5, p1, v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    goto :goto_5

    :cond_7
    move-object v10, v9

    const/4 v9, 0x1

    if-ne v2, v9, :cond_a

    .line 656
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    if-eqz v0, :cond_9

    .line 659
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 660
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 662
    :cond_8
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    move v4, p1

    move v5, v7

    move-object v9, v10

    move/from16 v10, p4

    move v7, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_5

    .line 666
    :cond_9
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 667
    invoke-virtual {v3, p1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    :goto_5
    if-nez p3, :cond_b

    .line 673
    :try_start_2
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 676
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 678
    monitor-exit v1

    return-void

    :goto_6
    if-nez p3, :cond_c

    .line 673
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 676
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 677
    throw v0

    .line 678
    :goto_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .locals 10

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 545
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v8

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v0

    if-nez v8, :cond_1

    if-nez v0, :cond_1

    .line 554
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 558
    :cond_1
    const-string v2, "MagnificationController"

    if-eqz v0, :cond_3

    .line 559
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->-$$Nest$fgetmCurrentMode(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result p0

    if-ne p0, p2, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    return-void

    .line 563
    :cond_2
    const-string p0, "discard duplicate request"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v8, :cond_4

    .line 569
    const-string p0, "Invalid center, ignore it"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-interface {p3, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(IZ)V

    return-void

    .line 574
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v1

    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getTargetModeScaleFromCurrentMagnification(II)F

    move-result v7

    .line 581
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    const/4 v9, 0x1

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;Z)V

    .line 585
    invoke-virtual {v3, v5, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    const/4 p0, 0x2

    if-ne v6, p0, :cond_5

    .line 588
    invoke-virtual {v0, v5, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void

    :cond_5
    const/4 p0, 0x0

    .line 590
    invoke-virtual {v1, v5, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void
.end method

.method public final updateMagnificationUIControls(II)V
    .locals 6

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    .line 508
    :try_start_0
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-ne v5, v4, :cond_0

    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 510
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_1
    move v2, v3

    .line 513
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->showMagnificationButton(II)Z

    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)Z

    :goto_1
    if-nez v2, :cond_4

    .line 524
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationSettingsPanel(I)Z

    :cond_4
    return-void

    .line 513
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateUserIdIfNeeded(I)V
    .locals 4

    .line 968
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 974
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 976
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 977
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 978
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 979
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 980
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->onUserChanged(I)V

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 985
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    :cond_1
    if-eqz v2, :cond_2

    .line 988
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 981
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
