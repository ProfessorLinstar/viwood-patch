.class public Lcom/android/server/display/ScreenOffBrightnessSensorController;
.super Ljava/lang/Object;
.source "ScreenOffBrightnessSensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mClock:Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorValue:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mRegistered:Z

.field public mSensorDisableTime:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorValueToLux:[I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    .line 61
    iput-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    iput-object p2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    .line 63
    iput-object p3, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;

    .line 65
    iput-object p5, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    .line 66
    iput-object p6, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 123
    const-string v0, "Screen Off Brightness Sensor Controller:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v0, "----------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 126
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registered="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lastSensorValue="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutomaticScreenBrightness()F
    .locals 6

    .line 107
    iget v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;

    .line 109
    invoke-interface {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    iget v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    aget v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    :cond_0
    return-void
.end method

.method public setLightSensorEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 84
    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-nez v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 89
    iget-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 92
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;

    invoke-interface {p1}, Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    return-void
.end method
