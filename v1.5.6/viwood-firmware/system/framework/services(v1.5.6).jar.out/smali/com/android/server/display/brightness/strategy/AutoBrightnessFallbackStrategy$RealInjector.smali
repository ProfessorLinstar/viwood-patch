.class public Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;
.super Ljava/lang/Object;
.source "AutoBrightnessFallbackStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;
    .locals 0

    .line 206
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p0

    const/4 p2, 0x0

    .line 205
    invoke-static {p1, p0, p2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;
    .locals 0

    .line 214
    new-instance p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    return-object p0
.end method
