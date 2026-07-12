.class public Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "SecondFingerMultiTap.java"


# instance fields
.field public mBaseX:F

.field public mBaseY:F

.field public mCurrentTaps:I

.field public mDoubleTapSlop:I

.field public mDoubleTapTimeout:I

.field public mSecondFingerPointerId:I

.field public mTapTimeout:I

.field public final mTargetTaps:I

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 47
    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTapTimeout:I

    .line 51
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapTimeout:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 58
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 59
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 61
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 2

    .line 136
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Taps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    const-string p0, "Second Finger Triple Tap"

    return-object p0

    .line 138
    :cond_1
    const-string p0, "Second Finger Double Tap"

    return-object p0
.end method

.method public final isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 147
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 151
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 152
    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float v0, v1, p1

    const/4 v3, 0x1

    if-nez v0, :cond_1

    cmpl-float p1, p0, p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    float-to-double v0, v1

    float-to-double p0, p0

    .line 156
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    int-to-double v0, p2

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 74
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 78
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 92
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 96
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 97
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    if-ne v0, v1, :cond_4

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 103
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Taps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 168
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
