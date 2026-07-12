.class public Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;
.super Ljava/lang/Object;
.source "LightSensorController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 0

    .line 148
    const-string p0, "LightSensorController"

    invoke-static {p0, p1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLightSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;
    .locals 0

    .line 144
    invoke-static {p1, p2, p3}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public getLightSensorRate(Landroid/content/res/Resources;)I
    .locals 0

    const p0, 0x10e0025

    .line 152
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getTime()J
    .locals 2

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
