.class public Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;
.super Ljava/lang/Object;
.source "OffloadBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mOffloadScreenBrightness:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 40
    iput p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 83
    const-string v0, "OffloadBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOffloadScreenBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 67
    const-string p0, "OffloadBrightnessStrategy"

    return-object p0
.end method

.method public getOffloadScreenBrightness()F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    return p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/16 p0, 0xb

    return p0
.end method

.method public setOffloadScreenBrightness(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    return-void
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getSelectedDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getSelectedDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InvalidBrightnessStrategy"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 97
    iput p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    :cond_0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 46
    iget p1, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 47
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 52
    iput v0, p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->mOffloadScreenBrightness:F

    .line 54
    :cond_0
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/16 v1, 0xb

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 56
    new-instance v1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 57
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
