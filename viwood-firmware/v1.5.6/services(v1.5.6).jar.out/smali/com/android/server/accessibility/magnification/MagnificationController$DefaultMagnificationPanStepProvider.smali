.class public Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mPanStepIntercepts:Landroid/util/SparseDoubleArray;

.field public mPanStepSlopes:Landroid/util/SparseDoubleArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 282
    new-instance p1, Landroid/util/SparseDoubleArray;

    invoke-direct {p1}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    .line 283
    new-instance p1, Landroid/util/SparseDoubleArray;

    invoke-direct {p1}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    return-void
.end method


# virtual methods
.method public nextPanStep(FI)F
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseDoubleArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 305
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    .line 308
    invoke-virtual {p0, p2}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 307
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseDoubleArray;->delete(I)V

    .line 299
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->delete(I)V

    return-void
.end method

.method public final updateForDisplay(I)V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v0, 0x42200000    # 40.0f

    const/4 v2, 0x1

    .line 318
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 320
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x41900000    # 18.0f

    div-float/2addr v1, v2

    .line 324
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    float-to-double v3, v1

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 325
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseDoubleArray;->put(ID)V

    return-void
.end method
