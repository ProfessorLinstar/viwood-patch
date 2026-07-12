.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field public final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mLock:Ljava/lang/Object;

.field public final mScrollAnimator:Landroid/animation/TimeAnimator;

.field public final mScroller:Landroid/widget/Scroller;

.field public final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;ILjava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0

    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    new-instance p4, Landroid/view/MagnificationSpec;

    invoke-direct {p4}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1987
    new-instance p4, Landroid/view/MagnificationSpec;

    invoke-direct {p4}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1989
    new-instance p4, Landroid/view/MagnificationSpec;

    invoke-direct {p4}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 p4, 0x0

    .line 2002
    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 2014
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 2015
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 2016
    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 2017
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getAnimationDuration()J

    move-result-wide p2

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->newValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2019
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2020
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000    # 2.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x2

    .line 2021
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2022
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2023
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 2052
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mScroller:Landroid/widget/Scroller;

    .line 2053
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mScrollAnimator:Landroid/animation/TimeAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;ILjava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;ILjava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 2140
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v0}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 2141
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelAnimations()V
    .locals 1

    .line 2235
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->cancelFlingAnimation()V

    return-void
.end method

.method public cancelFlingAnimation()V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 2169
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 2146
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2147
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 2148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2149
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 2150
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v2, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v4, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    iput v3, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 2152
    iget v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    iput v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 2155
    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v3, v4, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 2158
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2160
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendEndCallbackMainThread(Z)V
    .locals 2

    .line 2109
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-interface {v0, p1, v1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(ZLandroid/view/MagnificationSpec;)V

    const/4 p1, 0x0

    .line 2114
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6

    .line 2062
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2063
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eq p1, v1, :cond_1

    .line 2064
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-nez p1, :cond_1

    .line 2066
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->clear()V

    .line 2067
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p1

    const-wide/16 v1, 0x200

    invoke-virtual {p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2069
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p1

    const-string v3, "WindowManagerInternal.setMagnificationSpec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";spec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2074
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 2078
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4

    .line 2120
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 2126
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2128
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";spec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerInternal.setMagnificationSpec"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2133
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    :cond_1
    return-void
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 1

    .line 2084
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->cancelAnimations()V

    .line 2086
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 2088
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2089
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mAnimationCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    if-eqz v0, :cond_0

    .line 2097
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2099
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2102
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->sendEndCallbackMainThread(Z)V

    .line 2104
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
