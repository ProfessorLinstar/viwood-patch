.class public Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "BrightnessLowPowerModeModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 50
    const-string v0, "BrightnessLowPowerModeModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    .line 38
    iget p0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 39
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr p1, p0

    const/4 p0, 0x0

    .line 40
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getModifier()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    .line 31
    iget-boolean p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    return p0
.end method

.method public shouldListenToLightSensor()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
