.class public Lcom/android/server/input/debug/RotaryInputGraphView;
.super Landroid/view/View;
.source "RotaryInputGraphView.java"


# static fields
.field public static final MAX_GESTURE_TIME:J

.field public static final MAX_SHOWN_TIME_INTERVAL:J


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFrameCenterPosition:F

.field public final mFrameCenterToBorderDistance:F

.field public final mFramePaint:Landroid/graphics/Paint;

.field public final mFrameTextPaint:Landroid/graphics/Paint;

.field public final mGraphLinePaint:Landroid/graphics/Paint;

.field public final mGraphPointPaint:Landroid/graphics/Paint;

.field public final mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

.field public final mScaledVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    const-wide/16 v1, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v4, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    const/16 v5, 0x190

    invoke-direct {v4, v5}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    const/4 v4, 0x0

    .line 68
    iput v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 73
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    .line 76
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    const p0, -0x408be4b9

    .line 79
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x2

    .line 80
    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p0, -0xff01

    .line 82
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xa

    .line 83
    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 86
    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x4

    .line 91
    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 93
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public static applyDimensionSp(ILandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x2

    int-to-float p0, p0

    .line 242
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public addValue(FJ)V
    .locals 4

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getFirst()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v0, p2, v0

    sget-wide v2, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->removeFirst()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 111
    iput v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 117
    :cond_1
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    mul-float/2addr p1, v0

    .line 118
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getLast()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v0

    iget v0, v0, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    :goto_1
    add-float/2addr v0, p1

    .line 121
    iget-object p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->add(FJ)V

    .line 126
    iget p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr p1, p2

    cmpl-float p2, p1, v1

    if-lez p2, :cond_4

    .line 130
    iget p2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float/2addr v0, p2

    cmpg-float p3, v0, v1

    if-gez p3, :cond_3

    const/4 p3, -0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    :goto_2
    int-to-float p3, p3

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    .line 133
    iput p2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 137
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 142
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xa

    .line 146
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v8, v1, v7

    add-int v1, v7, v8

    const/4 v9, 0x2

    .line 149
    div-int/lit8 v10, v1, 0x2

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v3, v7

    int-to-float v4, v11

    .line 158
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v10

    .line 159
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v3

    int-to-float v3, v8

    .line 160
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v9, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 164
    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    add-float/2addr v4, v5

    .line 166
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 165
    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int v4, v7, v2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    .line 164
    invoke-virtual {v1, v3, v9, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 171
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int v4, v10, v2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {v1, v3, v9, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr v4, v6

    .line 177
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 176
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr v8, v2

    int-to-float v2, v8

    iget-object v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {v1, v3, v9, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 191
    :cond_0
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getLast()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v2

    iget-wide v13, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 195
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->reverseIterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v9

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move/from16 v16, v9

    move v15, v10

    .line 198
    iget-wide v9, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v9, v13, v9

    long-to-int v9, v9

    .line 199
    iget v5, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    move v6, v2

    move v10, v3

    .line 206
    sget-wide v2, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    move/from16 v17, v4

    move/from16 v18, v5

    int-to-long v4, v9

    sub-long v4, v2, v4

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    int-to-float v2, v11

    mul-float/2addr v4, v2

    add-float v4, v4, v16

    .line 216
    iget v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v5, v18, v2

    iget v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    div-float/2addr v5, v2

    sub-int v2, v15, v7

    int-to-float v2, v2

    mul-float/2addr v5, v2

    sub-float v5, v12, v5

    .line 220
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    if-eqz v9, :cond_1

    int-to-float v2, v9

    sub-float/2addr v2, v6

    move v3, v2

    .line 224
    sget-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    long-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    .line 225
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    int-to-float v2, v9

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v10, v15

    move/from16 v9, v16

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
