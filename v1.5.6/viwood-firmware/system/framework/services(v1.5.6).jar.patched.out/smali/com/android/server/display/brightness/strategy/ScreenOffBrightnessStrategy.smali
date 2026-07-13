.class public Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;
.super Ljava/lang/Object;
.source "ScreenOffBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
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

    .line 44
    const-string p0, "ScreenOffBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    const/high16 p1, -0x40800000    # -1.0f

    .line 39
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 38
    invoke-static {v0, p1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
