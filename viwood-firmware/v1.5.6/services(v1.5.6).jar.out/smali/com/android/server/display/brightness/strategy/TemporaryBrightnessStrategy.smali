.class public Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
.super Ljava/lang/Object;
.source "TemporaryBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mTemporaryScreenBrightness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 39
    iput v0, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 73
    const-string v0, "TemporaryBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 57
    const-string p0, "TemporaryBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/4 p0, 0x7

    return p0
.end method

.method public getTemporaryScreenBrightness()F
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    return p0
.end method

.method public setTemporaryScreenBrightness(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    return-void
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 49
    iget p1, p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->mTemporaryScreenBrightness:F

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    .line 50
    invoke-static {v0, p1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
