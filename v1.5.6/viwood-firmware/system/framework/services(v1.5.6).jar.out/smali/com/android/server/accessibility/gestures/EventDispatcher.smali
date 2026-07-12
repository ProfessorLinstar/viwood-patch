.class public Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mContext:Landroid/content/Context;

.field public mLongPressingPointerDeltaX:I

.field public mLongPressingPointerDeltaY:I

.field public mLongPressingPointerId:I

.field public mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 75
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, -0x1

    .line 427
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    const/4 v0, 0x0

    .line 428
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 429
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    return-void
.end method

.method public clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 433
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 435
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 436
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v4

    if-nez v4, :cond_0

    .line 438
    const-string v0, "EventDispatcher"

    const-string v1, "Unable to compute click location."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 444
    new-array v12, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 445
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/16 v23, 0x0

    aput-object v6, v12, v23

    .line 446
    invoke-virtual {v1, v2, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 447
    new-array v13, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 448
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v13, v23

    .line 449
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iput v6, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 450
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 453
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 454
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 463
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 465
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 466
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 467
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 452
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    if-ne v4, v5, :cond_1

    :goto_0
    move-object/from16 v2, p2

    move/from16 v3, p3

    goto :goto_1

    :cond_1
    move/from16 v5, v23

    goto :goto_0

    .line 469
    :goto_1
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V

    .line 470
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final computeClickLocation(Landroid/graphics/Point;)I
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 476
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 477
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 478
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 479
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 480
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 482
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastTouchedWindowId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 483
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x2

    return p0

    .line 490
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final computeInjectionAction(II)I
    .locals 1

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return p1

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    shl-int/lit8 p0, p2, 0x8

    or-int/2addr p0, v0

    return p0

    .line 261
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0
.end method

.method public final computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 17

    move-object/from16 v0, p0

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 342
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    if-eq v6, v1, :cond_0

    .line 343
    const-string v0, "EventDispatcher"

    const-string v1, "The pointer count doesn\'t match the received count."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 347
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    move-object/from16 v2, p1

    .line 350
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 351
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 352
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v5

    .line 353
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v8, v1

    .line 354
    iput v4, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 355
    iput v5, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 356
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v7, v1

    .line 357
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v3, 0x1

    .line 358
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    .line 362
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 366
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 367
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 371
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 372
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 373
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 374
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 375
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 376
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 377
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 378
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move-wide v1, v0

    .line 361
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 416
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 417
    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 418
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 419
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    move-object/from16 v3, p0

    .line 219
    iget v3, v3, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 220
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 221
    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    .line 222
    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 224
    aget-object v6, v11, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 225
    aget-object v6, v12, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v5, v3, :cond_1

    .line 227
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 228
    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 233
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 234
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 239
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 242
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 243
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 244
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 245
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    .line 246
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 231
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending accessibility event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "EventDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedAccessibilityEvent(I)V

    return-void
.end method

.method public final sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V
    .locals 8

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 504
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .line 505
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 506
    invoke-virtual {v3, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x1

    .line 507
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void
.end method

.method public sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 11

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 295
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int v9, v3, v4

    .line 297
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v7

    .line 301
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v8

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .line 298
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v3, v9

    goto :goto_1

    :cond_0
    move-object v5, p0

    move-object v6, p1

    move v10, p2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v10

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V
    .locals 9

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v7, 0x0

    move v1, v7

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_1

    .line 324
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 326
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int v5, v1, v3

    .line 328
    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v3

    .line 332
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    .line 329
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move-object p0, v1

    move v1, v5

    goto :goto_1

    :cond_0
    move v6, p2

    :goto_1
    add-int/lit8 v8, v8, 0x1

    move p2, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 97
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v3, -0x1

    .line 100
    const-string v4, "EventDispatcher"

    if-ne v2, v3, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p2, :cond_1

    .line 112
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    :goto_1
    move-wide v7, v5

    goto :goto_2

    .line 114
    :cond_1
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedDownEventTime()J

    move-result-wide v5

    goto :goto_1

    .line 118
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-array v13, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 119
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-array v14, v3, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    .line 120
    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 121
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 122
    invoke-virtual {v2, v3, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 123
    aput-object v5, v14, v3

    .line 124
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 125
    invoke-virtual {v2, v3, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 126
    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 128
    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 129
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 130
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    .line 131
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v17

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    .line 132
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 133
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v24

    .line 128
    invoke-static/range {v7 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 140
    iget v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz v3, :cond_3

    .line 141
    iget v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int v3, v3

    iget v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v5, v5

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v2

    .line 144
    :cond_3
    sget-boolean v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Injecting event: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p5, v3

    .line 155
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v5, :cond_5

    move-object/from16 v6, p3

    .line 156
    invoke-interface {v5, v2, v6, v3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_4

    .line 158
    :cond_5
    const-string v3, "Error sending event: no receiver specified."

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_4
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    if-eq v2, v1, :cond_6

    .line 163
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 9

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 394
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 396
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x6

    .line 399
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v5

    .line 401
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 400
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    const/4 p0, 0x1

    shl-int/2addr p0, v0

    not-int p0, p0

    and-int/2addr p0, v7

    move v7, p0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    move-object p1, v4

    move p2, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointersDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string p0, "\n========================="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
