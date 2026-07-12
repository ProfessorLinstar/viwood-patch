.class public Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "ColorDisplayService.java"


# instance fields
.field public max:[F

.field public min:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1382
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method public static varargs ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .locals 3

    .line 1388
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-direct {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;-><init>()V

    .line 1389
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1390
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    if-eqz p1, :cond_2

    .line 1391
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1394
    aget-object p1, p1, p0

    check-cast p1, [F

    .line 1395
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 1396
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 1397
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 1398
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v1, p0

    .line 1399
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    const/4 v2, 0x1

    aput v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMax()[F
    .locals 0

    .line 1420
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    return-object p0
.end method

.method public getMin()[F
    .locals 0

    .line 1416
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    return-object p0
.end method

.method public updateMinMaxComponents()V
    .locals 5

    .line 1405
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1409
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1410
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1411
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
