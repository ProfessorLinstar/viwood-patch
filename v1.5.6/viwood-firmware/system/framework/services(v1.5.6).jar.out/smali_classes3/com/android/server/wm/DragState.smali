.class public Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field public mAnimatedScale:F

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mCallingTaskIdToHide:I

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mCurrentDisplayX:F

.field public mCurrentDisplayY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragResult:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mNotifiedWindows:Ljava/util/ArrayList;

.field public mPid:I

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mStartDragAlpha:F

.field public mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mStartDragDisplayX:F

.field public mStartDragDisplayY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mToken:Landroid/os/IBinder;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I

.field public mUnhandledDropEvent:Landroid/view/DragEvent;


# direct methods
.method public static synthetic $r8$lambda$MlPZji_R9BXfQU8PSK0J4X2swSs(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 891
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$P9DIUXjyorEY8LWyHYsvoeb7Zm4(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$RZgNOGYZMNjrQ_9TyJK9tLnFLeg(Lcom/android/server/wm/DragState;FFZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKHOxpMDX4IY28xXIQdDb165VGM(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 860
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 147
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 172
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 173
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 174
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 175
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 176
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 177
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public broadcastDragStartedLocked(FF)V
    .locals 4

    const-wide/16 v0, 0x20

    .line 497
    const-string v2, "DragDropController#DRAG_STARTED"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 498
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    .line 499
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 507
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 509
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 510
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 513
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public cancelDragLocked(Z)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 701
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 707
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public closeLocked()V
    .locals 12

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 232
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_0

    const-string v1, "Unregistering drag input channel"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 237
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 241
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    .line 242
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_2

    const-string v1, "Broadcasting DRAG_ENDED"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    :cond_3
    :goto_0
    if-ge v7, v6, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 247
    iget-boolean v9, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_5

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    iget v10, p0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v9, v10, :cond_5

    .line 249
    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v9

    .line 250
    iget v10, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v10

    .line 251
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v5

    goto :goto_2

    :cond_5
    move v9, v4

    move v10, v9

    goto :goto_1

    .line 257
    :goto_2
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/wm/DragState;->obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;

    move-result-object v9

    .line 259
    :try_start_0
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending DRAG_ENDED to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 262
    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_3
    sget v10, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-eq v10, v8, :cond_3

    .line 267
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iput-boolean v5, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const-wide/16 v0, 0x20

    .line 272
    const-string v6, "DragDropController#DRAG_ENDED"

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 278
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 281
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_a

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_4

    .line 284
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v6, 0x1388

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v1, v6, v7}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 287
    :goto_4
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 289
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_c

    .line 290
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_c
    iput v5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 294
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 295
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 296
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 297
    iput v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 298
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_d

    .line 300
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 301
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 305
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    return-void
.end method

.method public final containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 595
    :cond_0
    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.android.shortcut"

    .line 596
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.android.task"

    .line 597
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 13

    .line 866
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const-string v2, "alpha"

    const/4 v3, 0x3

    const-string v4, "scale"

    const/4 v5, 0x2

    const-string v6, "y"

    const/4 v7, 0x1

    const-string v8, "x"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v0, v1, :cond_0

    .line 867
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v10, v5, [F

    aput v1, v10, v9

    aput v1, v10, v7

    .line 868
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v8, v5, [F

    aput v1, v8, v9

    aput v1, v8, v7

    .line 870
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v6, v5, [F

    aput v1, v6, v9

    aput v1, v6, v7

    .line 872
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 874
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 867
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 876
    :cond_0
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v10, v1, v10

    new-array v12, v5, [F

    aput v10, v12, v9

    aput v1, v12, v7

    .line 877
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v8, v1, v8

    new-array v10, v5, [F

    aput v8, v10, v9

    aput v1, v10, v7

    .line 879
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v6, v5, [F

    aput v1, v6, v9

    aput v11, v6, v7

    .line 881
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v4, v5, [F

    aput v1, v4, v9

    aput v11, v4, v7

    .line 882
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 876
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 885
    :goto_0
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    const-wide/16 v2, 0xc3

    .line 886
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 887
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 889
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 891
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;
    .locals 10

    .line 322
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 324
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_0

    .line 326
    new-instance v2, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v5, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 327
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v7, v1, 0xc3

    iget v8, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 332
    :goto_1
    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v1, v9, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->fixUris(I)V

    .line 337
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 338
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v1, 0x3

    move v7, v6

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public final createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 14

    .line 811
    iget v0, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    const/4 v1, -0x1

    const-wide/16 v2, 0xc3

    const-string v4, "alpha"

    const/4 v5, 0x3

    const-string v6, "scale"

    const/4 v7, 0x2

    const-string v8, "y"

    const/4 v9, 0x1

    const-string v10, "x"

    const/4 v11, 0x0

    const/4 v12, 0x4

    if-eq v0, v1, :cond_0

    .line 812
    new-array v0, v12, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    new-array v12, v7, [F

    aput v1, v12, v11

    aput v1, v12, v9

    .line 813
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v11

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    new-array v10, v7, [F

    aput v1, v10, v11

    aput v1, v10, v9

    .line 815
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v8, v7, [F

    aput v1, v8, v11

    aput v1, v8, v9

    .line 817
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    new-array v6, v7, [F

    aput v1, v6, v11

    const/4 v1, 0x0

    aput v1, v6, v9

    .line 819
    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 812
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_0
    new-array v0, v12, [Landroid/animation/PropertyValuesHolder;

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v12, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v1, v12

    iget v13, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    sub-float/2addr v13, v12

    new-array v12, v7, [F

    aput v1, v12, v11

    aput v13, v12, v9

    .line 834
    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v11

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v10, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v1, v10

    iget v12, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    sub-float/2addr v12, v10

    new-array v10, v7, [F

    aput v1, v10, v11

    aput v12, v10, v9

    .line 836
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    iget v1, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    new-array v8, v7, [F

    aput v1, v8, v11

    aput v1, v8, v9

    .line 838
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    new-array v7, v7, [F

    aput v1, v7, v11

    aput v6, v7, v9

    .line 840
    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 833
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 843
    iget v1, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    sub-float/2addr v1, v4

    .line 844
    iget v4, p0, Lcom/android/server/wm/DragState;->mStartDragDisplayY:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v1

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    .line 846
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 848
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v1

    add-int/2addr v6, v1

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 854
    :goto_0
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState-IA;)V

    .line 855
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 856
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 857
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 858
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 860
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final createUnhandledDropEvent(FF)Landroid/view/DragEvent;
    .locals 9

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public endDragLocked(ZZ)V
    .locals 0

    .line 683
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 684
    iput-boolean p2, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 685
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result p1

    if-nez p1, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public getInputToken()Landroid/os/IBinder;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    if-nez p0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    return-object p0
.end method

.method public isAccessibilityDragDrop()Z
    .locals 0

    .line 935
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClosing()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return p0
.end method

.method public final isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    return v0

    .line 611
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    .line 615
    :cond_3
    iget p2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 618
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    if-nez v1, :cond_7

    return v0

    :cond_7
    if-eqz v2, :cond_8

    if-nez p3, :cond_8

    .line 627
    iget p2, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v1

    if-eq p2, v1, :cond_8

    return v0

    :cond_8
    if-nez p3, :cond_a

    .line 632
    iget-boolean p2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez p2, :cond_a

    iget p0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 634
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v3
.end method

.method public isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 670
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final synthetic lambda$broadcastDragStartedLocked$1(FFZLcom/android/server/wm/WindowState;)V
    .locals 0

    .line 519
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    return-void
.end method

.method public final obtainDragEndedEvent(FFZ)Landroid/view/DragEvent;
    .locals 10

    const/4 v8, 0x0

    .line 776
    iget-boolean v9, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 784
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 13

    .line 802
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 803
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz p7, :cond_0

    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz p6, :cond_1

    .line 805
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_2
    move-object v10, p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_3
    const/4 v7, 0x0

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    .line 802
    invoke-static/range {v0 .. v12}, Landroid/view/DragEvent;->obtain(IFFFFIILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "Registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1

    .line 486
    const-string p0, "Duplicate register of drag input channel"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 487
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 489
    :cond_1
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 490
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->showInputSurface()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final relinquishDragSurfaceToDragSource()Z
    .locals 0

    .line 939
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x20

    .line 357
    :try_start_0
    const-string v2, "DragDropController#DROP"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 358
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLockInner(Landroid/os/IBinder;FF)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    throw p0
.end method

.method public final reportDropWindowLockInner(Landroid/os/IBinder;FF)Z
    .locals 9

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "WindowManager"

    const-wide/16 v4, 0x20

    if-nez v0, :cond_3

    .line 371
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object p2

    .line 373
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-string v0, "unhandled-drop"

    invoke-virtual {p3, p2, v0}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 379
    :cond_1
    const-string p2, "DragDropController#noWindow"

    invoke-static {v4, v5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 382
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 383
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drop outside a valid window "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    .line 388
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending DROP to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, p3

    .line 389
    invoke-virtual {p0, v0, v6}, Lcom/android/server/wm/DragState;->createUnhandledDropEvent(FF)Landroid/view/DragEvent;

    move-result-object v0

    .line 392
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 393
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DragState;->createDropEvent(FFLcom/android/server/wm/WindowState;)Landroid/view/DragEvent;

    move-result-object p2

    .line 395
    :try_start_0
    const-string p3, "DragDropController#dispatchDrop"

    invoke-static {v4, v5, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 399
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v7, 0x1388

    invoke-virtual {p3, v1, v6, v7, v8}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_5

    .line 407
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 411
    iput-object v6, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 412
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 402
    :catch_0
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t send drop notification to win "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_6

    .line 407
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    .line 406
    :goto_0
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_7

    .line 407
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 409
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    throw p0
.end method

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 659
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 665
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v2

    .line 664
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .locals 11

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 534
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 535
    sget-boolean p4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz p4, :cond_0

    .line 536
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending DRAG_STARTED to new window "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    .line 540
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz p4, :cond_3

    .line 541
    invoke-virtual {p4}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object p4

    .line 542
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_1
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 545
    :goto_0
    const-string v2, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    iget v3, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 548
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding EXTRA_HIDE_DRAG_SOURCE_TASK_ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object v7, p4

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_4

    .line 552
    invoke-virtual {v7}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p4

    :goto_3
    move-object v6, p4

    goto :goto_4

    :cond_4
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    goto :goto_3

    .line 555
    :goto_4
    new-instance p4, Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result p2

    .line 556
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p3

    invoke-direct {p4, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 569
    iget v4, p4, Landroid/graphics/PointF;->x:F

    iget v5, p4, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    .line 574
    :try_start_0
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p2, p0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 576
    iget-object p2, v2, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p2, p1, :cond_6

    .line 582
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_5

    .line 578
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to drag-start window "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p2, p1, :cond_6

    .line 582
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_6

    .line 581
    :goto_5
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_5

    .line 582
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V

    .line 584
    :cond_5
    throw p2

    :cond_6
    :goto_6
    return-void
.end method

.method public final showInputSurface()Ljava/util/concurrent/CompletableFuture;
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Drag and Drop Input Consumer"

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "DragState.showInputSurface"

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 193
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    const-string p0, "WindowManager"

    const-string v0, "Drag is in progress but there is no drag window handle."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 200
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 211
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 219
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-object v0
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 651
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public final targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 640
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateDragSurfaceLocked(ZIFF)V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    .line 727
    iput p4, p0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    if-nez p1, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p1, :cond_2

    .line 749
    const-string p1, "WindowManager"

    const-string v0, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p4, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 770
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 771
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, p2

    iget p2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr p3, p2

    float-to-int p2, p3

    int-to-long p2, p2

    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr p4, p0

    float-to-int p0, p4

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p4, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-wide p2, -0x19ed2542bcb5cf97L    # -5.007157476380257E183

    const/16 p4, 0x54

    invoke-static {p0, p2, p3, p4, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
