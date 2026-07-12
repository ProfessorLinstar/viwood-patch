.class public final Lcom/android/server/biometrics/log/ALSProbe;
.super Ljava/lang/Object;
.source "ALSProbe.java"

# interfaces
.implements Lcom/android/server/biometrics/log/Probe;


# instance fields
.field public mDestroyRequested:Z

.field public mDestroyed:Z

.field public mDisableRequested:Z

.field public mEnabled:Z

.field public volatile mLastAmbientLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field public mMaxSubscriptionTime:J

.field public mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mTimer:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$F4FD4FcmvmYrxrGTCyOPcWWC3rc(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->onTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNext(Lcom/android/server/biometrics/log/ALSProbe;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 4

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 76
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/high16 v1, -0x40800000    # -1.0f

    .line 56
    iput v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 58
    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/ALSProbe$1;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 97
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 99
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 100
    iput-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    .line 101
    iput-wide p3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 104
    :cond_2
    :goto_0
    const-string p1, "ALSProbe"

    const-string p2, "No sensor - probe disabled"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized awaitNextLux(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    new-instance v0, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;-><init>(Ljava/util/function/Consumer;Landroid/os/Handler;Lcom/android/server/biometrics/log/ALSProbe-IA;)V

    .line 177
    iget p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->add(Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 184
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V

    goto :goto_0

    .line 187
    :cond_2
    const-string p2, "ALSProbe"

    const-string v1, "No light sensor - use current to consume"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 129
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 132
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V

    .line 134
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized disable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 119
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final disableLightSensorLoggingLocked(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->resetTimerLocked(Z)V

    .line 207
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 208
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-nez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 210
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable ALS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {p0}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ALSProbe"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public declared-synchronized enable()V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final enableLightSensorLoggingLocked()V
    .locals 5

    .line 193
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 194
    iput-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 195
    iput v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable ALS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v2}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALSProbe"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/log/ALSProbe;->resetTimerLocked(Z)V

    return-void
.end method

.method public getMostRecentLux()F
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    return p0
.end method

.method public final declared-synchronized onNext(F)V
    .locals 3

    monitor-enter p0

    .line 139
    :try_start_0
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 141
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz v0, :cond_2

    .line 144
    const-string v1, "ALSProbe"

    const-string v2, "Finishing next consumer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 148
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onTimeout()V
    .locals 3

    monitor-enter p0

    .line 225
    :try_start_0
    const-string v0, "ALSProbe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max time exceeded for ALS logger - disabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 226
    invoke-interface {v2}, Landroid/hardware/SensorEventListener;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final resetTimerLocked(Z)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 219
    iget-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    iget-wide v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method
