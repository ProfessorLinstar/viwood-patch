.class public final Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
.super Ljava/lang/Object;
.source "AutoBrightnessFallbackStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public final mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

.field public mIsDisplayEnabled:Z

.field public mLeadDisplayId:I

.field mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;

    invoke-direct {p1}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 100
    const-string v0, "AutoBrightnessFallbackStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLeadDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 90
    const-string p0, "AutoBrightnessFallbackStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result p0

    .line 176
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .locals 7

    .line 139
    iput-boolean p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    .line 140
    iput p6, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    .line 141
    iget-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz p5, :cond_0

    .line 142
    invoke-virtual {p5}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    const/4 p5, 0x0

    .line 143
    iput-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->loadScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 146
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensorValueToLux()[I

    move-result-object v5

    .line 147
    iget-object v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>()V

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    .line 149
    invoke-interface/range {v0 .. v6}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    :cond_0
    return-void
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 115
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isAutoBrightnessEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsDisplayEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 115
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_2
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v0

    .line 76
    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/16 v2, 0x9

    .line 77
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 78
    new-instance v2, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 79
    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
