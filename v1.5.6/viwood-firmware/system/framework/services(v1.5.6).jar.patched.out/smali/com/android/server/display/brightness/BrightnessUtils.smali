.class public abstract Lcom/android/server/display/brightness/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# direct methods
.method public static clampAbsoluteBrightness(F)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static clampBrightnessAdjustment(F)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public static constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 68
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public static isValidBrightnessValue(F)Z
    .locals 1

    .line 32
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
