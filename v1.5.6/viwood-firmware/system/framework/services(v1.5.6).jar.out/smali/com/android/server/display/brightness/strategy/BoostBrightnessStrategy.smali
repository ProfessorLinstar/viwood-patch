.class public Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;
.super Ljava/lang/Object;
.source "BoostBrightnessStrategy.java"

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

    .line 51
    const-string p0, "BoostBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    .line 44
    invoke-static {v0, p1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
