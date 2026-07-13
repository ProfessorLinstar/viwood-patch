.class public Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
.super Ljava/lang/Object;
.source "MagnificationConnectionManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static final WAIT_CONNECTION_TIMEOUT_MILLIS:I


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

.field public mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

.field public mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastActivatedScale:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowTypingEnabled:Z

.field public mReceiverRegistered:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mWindowMagnifiers:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFF)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->resetWindowMagnifiers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScaleForWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IF)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScaleForWindowMagnificationInternal(IF)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 133
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    sput v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 130
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 147
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 153
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 220
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    .line 221
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 222
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 223
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    const-string p0, "DISCONNECTED"

    return-object p0

    .line 123
    :cond_1
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 122
    :cond_2
    const-string p0, "CONNECTED"

    return-object p0

    .line 121
    :cond_3
    const-string p0, "CONNECTING"

    return-object p0
.end method


# virtual methods
.method public final createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .locals 1

    .line 939
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 940
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public disableAllWindowMagnifiers()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 372
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v3, 0x0

    .line 374
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 377
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disableWindowMagnification(IZ)Z
    .locals 1

    .line 656
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 673
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p3

    if-eqz p2, :cond_1

    .line 678
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 680
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 683
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_2
    return p3

    .line 680
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-nez p0, :cond_0

    .line 1325
    const-string p0, "MagnificationConnectionManager"

    const-string/jumbo p1, "mConnectionWrapper is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1328
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final enableAllTrackingTypingFocus()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 481
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v3, 0x1

    .line 483
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 485
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enableWindowMagnification(IFFFI)Z
    .locals 8

    .line 603
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 584
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p0

    return p0
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 9

    .line 626
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v0, :cond_0

    .line 629
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 631
    :goto_0
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 632
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 635
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    .line 640
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    if-nez v0, :cond_2

    .line 642
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {p0, p1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    :cond_2
    return p2

    .line 637
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 8

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 1306
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1304
    const-string p1, "MagnificationConnectionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public getCenterX(I)F
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 881
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterX()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 882
    monitor-exit v0

    return p0

    .line 885
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCenterY(I)F
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 897
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterY()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 898
    monitor-exit v0

    return p0

    .line 901
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 0

    .line 356
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_0

    .line 447
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 449
    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLastActivatedScale(I)F
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    .line 793
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 795
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v0

    return p0

    .line 796
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 924
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 925
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 929
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPersistedScale(I)F
    .locals 1

    .line 754
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result p0

    const p1, 0x3fa66666    # 1.3f

    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public getScale(I)F
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_1

    .line 783
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getScale()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 784
    monitor-exit v0

    return p0

    .line 787
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnected()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

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

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isImeVisible(I)Z
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPositionInSourceBounds(IFF)Z
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 727
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled(I)Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 908
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 911
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isWindowMagnifierEnabled(I)Z
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 740
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 743
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logTrackingTypingFocus(J)V
    .locals 0

    .line 522
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationFollowTypingFocusSession(J)V

    return-void
.end method

.method public moveWindowMagnification(IFF)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 812
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->move(FF)V

    .line 815
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final moveWindowMagnifierInternal(IFF)Z
    .locals 0

    .line 1334
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 1341
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    const/4 v0, 0x1

    .line 950
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public onFullscreenMagnificationActivationChanged(IZ)Z
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    const-string p1, "MagnificationConnectionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFullscreenMagnificationActivationChanged mConnectionWrapper is null. mConnectionState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 696
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 694
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 697
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 699
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onFullscreenMagnificationActivationChanged(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 701
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onImeWindowVisibilityChanged(IZ)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableAllTrackingTypingFocus()V

    return-void

    .line 511
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->pauseTrackingTypingFocusRecord(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 507
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p4

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 419
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 420
    :try_start_0
    iget-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 421
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isPositionInSourceBounds(IFF)Z

    move-result p5

    if-nez p5, :cond_1

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 423
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 426
    :cond_1
    :goto_0
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserMagnificationScaleChanged(IIF)Z
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 868
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onUserMagnificationScaleChanged(IIF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 869
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pauseTrackingTypingFocusRecord(I)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 493
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 495
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    return-void

    .line 495
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public persistScale(I)V
    .locals 2

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v0

    const v1, 0x3fa66666    # 1.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return-void

    .line 771
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    return-void
.end method

.method public pointersInWindow(ILandroid/view/MotionEvent;)I
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 715
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 718
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processScroll(IFF)Z
    .locals 0

    neg-float p2, p2

    neg-float p3, p3

    .line 527
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    const/4 p2, 0x0

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeMagnificationButton(I)Z
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 842
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMagnificationSettingsPanel(I)Z
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationSettingsPanel(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 855
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestConnection(Z)Z
    .locals 8

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 302
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "MagnificationConnectionManager.requestMagnificationConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 307
    :try_start_0
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v3, v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez p1, :cond_3

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v5, v4, :cond_2

    if-ne v5, v3, :cond_3

    .line 310
    :cond_2
    const-string v0, "MagnificationConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConnection duplicated request: connect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mConnectionState="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 311
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v1

    return v2

    :cond_3
    if-eqz p1, :cond_4

    .line 316
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-nez v6, :cond_5

    .line 318
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    goto :goto_1

    .line 322
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 323
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-eqz v5, :cond_5

    .line 324
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 328
    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnectionInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    .line 330
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return v0

    .line 333
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return v2

    .line 328
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 296
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Visible background user(u"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not permitted to request magnification connection."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestConnectionInternal(Z)Z
    .locals 2

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    :try_start_0
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_0

    .line 344
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestMagnificationConnection(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw p0
.end method

.method public resetAllIfNeeded(I)V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 389
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz v2, :cond_0

    .line 391
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetWindowMagnifiers()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 402
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 404
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 406
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    if-eqz v1, :cond_0

    .line 241
    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 243
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 244
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 249
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 254
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 259
    :try_start_1
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-direct {p1, p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager-IA;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 260
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 261
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 264
    :try_start_3
    const-string v1, "MagnificationConnectionManager"

    const-string/jumbo v3, "setConnection failed"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 269
    throw p1

    .line 271
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final setConnectionState(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    return-void
.end method

.method public setMagnificationFollowTypingEnabled(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    return-void
.end method

.method public setScale(IF)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v1, :cond_0

    .line 543
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setScale(F)V

    .line 546
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setScaleForWindowMagnificationInternal(IF)Z
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 1318
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setScaleForWindowMagnification(IF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTrackingTypingFocusEnabled(IZ)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez p0, :cond_0

    .line 470
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 473
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showMagnificationButton(II)Z
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_0

    .line 828
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 829
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public waitConnectionWithTimeoutIfNeeded()Z
    .locals 5

    .line 1347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1348
    :catch_0
    :goto_0
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1350
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result p0

    return p0
.end method
