.class public final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HandwritingModeController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayId:I

.field public mCurrentRequestId:I

.field public mDelegatePackageName:Ljava/lang/String;

.field public mDelegationConnectionlessFlow:Z

.field public mDelegationIdleTimeoutHandler:Landroid/os/Handler;

.field public mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

.field public mDelegatorFromDefaultHomePackage:Z

.field public mDelegatorPackageName:Ljava/lang/String;

.field public final mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

.field public mHandwritingBuffer:Ljava/util/ArrayList;

.field public mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field public mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field public mInkWindowInitRunnable:Ljava/lang/Runnable;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mLooper:Landroid/os/Looper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRecordingGesture:Z

.field public mRecordingGestureAfterStylusUp:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$RpmsqgTEsdViILmxObrUZOUXU6I(Lcom/android/server/inputmethod/HandwritingModeController;Landroid/view/InputEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rI_-JXHQgynFcPJdS6ZZt3puFz4(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->lambda$scheduleHandwritingDelegationTimeout$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 106
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 107
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 108
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 110
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final clearBufferIfRecordingAfterStylusUp()V
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_0
    return-void
.end method

.method public clearPendingHandwritingDelegation()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 275
    :cond_0
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 277
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 279
    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v1, :cond_1

    .line 280
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 281
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public getCurrentRequestId()Ljava/util/OptionalInt;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-nez v0, :cond_0

    .line 154
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get requestId: Handwriting was not initialized."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 157
    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public getDelegatePackageName()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getDelegatorPackageName()Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHandwritingBufferSize()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/16 p0, 0x7d0

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public hasOngoingStylusHandwritingSession()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeHandwritingSpy(I)V
    .locals 9

    .line 123
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 124
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stylus-handwriting-event-receiver-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerInternal;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_2

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-nez v7, :cond_3

    .line 138
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Failed to create input surface"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_3
    new-instance v3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    iget-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 147
    new-instance p1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 148
    invoke-virtual {v8}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 149
    iget p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    return-void
.end method

.method public isDelegationUsingConnectionlessFlow()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    return p0
.end method

.method public isDelegatorFromDefaultHomePackage()Z
    .locals 0

    .line 231
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    return p0
.end method

.method public isStylusGestureOngoing()Z
    .locals 5

    .line 175
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 179
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, v3, v0

    if-gez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 184
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    return p0
.end method

.method public final synthetic lambda$scheduleHandwritingDelegationTimeout$0()V
    .locals 2

    .line 245
    sget-object v0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string v1, "Stylus handwriting delegation idle timed-out."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 247
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 248
    new-instance v1, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 251
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_3

    .line 397
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/MotionEvent;

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    if-eq v0, v2, :cond_1

    .line 405
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received stylus event associated with the incorrect display."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->onStylusEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 398
    :cond_2
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Received non-motion event in stylus monitor."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 393
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input Event should not be processed when IME has the spy channel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onStylusEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    return-void

    .line 422
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz v1, :cond_5

    :cond_3
    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 432
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-ne v0, v3, :cond_9

    .line 434
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    :cond_5
    if-nez v0, :cond_6

    .line 442
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearBufferIfRecordingAfterStylusUp()V

    .line 443
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 446
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    if-nez v0, :cond_7

    :goto_0
    return-void

    .line 450
    :cond_7
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 455
    iput-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 456
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearBufferIfRecordingAfterStylusUp()V

    return-void

    .line 460
    :cond_8
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 436
    :cond_9
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 198
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 203
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 204
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 205
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 211
    :cond_0
    iput-boolean p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p4, :cond_2

    .line 213
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 219
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->scheduleHandwritingDelegationTimeout()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    return-void
.end method

.method public final reset(Z)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 365
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 369
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_1

    .line 372
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    if-nez p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->remove()V

    .line 380
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 384
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-nez p1, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    :cond_3
    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 388
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    return-void
.end method

.method public final scheduleHandwritingDelegationTimeout()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    :goto_0
    new-instance v0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 254
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->setTouchableRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public setInkWindowInitializer(Ljava/lang/Runnable;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->setNotTouchable(Z)V

    return-void
.end method

.method public startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .locals 8

    .line 297
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 298
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 302
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    if-eq p1, v0, :cond_1

    .line 303
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot start handwriting session: Invalid request id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 307
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: No stylus gesture is being recorded."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 314
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 314
    invoke-virtual {v2, p4, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    move-result p4

    if-nez p4, :cond_3

    .line 316
    sget-object p0, Lcom/android/server/inputmethod/HandwritingModeController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 322
    :cond_3
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p4

    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 323
    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    .line 326
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {p4}, Landroid/view/InputEventReceiver;->dispose()V

    .line 327
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 328
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 331
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p4}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->isIntercepting()Z

    move-result p4

    if-nez p4, :cond_4

    .line 335
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->startIntercepting(II)V

    .line 338
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    const-class p3, Landroid/hardware/input/InputManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    .line 339
    invoke-static {p2, p3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 341
    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v7

    .line 338
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/input/InputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 343
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    iget p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3, p0, v1}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController-IA;)V

    return-object p1

    .line 332
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Handwriting surface should not be already intercepting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
