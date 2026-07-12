.class public Lcom/android/server/accessibility/magnification/PanningScalingHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanningScalingHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBlockScroll:Z

.field public final mDisplayId:I

.field public mEnable:Z

.field public mInitialScaleFactor:F

.field public final mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

.field public final mMaxScale:F

.field public final mMinScale:F

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mScaling:Z

.field public final mScalingThreshold:F

.field public final mScrollGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "PanningScalingHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V
    .locals 7

    .line 70
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 61
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 72
    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .line 73
    iput p3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .line 74
    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    .line 75
    new-instance v1, Landroid/view/ScaleGestureDetector;

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 v3, p2, 0x2

    const/4 v4, 0x0

    .line 77
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    move-object v6, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, v6, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 78
    new-instance p0, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, v2, v6, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p0, v6, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    const/4 p0, 0x0

    .line 79
    invoke-virtual {v1, p0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 80
    iput-object p5, v6, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 81
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1050111

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 85
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v6, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 157
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 109
    sget-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    const-string v1, "PanningScalingHandler"

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v2, "onScale: triggered "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 113
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    return v1

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    sub-float/2addr p1, v0

    .line 118
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    return v3

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v2, v4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->getScale(I)F

    move-result v2

    .line 126
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v2

    .line 128
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    cmpl-float v5, p1, v4

    if-lez v5, :cond_4

    cmpl-float v5, p1, v2

    if-lez v5, :cond_4

    :goto_1
    move p1, v4

    goto :goto_2

    .line 131
    :cond_4
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_5

    cmpg-float v2, p1, v2

    if-gez v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scaled content to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->setScale(IF)V

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 101
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    invoke-interface {p1, p0, p3, p4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->processScroll(IFF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->clear()V

    .line 90
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingHandler{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
