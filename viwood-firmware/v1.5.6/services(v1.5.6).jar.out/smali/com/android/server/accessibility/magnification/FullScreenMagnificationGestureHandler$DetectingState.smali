.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final HISTOGRAM_FIRST_INTERVAL:Lcom/android/modules/expresslog/Histogram;

.field public static final HISTOGRAM_SECOND_INTERVAL:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public mFirstPointerDownLocation:Landroid/graphics/PointF;

.field mHandler:Landroid/os/Handler;

.field public mLastDetectingDownEventTime:J

.field public mLastDown:Landroid/view/MotionEvent;

.field public mLastUp:Landroid/view/MotionEvent;

.field public final mLongTapMinDelay:I

.field public final mMultiTapMaxDelay:I

.field public final mMultiTapMaxDistance:I

.field public mPreLastDown:Landroid/view/MotionEvent;

.field public mPreLastUp:Landroid/view/MotionEvent;

.field public mSecondPointerDownLocation:Landroid/graphics/PointF;

.field mShortcutTriggered:Z

.field public final mSwipeMinDistance:I

.field public final mTwoFingerDoubleTapHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDelayedEventQueue(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misShortcutTriggered(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isShortcutTriggered()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 843
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v5, "accessibility.value_full_triple_tap_first_interval"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->HISTOGRAM_FIRST_INTERVAL:Lcom/android/modules/expresslog/Histogram;

    .line 847
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "accessibility.value_full_triple_tap_second_interval"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->HISTOGRAM_SECOND_INTERVAL:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V
    .locals 1

    .line 876
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 869
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 874
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 877
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 879
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 880
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 881
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    const/4 p1, 0x0

    .line 884
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mTwoFingerDoubleTapHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState$TwoFingerDoubleTapHandler;

    return-void
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1148
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 1150
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1149
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1151
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1148
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, p0

    const/4 p0, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    const/16 v0, 0x1002

    .line 1174
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1178
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 1180
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 1183
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 1186
    :cond_2
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object p1

    .line 1188
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez p2, :cond_3

    .line 1189
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-void

    .line 1192
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1193
    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object p2

    goto :goto_1

    .line 1195
    :cond_4
    invoke-static {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->-$$Nest$fputmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    .line 1162
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1163
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public clearDelayedMotionEvents()V
    .locals 2

    .line 1222
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_0

    .line 1224
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1225
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1227
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 1228
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 1229
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1230
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 889
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    goto :goto_0

    .line 906
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    .line 892
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return v1
.end method

.method public intervalsOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)Ljava/util/List;
    .locals 0

    .line 1132
    invoke-static {p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->intervalsOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isActivated()Z
    .locals 1

    .line 1270
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p0

    return p0
.end method

.method public isFingerDown()Z
    .locals 0

    .line 1111
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1107
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/accessibility/gestures/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0
.end method

.method public isMultiTapTriggered(I)Z
    .locals 5

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result p0

    add-int/2addr p0, v2

    if-lt p0, p1, :cond_0

    return v3

    :cond_0
    return v1

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    if-eqz v0, :cond_2

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1089
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 1090
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-le p1, v2, :cond_3

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 1095
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$fgetmMagnificationLogger(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;->logMagnificationTripleTap(Z)V

    .line 1097
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->intervalsOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)Ljava/util/List;

    move-result-object p0

    .line 1098
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 1099
    sget-object p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->HISTOGRAM_FIRST_INTERVAL:Lcom/android/modules/expresslog/Histogram;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1100
    sget-object p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->HISTOGRAM_SECOND_INTERVAL:Lcom/android/modules/expresslog/Histogram;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {p1, p0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    :cond_3
    return v0
.end method

.method public final isShortcutTriggered()Z
    .locals 0

    .line 1320
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    return p0
.end method

.method public isTapOutOfDistanceSlop()Z
    .locals 6

    .line 1330
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1335
    :cond_1
    invoke-static {v0, v2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1336
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v3

    if-lez v3, :cond_3

    return v0

    :cond_3
    if-eqz v0, :cond_4

    .line 1341
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 1342
    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/gestures/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 914
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v0, :cond_b

    if-eq p2, p3, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 959
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, p3, :cond_2

    .line 960
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->storePointerDownLocation(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 961
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 962
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long p1, p1

    .line 961
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 964
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 986
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 987
    invoke-static {p2, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v4, p2

    cmpl-double p2, v2, v4

    if-lez p2, :cond_a

    .line 993
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, v0, :cond_4

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    return-void

    .line 995
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, p3, :cond_6

    .line 996
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 997
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 999
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 1002
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    return-void

    .line 1004
    :cond_6
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->isOneFingerPanningEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 1007
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    .line 1008
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    move-result p2

    if-ne p2, v1, :cond_7

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 1011
    :cond_7
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 1015
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitToSinglePanningStateAndClear()V

    return-void

    .line 1018
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 1020
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->pointerDownValid(Landroid/graphics/PointF;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 1021
    invoke-static {p2, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distanceClosestPointerToPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)D

    move-result-wide p1

    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v0, p3

    cmpl-double p1, p1, v0

    if-lez p1, :cond_f

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    return-void

    .line 1031
    :cond_b
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p3, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1040
    invoke-virtual {p3, p2, v0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 1044
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    return-void

    .line 1049
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide p1

    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v0, p3

    cmp-long p1, p1, v0

    if-gez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 1052
    invoke-static {p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide p1

    iget p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v0, p3

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_f

    .line 1053
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    :cond_f
    :goto_0
    return-void

    .line 917
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 918
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 922
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p2, p2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 923
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 922
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    move-result p2

    if-nez p2, :cond_11

    .line 925
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 927
    :cond_11
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 930
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    return-void

    .line 932
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isTapOutOfDistanceSlop()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 934
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 936
    :cond_13
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-boolean p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    if-nez p1, :cond_15

    .line 941
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_1

    .line 948
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    return-void

    .line 943
    :cond_15
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    return-void
.end method

.method public onTripleTap(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1250
    invoke-static {}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTripleTap(); delayed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1252
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1263
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$mzoomOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    goto :goto_1

    .line 1260
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$fgetmPromptController(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->showNotificationIfNeeded()V

    .line 1261
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$mzoomOn(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;FF)V

    .line 1266
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    return-void
.end method

.method public pointerDownValid(Landroid/graphics/PointF;)Z
    .locals 0

    .line 1068
    iget p0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

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

.method public removePendingDelayedMessages()V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendDelayedMotionEvents()V
    .locals 8

    .line 1200
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v2, v2

    .line 1207
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1211
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1212
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1214
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1215
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    iget-object v5, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v6, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v7, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$mhandleTouchEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1217
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 1218
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v2, :cond_1

    :goto_0
    return-void
.end method

.method public setShortcutTriggered(Z)V
    .locals 3

    .line 1311
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1314
    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShortcutTriggered("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    return-void
.end method

.method public storePointerDownLocation(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1063
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    .line 1064
    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public tapCount()I
    .locals 1

    .line 1136
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result p0

    return p0
.end method

.method public timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final timeOf(Landroid/view/MotionEvent;)J
    .locals 0

    if-eqz p1, :cond_0

    .line 1128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1302
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toggleShortcutTriggered()V
    .locals 1

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    return-void
.end method

.method public transitToPanningScalingStateAndClear()V
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    return-void
.end method

.method public transitToSinglePanningStateAndClear()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    return-void
.end method

.method public transitionToDelegatingStateAndClear()V
    .locals 2

    .line 1237
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 1240
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mFirstPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1241
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1275
    invoke-static {}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTapAndHold()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-nez v0, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->isActivated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1287
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$fgetmMagnificationLogger(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;->logMagnificationTripleTap(Z)V

    .line 1290
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 1292
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->prepareForZoomInTemporary(Z)V

    .line 1293
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$mzoomInTemporary(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;FFZ)V

    .line 1294
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    return-void
.end method
