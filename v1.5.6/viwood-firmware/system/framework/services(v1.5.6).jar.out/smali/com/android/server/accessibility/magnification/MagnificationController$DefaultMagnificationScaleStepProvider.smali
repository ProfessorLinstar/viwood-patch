.class public Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextScaleStep(FI)F
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    float-to-double p1, p1

    .line 242
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v0, 0x3ff306fe00000000L    # 1.1892070770263672

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr p1, v2

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    int-to-long v2, p0

    add-long/2addr p1, v2

    long-to-double p0, p1

    .line 243
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    .line 245
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result p0

    return p0
.end method
