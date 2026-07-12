.class public Lcom/android/server/input/debug/TouchpadVisualizationView;
.super Landroid/view/View;
.source "TouchpadVisualizationView.java"


# instance fields
.field public final mCenterPointPaint:Landroid/graphics/Paint;

.field public final mHardwareStateHistory:Ljava/util/ArrayDeque;

.field public final mOvalFillPaint:Landroid/graphics/Paint;

.field public final mOvalStrokePaint:Landroid/graphics/Paint;

.field public final mPressureTextPaint:Landroid/graphics/Paint;

.field public mScaleFactor:F

.field public final mTempFingerStatesByTrackingId:Ljava/util/Map;

.field public final mTempOvalRect:Landroid/graphics/RectF;

.field public final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field public final mTracePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V
    .locals 3

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    .line 55
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    .line 60
    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    iput p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0xff

    .line 69
    invoke-virtual {p1, v2, v1, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final drawOval(Landroid/graphics/Canvas;FFFFF)V
    .locals 2

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 96
    invoke-virtual {p1, p6, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    iget-object p6, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    sub-float v1, p2, p5

    iput v1, p6, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p5

    .line 98
    iput p2, p6, Landroid/graphics/RectF;->right:F

    div-float/2addr p4, v0

    sub-float p2, p3, p4

    .line 99
    iput p2, p6, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p4

    .line 100
    iput p3, p6, Landroid/graphics/RectF;->bottom:F

    .line 101
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 102
    iget-object p2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final logFingerTrace()V
    .locals 6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchpadVizMain"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {p0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final logHardwareState(Lcom/android/server/input/TouchpadHardwareState;)V
    .locals 5

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyTouchpadHardwareState: Time: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", No. Buttons: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", No. Fingers: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", No. Touch: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getTouchCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    const-string v0, "TouchpadVizMain"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": touchMajor= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", touchMinor= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", widthMajor= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getWidthMajor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", widthMinor= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getWidthMinor()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", pressure= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", orientation= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", positionX= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", positionY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 108
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/TouchpadHardwareState;

    .line 115
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, v7

    move v6, v8

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 116
    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v9

    array-length v10, v9

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 121
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v13

    .line 123
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v14

    .line 125
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getOrientationMaximum()F

    move-result v2

    const/high16 v4, 0x42b40000    # 90.0f

    .line 126
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result v15

    .line 128
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v1

    cmpl-float v1, v1, v8

    if-nez v1, :cond_2

    const/high16 v1, 0x423c0000    # 47.0f

    goto :goto_2

    .line 129
    :cond_2
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v1

    .line 130
    :goto_2
    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-nez v2, :cond_3

    const/high16 v2, 0x42340000    # 45.0f

    goto :goto_3

    .line 131
    :cond_3
    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v2}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v2

    .line 133
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v3

    iget v4, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v3, v4

    div-float v16, v3, v2

    .line 134
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v2

    iget v3, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v2, v3

    div-float v17, v2, v1

    const/high16 v4, 0x437f0000    # 255.0f

    .line 137
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v6

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result v1

    move/from16 v18, v2

    .line 138
    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v6, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 140
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->drawOval(Landroid/graphics/Canvas;FFFFF)V

    move-object v6, v0

    move-object v0, v1

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 143
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 142
    const-string v12, "Ps: %.2f"

    invoke-static {v1, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v5, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v5, v12

    sub-float v13, v2, v5

    div-float v16, v4, v12

    sub-float v14, v3, v16

    .line 146
    iget-object v2, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    move-object v0, v6

    move/from16 v6, v18

    goto/16 :goto_1

    :cond_4
    move-object v6, v0

    move-object/from16 v0, p1

    .line 150
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/TouchpadHardwareState;

    .line 154
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v9

    array-length v10, v9

    move v11, v7

    :goto_4
    if-ge v11, v10, :cond_5

    aget-object v1, v9, v11

    .line 155
    iget-object v2, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    .line 156
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/TouchpadFingerState;

    if-nez v2, :cond_6

    goto :goto_5

    .line 162
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v3

    .line 163
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v4

    .line 164
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v1

    .line 165
    invoke-virtual {v2}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v2

    .line 167
    iget-object v5, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    return-void
.end method

.method public onTouchpadHardwareStateNotified(Lcom/android/server/input/TouchpadHardwareState;)V
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->logHardwareState(Lcom/android/server/input/TouchpadHardwareState;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->removeOldPoints()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->logFingerTrace()V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final removeOldPoints()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/TouchpadHardwareState;

    .line 85
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v1

    sub-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLightModeTheme()V
    .locals 2

    const/16 v0, 0x14

    .line 212
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 214
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 215
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method public setNightModeTheme()V
    .locals 3

    const/16 v0, 0xf0

    .line 222
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 224
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 225
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method public final translateRange(FFFFF)F
    .locals 0

    .line 0
    sub-float/2addr p5, p1

    sub-float/2addr p2, p1

    div-float/2addr p5, p2

    sub-float/2addr p4, p3

    mul-float/2addr p5, p4

    add-float/2addr p3, p5

    return p3
.end method

.method public final translateX(F)F
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 230
    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    .line 229
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result p0

    return p0
.end method

.method public final translateY(F)F
    .locals 7

    .line 234
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 235
    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result p0

    return p0
.end method

.method public updateScaleFactor(F)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    return-void
.end method
