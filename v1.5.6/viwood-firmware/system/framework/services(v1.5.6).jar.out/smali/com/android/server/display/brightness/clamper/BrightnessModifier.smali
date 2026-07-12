.class public abstract Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.super Ljava/lang/Object;
.source "BrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;


# instance fields
.field public mApplied:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 4

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 51
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->getModifier()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 53
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    if-nez p1, :cond_1

    .line 54
    invoke-virtual {p2, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 55
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    :cond_1
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    return-void

    .line 58
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p2, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 60
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 61
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    :cond_3
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 67
    const-string v0, "BrightnessModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
.end method

.method public abstract getModifier()I
.end method

.method public abstract shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
.end method

.method public stop()V
    .locals 0

    .line 0
    return-void
.end method
