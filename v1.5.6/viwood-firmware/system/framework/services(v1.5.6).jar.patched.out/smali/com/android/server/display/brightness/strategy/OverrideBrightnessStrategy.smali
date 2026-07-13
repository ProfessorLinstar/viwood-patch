.class public Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
.super Ljava/lang/Object;
.source "OverrideBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mWindowManagerBrightnessOverride:F

.field public mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 36
    iput v0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 70
    const-string v0, "OverrideBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWindowManagerBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWindowManagerBrightnessOverrideTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final floatEquals(FF)Z
    .locals 0

    cmpl-float p0, p1, p2

    if-eqz p0, :cond_1

    .line 110
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 65
    const-string p0, "OverrideBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/4 p0, 0x6

    return p0
.end method

.method public getWindowManagerBrightnessOverride()F
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    .line 47
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 48
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 50
    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setTag(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_0
    iget p1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget v1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    .line 53
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setTag(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 57
    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z
    .locals 1

    if-nez p1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->brightness:F

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 92
    :cond_1
    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->tag:Ljava/lang/CharSequence;

    :goto_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    .line 94
    iget p1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->floatEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_2
    iput v0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    const/4 p0, 0x1

    return p0
.end method
