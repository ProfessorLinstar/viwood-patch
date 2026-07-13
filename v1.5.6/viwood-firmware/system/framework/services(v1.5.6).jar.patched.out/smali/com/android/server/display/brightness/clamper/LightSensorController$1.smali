.class public Lcom/android/server/display/brightness/clamper/LightSensorController$1;
.super Ljava/lang/Object;
.source "LightSensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 65
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-static {v1}, Lcom/android/server/display/brightness/clamper/LightSensorController;->-$$Nest$fgetmRegisteredLightSensor(Lcom/android/server/display/brightness/clamper/LightSensorController;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-static {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->-$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getTime()J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-static {v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget p1, p1, v5

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 71
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-static {p1}, Lcom/android/server/display/brightness/clamper/LightSensorController;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result p1

    .line 72
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;->this$0:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->-$$Nest$fgetmLightSensorListener(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;->onAmbientLuxChange(F)V

    return-void
.end method
