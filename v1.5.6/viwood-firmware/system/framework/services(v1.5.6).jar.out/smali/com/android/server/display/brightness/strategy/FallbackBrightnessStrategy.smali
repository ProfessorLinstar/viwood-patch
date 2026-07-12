.class public Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;
.super Ljava/lang/Object;
.source "FallbackBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 57
    const-string p0, "FallbackBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 4

    .line 38
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 40
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isStylusBeingUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    .line 43
    :cond_0
    new-instance v2, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isUserSetBrightnessChanged()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
