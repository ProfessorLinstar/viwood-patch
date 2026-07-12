.class public Lcom/android/server/accessibility/gestures/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureManifold$Listener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mDetermineUserIntentTimeout:I

.field public final mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

.field public mDisplayId:I

.field public final mDoubleTapSlop:I

.field public mDraggingPointerId:I

.field public final mEdgeSwipeHeightPixels:F

.field public final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

.field public mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

.field public final mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

.field public final mHandler:Landroid/os/Handler;

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field public final mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

.field public final mTouchSlop:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDetermineUserIntentTimeout(Lcom/android/server/accessibility/gestures/TouchExplorer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDispatcher(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/GestureManifold;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceivedPointerTracker(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendTouchExplorationEndDelayed(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendTouchInteractionEndDelayed(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchGesture(Lcom/android/server/accessibility/gestures/TouchExplorer;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 91
    const-string v0, "TouchExplorer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 2

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 186
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 188
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 189
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v1, v0, p2}, Lcom/android/server/accessibility/gestures/TouchState;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 190
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 191
    new-instance v0, Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 192
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 193
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    .line 194
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 196
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget v1, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    .line 197
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;Lcom/android/server/accessibility/gestures/TouchExplorer-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 199
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 200
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 201
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 204
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v1, 0x200000

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    if-nez p3, :cond_0

    .line 208
    new-instance p2, Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    goto :goto_0

    .line 210
    :cond_0
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 212
    :goto_0
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 213
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public static checkForMalformedEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1506
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 1509
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1511
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1512
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1513
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1514
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 1515
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid coordinates: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered exception getting details of pointer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void

    .line 1507
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final allPointersDownOnBottomEdge(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1268
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 1269
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 1270
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1271
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1272
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v4

    long-to-float v5, v0

    .line 1273
    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 1274
    sget-boolean p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The pointer is not on the bottom edge"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchExplorer"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final clear()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x2000000

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public final clear(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 239
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 244
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 245
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 246
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 247
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 248
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 250
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 252
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clear()V

    .line 254
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 255
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1231
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1236
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 1237
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iget v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1238
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 1239
    new-array v13, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 1240
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v8, 0x0

    aput-object v5, v13, v8

    .line 1241
    iput v2, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1242
    iput v3, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1243
    new-array v12, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 1244
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v12, v8

    .line 1245
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1246
    iput v4, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 1255
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 1256
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    .line 1257
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    .line 1258
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    .line 1259
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 1260
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 1261
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 1262
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v8, v6

    .line 1248
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1263
    invoke-virtual {v1, v6, v7}, Landroid/view/MotionEvent;->setDownTime(J)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 1184
    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void

    .line 1187
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq v0, v2, :cond_1

    .line 1189
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1190
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1196
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1197
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v3, 0x1

    .line 1198
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1199
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1200
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1201
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v1

    .line 1202
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1203
    :goto_0
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2

    .line 1772
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatching gesture event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    return-void
.end method

.method public final endGestureDetection(Z)V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1098
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    if-eqz p1, :cond_0

    .line 1101
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1104
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    return-void
.end method

.method public final getDistanceToClosestEdge(FF)F
    .locals 4

    .line 1207
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-long v0, v0

    .line 1208
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v2, p0

    long-to-float p0, v0

    sub-float/2addr p0, p1

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    move p1, p2

    :cond_1
    long-to-float p0, v2

    sub-float/2addr p0, p2

    cmpl-float p2, p1, p0

    if-lez p2, :cond_2

    return p0

    :cond_2
    return p1
.end method

.method public final handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 546
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 550
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 552
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 554
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 563
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPointerIdBits(I)V

    .line 566
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPolicyFlags(I)V

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 576
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 577
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 578
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 584
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 585
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 586
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, -0x1

    move-object v4, p2

    move v6, p3

    .line 585
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 587
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    goto :goto_1

    :cond_2
    move-object v4, p2

    .line 588
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 588
    invoke-virtual {p2, p3, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 591
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    goto :goto_1

    :cond_3
    move-object v4, p2

    .line 595
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 597
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 598
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method public final handleActionDownStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 866
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 867
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 868
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    return-void
.end method

.method public final handleActionMoveStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 879
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v1, :cond_7

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 930
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_0

    .line 932
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 934
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 889
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 892
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 896
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_4
    if-gez v2, :cond_5

    :goto_1
    return-void

    .line 906
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 907
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v1

    .line 908
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 909
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 910
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v0

    .line 911
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v1, v1

    float-to-double v3, v0

    .line 912
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 913
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 918
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void

    .line 883
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 884
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v4, 0x7

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void
.end method

.method public final handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 12

    .line 695
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 700
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const-string v4, "TouchExplorer"

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v1, v6, :cond_6

    .line 790
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 795
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->allPointersDownOnBottomEdge(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 796
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 797
    const-string v0, "Three-finger edge swipe detected."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 804
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 808
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    .line 812
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V

    return-void

    .line 820
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 821
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 825
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 829
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 830
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    .line 715
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 716
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    .line 720
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 721
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 722
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 723
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    if-gez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 728
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 730
    iget-object v8, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v8, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid pointer id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_9
    iget-object v8, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 735
    invoke-virtual {v8, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v8

    .line 736
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    .line 737
    iget-object v9, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 738
    invoke-virtual {v9, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    .line 739
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v1, v9

    float-to-double v8, v8

    float-to-double v10, v1

    .line 740
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 741
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    mul-int/2addr v1, v6

    int-to-double v10, v1

    cmpg-double v1, v8, v10

    if-gez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 753
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 754
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 758
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v7, v1, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 761
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 762
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v4, v2, v0

    .line 763
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 766
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v2, 0x0

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v2, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_1

    :cond_d
    move-object v1, p1

    .line 771
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v2, 0x0

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 774
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startDragging()V

    return-void

    :cond_e
    move-object v1, p1

    .line 777
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 778
    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 782
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v7, v0, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 785
    :cond_f
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 786
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    .line 707
    :cond_10
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 711
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_11
    :goto_2
    return-void
.end method

.method public final handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 677
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 679
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 684
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method public final handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 847
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->repost()V

    .line 852
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 857
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p1

    if-nez p1, :cond_2

    .line 858
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_2
    return-void
.end method

.method public final handleMotionEventStateClear(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 13

    .line 1068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v6, -0x1

    move-object v3, p1

    move-object v5, p2

    move/from16 v7, p3

    .line 1088
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    .line 1077
    :cond_0
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v11, -0x1

    move-object v8, p1

    move-object v10, p2

    move/from16 v12, p3

    .line 1077
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1081
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1082
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clear()V

    .line 1083
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    return-void

    .line 1070
    :cond_1
    const-string v0, "TouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v12, p3

    .line 1072
    invoke-virtual {p0, p1, v12}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10

    .line 947
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 948
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 954
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const-string v1, "TouchExplorer"

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 959
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Event: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v0, 0x0

    :goto_0
    move v8, v0

    goto :goto_1

    .line 964
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v2, v0

    goto :goto_0

    .line 966
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 1040
    :cond_2
    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1042
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x1

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    :cond_3
    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 974
    iget p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq p1, v3, :cond_4

    .line 975
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 978
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 979
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    .line 984
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 985
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    :cond_6
    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 988
    iget p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne p1, v3, :cond_7

    goto :goto_2

    .line 991
    :cond_7
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 993
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 994
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 995
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    .line 1000
    :cond_8
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_a

    .line 1025
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1026
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    .line 1029
    :cond_9
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1030
    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1031
    invoke-static {v5}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1033
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1036
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    .line 1005
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1007
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 1008
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    .line 1013
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1014
    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1016
    invoke-static {v5}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1018
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1021
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 1046
    invoke-static {v5}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne p1, p2, :cond_e

    .line 1047
    iput v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1049
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1052
    :cond_e
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1054
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    return-void

    :cond_f
    move-object v5, p1

    move v9, p3

    .line 968
    const-string p1, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0, v5, v9}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 648
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 651
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 654
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 645
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDownStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 625
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 621
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 629
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 614
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 615
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    .line 1163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v1, 0x1

    .line 1165
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1166
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1168
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result p1

    .line 1169
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v2

    .line 1170
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v3

    .line 1171
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v4

    const v9, 0x3f067b80

    move v1, p1

    .line 1173
    invoke-static/range {v1 .. v9}, Lcom/android/server/accessibility/gestures/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result p0

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isSendMotionEventsEnabled()Z

    move-result p0

    return p0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 318
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received A11y Event. event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendsPendingA11yEventsIfNeeded()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 327
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    return-void
.end method

.method public onDoubleTap()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v2

    .line 441
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 397
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    const-string v1, "TouchExplorer"

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double tap. event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";rawEvent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";policyFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 403
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 404
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 410
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x11

    invoke-direct {v0, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 419
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 423
    const-string v0, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 425
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_3
    return v2
.end method

.method public onDoubleTapAndHold()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v2

    .line 452
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 377
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Double tap and hold. event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";rawEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";policyFlags="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TouchExplorer"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 382
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 388
    invoke-virtual {p3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object p3

    const/16 v0, 0x12

    invoke-direct {p1, v0, p2, p3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 391
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    :cond_2
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 9

    .line 484
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gesture cancelled. event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";rawEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->endGestureDetection(Z)V

    return v2

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    shl-int v7, v2, v0

    .line 500
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 503
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 504
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v5, 0x7

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return v2

    .line 513
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 515
    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 519
    invoke-virtual {p3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_4
    return v1
.end method

.method public onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 2

    .line 473
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gesture completed. gestureEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->endGestureDetection(Z)V

    .line 477
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return v0
.end method

.method public onGestureStarted()Z
    .locals 2

    .line 457
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "TouchExplorer"

    const-string v1, "Gesture started."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 464
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 467
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    .line 260
    const-string v0, "TouchExplorer"

    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 265
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V

    .line 266
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", policyFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchState;->onReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->shouldPerformGestureDetection(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureManifold;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 286
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateClear(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 294
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 298
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 300
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 302
    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 306
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 307
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 308
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_9
    :goto_0
    return-void

    .line 311
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    :catch_0
    move-exception p0

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring malformed event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public requestDelegating()V
    .locals 8

    .line 1446
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1447
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->forceSendAndRemove()V

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    const-string v1, "TouchExplorer"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Trying to delegate from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1457
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1463
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v3

    .line 1464
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz v3, :cond_5

    if-nez v5, :cond_3

    goto :goto_0

    .line 1469
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v7

    .line 1470
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1472
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v6, v0, v1

    .line 1473
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1475
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1477
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v3, v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void

    .line 1466
    :cond_5
    :goto_0
    const-string p0, "Unable to start delegating: unable to get last received event."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public requestDragging(I)V
    .locals 9

    .line 1397
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1398
    const-string v0, "TouchExplorer"

    if-ltz p1, :cond_8

    const/16 v1, 0x20

    if-gt p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 1399
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1403
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1404
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->forceSendAndRemove()V

    .line 1407
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1408
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1411
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Trying to drag from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1413
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1417
    :cond_3
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1418
    sget-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 1419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag requested on pointer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 1422
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v4

    if-eqz v2, :cond_7

    if-nez v4, :cond_5

    goto :goto_0

    .line 1427
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v6

    const/4 p1, 0x1

    .line 1428
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v5, p1, v0

    .line 1429
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    move v8, v6

    move-object v6, v4

    .line 1430
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1431
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->startDragging()V

    if-eqz v4, :cond_6

    .line 1433
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    move v7, v5

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move-object v4, v6

    move v5, v7

    move v6, v8

    .line 1435
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    :cond_6
    move-object v4, v6

    move v6, v8

    .line 1438
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    .line 1424
    :cond_7
    :goto_0
    const-string p0, "Unable to start dragging: unable to get last event."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1400
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to drag with invalid pointer: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public requestTouchExploration()V
    .locals 4

    .line 1362
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    const-string v1, "TouchExplorer"

    if-eqz v0, :cond_0

    .line 1363
    const-string v0, "Starting touch explorer from service."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1370
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1373
    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 1377
    const-string p0, "Unable to find a valid pointer for touch exploration."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1381
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 1383
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v1

    .line 1384
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPointerIdBits(I)V

    .line 1385
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPolicyFlags(I)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1387
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)V

    .line 1388
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1390
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :cond_3
    return-void
.end method

.method public sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 7

    .line 1116
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1117
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 1118
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1119
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1125
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v3, 0xa

    move v6, p1

    .line 1122
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :cond_1
    return-void
.end method

.method public final sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 7

    .line 1139
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1143
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1144
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1145
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1148
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v4

    const/16 v3, 0x9

    move v6, p1

    .line 1145
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :cond_1
    return-void
.end method

.method public final sendsPendingA11yEventsIfNeeded()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 363
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 370
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setHasResetInputDispatcherState(Z)V
    .locals 0

    .line 1790
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setHasResetInputDispatcherState(Z)V

    return-void
.end method

.method public setMultiFingerGesturesEnabled(Z)V
    .locals 0

    .line 1306
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setMultiFingerGesturesEnabled(Z)V

    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 1290
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .locals 0

    .line 1327
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setSendMotionEventsEnabled(Z)V

    return-void
.end method

.method public setServiceDetectsGestures(Z)V
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setServiceDetectsGestures(Z)V

    return-void
.end method

.method public setServiceHandlesDoubleTap(Z)V
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setServiceHandlesDoubleTap(Z)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setTwoFingerPassthroughEnabled(Z)V
    .locals 0

    .line 1314
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setTwoFingerPassthroughEnabled(Z)V

    return-void
.end method

.method public final shouldPerformGestureDetection(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1340
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDelegating()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1346
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 1347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1349
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 1350
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchExplorer { mTouchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetermineUserIntentTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDraggingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
