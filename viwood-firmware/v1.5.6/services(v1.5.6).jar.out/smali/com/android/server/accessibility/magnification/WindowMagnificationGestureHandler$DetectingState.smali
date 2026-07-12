.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "WindowMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
.implements Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;


# instance fields
.field public final mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;)V
    .locals 9

    .line 469
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTap;

    .line 505
    iget-boolean v2, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v2, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    if-eqz v2, :cond_1

    const/16 v2, 0x69

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_1
    const/16 v2, 0x67

    goto :goto_1

    .line 508
    :goto_2
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Landroid/content/Context;

    move-result-object v2

    .line 509
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    move-object v6, v1

    .line 511
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    .line 512
    iget-boolean v2, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    if-eqz v2, :cond_2

    move v7, v8

    :cond_2
    if-eqz v2, :cond_3

    const/16 v2, 0x6a

    :goto_3
    move v3, v2

    goto :goto_4

    :cond_3
    const/16 v2, 0x68

    goto :goto_3

    .line 515
    :goto_4
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Landroid/content/Context;

    move-result-object v0

    .line 516
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v1

    move v2, v7

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 518
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    new-instance v3, Lcom/android/server/accessibility/magnification/SimpleSwipe;

    invoke-direct {v3, p2}, Lcom/android/server/accessibility/magnification/SimpleSwipe;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;

    invoke-direct {v4, p2}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;-><init>(Landroid/content/Context;)V

    filled-new-array {v3, v6, v0, v4}, [Lcom/android/server/accessibility/gestures/GestureMatcher;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    return-void
.end method


# virtual methods
.method public final changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    .line 590
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public onGestureCancelled(JLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 3

    .line 576
    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureCancelled : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    .line 582
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onGestureCompleted(IJLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 3

    .line 550
    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : gesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMagnificationConnectionManager(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 559
    invoke-virtual {v0, v1, p5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->pointersInWindow(ILandroid/view/MotionEvent;)I

    move-result v0

    if-lez v0, :cond_1

    .line 560
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void

    :cond_1
    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 562
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$monTripleTap(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V

    return-void

    :cond_2
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_3

    .line 564
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTapAndHold(Landroid/view/MotionEvent;)V

    return-void

    .line 566
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object p1

    invoke-virtual {p1, p4, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    .line 568
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public shouldStopDetection(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 540
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMagnificationConnectionManager(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectTwoFingerTripleTap:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{mGestureTimeoutObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
