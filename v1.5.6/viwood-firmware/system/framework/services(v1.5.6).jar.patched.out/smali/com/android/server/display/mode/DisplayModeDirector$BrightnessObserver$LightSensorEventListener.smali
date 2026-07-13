.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field public mLastSensorData:F

.field public mLoggingEnabled:Z

.field public mTimestamp:J

.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInjectSensorEventRunnable(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSensorData(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDifferentZone(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[F)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprocessSensorData(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2788
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->formatTimestamp(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final formatTimestamp(J)Ljava/lang/String;
    .locals 2

    .line 2758
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2760
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isDifferentZone(FF[F)Z
    .locals 4

    .line 2776
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    aget v2, p3, v1

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    cmpl-float v3, p2, v2

    if-gtz v3, :cond_1

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 2708
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 2709
    iget-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-eqz p1, :cond_0

    .line 2710
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "On sensor changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayModeDirector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_0
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result p1

    .line 2715
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    move-result v0

    if-eqz p1, :cond_1

    .line 2717
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2721
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2722
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 2726
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    .line 2728
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2729
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    .line 2732
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2733
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    if-eqz p1, :cond_5

    .line 2735
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 2741
    :cond_6
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2743
    :cond_7
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenRefreshRateTimeoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2744
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mupdateIdleScreenRefreshRate(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    :cond_8
    return-void
.end method

.method public final processSensorData(J)V
    .locals 2

    .line 2764
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2765
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    goto :goto_0

    .line 2767
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-static {p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V

    .line 2770
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2771
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    .line 2772
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCallbacks()V
    .locals 1

    .line 2754
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    .line 2700
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2703
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    return-void
.end method
