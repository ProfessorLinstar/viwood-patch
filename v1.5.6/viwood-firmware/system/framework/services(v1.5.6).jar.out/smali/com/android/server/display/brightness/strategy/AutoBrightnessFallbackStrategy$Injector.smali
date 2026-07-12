.class interface abstract Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;
.super Ljava/lang/Object;
.source "AutoBrightnessFallbackStrategy.java"


# virtual methods
.method public abstract getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;
.end method

.method public abstract getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;
.end method
