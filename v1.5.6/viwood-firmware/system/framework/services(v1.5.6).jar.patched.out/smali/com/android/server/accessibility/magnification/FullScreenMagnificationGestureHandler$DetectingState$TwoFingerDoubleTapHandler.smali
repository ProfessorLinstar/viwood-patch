.class public abstract Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# instance fields
.field public mCompletedTapCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmCompletedTapCount(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->mCompletedTapCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMove(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->onMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPointerDown(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->onPointerDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPointerUp(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->onPointerUp()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUp(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->onUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldLogTwoFingerDoubleTap(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;->shouldLogTwoFingerDoubleTap()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract onMove(Landroid/view/MotionEvent;)V
.end method

.method public abstract onPointerDown(Landroid/view/MotionEvent;)V
.end method

.method public abstract onPointerUp()V
.end method

.method public abstract onUp(Landroid/view/MotionEvent;)V
.end method

.method public abstract shouldLogTwoFingerDoubleTap()Z
.end method
