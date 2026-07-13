.class public Lcom/android/server/display/brightness/clamper/LightSensorController;
.super Ljava/lang/Object;
.source "LightSensorController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field public final mLightSensorRate:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorListener(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredLightSensor(Lcom/android/server/display/brightness/clamper/LightSensorController;)Landroid/hardware/Sensor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "LightSensorController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)V
    .locals 6

    .line 83
    new-instance v5, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-direct {v5}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 62
    new-instance v0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/LightSensorController$1;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 89
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 90
    invoke-virtual {p5, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensorRate(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    .line 91
    invoke-virtual {p5, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 92
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    .line 93
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-void
.end method


# virtual methods
.method public configure(Lcom/android/server/display/config/SensorData;I)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 135
    const-string v0, "LightSensorController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRegisteredLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public restart()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 110
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 111
    const-string p0, "LightSensorController"

    const-string/jumbo v0, "restart"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 122
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p0, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;->onAmbientLuxChange(F)V

    .line 123
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 124
    const-string p0, "LightSensorController"

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
