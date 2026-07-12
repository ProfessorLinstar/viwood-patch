.class public final Lcom/android/server/display/DisplayPowerProximityStateController;
.super Ljava/lang/Object;
.source "DisplayPowerProximityStateController.java"


# static fields
.field static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x1

.field static final PROXIMITY_POSITIVE:I = 0x1

.field static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field static final PROXIMITY_UNKNOWN:I = -0x1


# instance fields
.field public final mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

.field public mIgnoreProximityUntilChanged:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNudgeUpdatePowerState:Ljava/lang/Runnable;

.field public mPendingProximity:I

.field public mPendingProximityDebounceTime:J

.field public mPendingWaitForNegativeProximityLocked:Z

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field public mProximityThreshold:F

.field public mScreenOffBecauseOfProximity:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSkipRampBecauseOfProximityChangeToNegative:Z

.field public final mTag:Ljava/lang/String;

.field public mWaitingForNegativeProximity:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerProximityStateController;)Lcom/android/server/display/DisplayPowerProximityStateController$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerProximityStateController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerProximityStateController;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerProximityStateController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerProximityStateController;JZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerProximityStateController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)V
    .locals 8

    .line 170
    new-instance v7, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    invoke-direct {v7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/DisplayPowerProximityStateController;-><init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;Lcom/android/server/display/DisplayPowerProximityStateController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;Lcom/android/server/display/DisplayPowerProximityStateController$Injector;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerProximityStateController$1;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    const-wide/16 v0, -0x1

    .line 134
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 144
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    if-nez p7, :cond_0

    .line 180
    new-instance p7, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    invoke-direct {p7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    .line 182
    :cond_0
    invoke-virtual {p7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;->createClock()Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    move-result-object p7

    iput-object p7, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    .line 183
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 184
    new-instance p1, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 185
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    .line 186
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 187
    iput p5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DisplayPowerProximityStateController["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 189
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method public final debounceProximitySensor()V
    .locals 4

    .line 451
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerProximityStateController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 455
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 456
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 459
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying proximity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 463
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 465
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x3

    .line 466
    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    .line 469
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    const-string v0, "DisplayPowerProximityStateController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v0, "-------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIgnoreProximityUntilChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 351
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampBecauseOfProximityChangeToNegative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 341
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    return-object p0
.end method

.method public getPendingProximity()I
    .locals 0

    .line 541
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    return p0
.end method

.method public getPendingProximityDebounceTime()J
    .locals 2

    .line 552
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    return-wide v0
.end method

.method public getPendingWaitForNegativeProximityLocked()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProximity()I
    .locals 0

    .line 546
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    return p0
.end method

.method public getProximitySensorListener()Landroid/hardware/SensorEventListener;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public getWaitingForNegativeProximity()Z
    .locals 0

    .line 522
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    return p0
.end method

.method public final handleProximitySensorEvent(JZ)V
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 422
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    if-eqz p3, :cond_2

    .line 434
    iput v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 435
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 436
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 439
    iput p3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    const-wide/16 v1, 0xfa

    add-long/2addr p1, v1

    .line 440
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 441
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 446
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    :cond_3
    :goto_1
    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ignoreProximitySensorUntilChangedInternal()V
    .locals 2

    .line 358
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 362
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    const-string v1, "Ignoring proximity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public isProximitySensorAvailable()Z
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOffBecauseOfProximity()Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    return p0
.end method

.method public final loadProximitySensor()V
    .locals 3

    .line 378
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 382
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    const/16 v2, 0x8

    .line 381
    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 326
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    return-void
.end method

.method public final proximityToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_0
    const-string p0, "Positive"

    return-object p0

    .line 505
    :cond_1
    const-string p0, "Negative"

    return-object p0

    .line 503
    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method public final sendOnProximityNegativeWithWakelock()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 374
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnProximityNegativeRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendOnProximityPositiveWithWakelock()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 369
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnProximityPositiveRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPendingWaitForNegativeProximityLocked(Z)Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 230
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 231
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 233
    monitor-exit v0

    return p0

    .line 234
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setProximitySensorEnabled(Z)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 391
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_1

    .line 394
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 396
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void

    .line 400
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_1

    .line 403
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    .line 404
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 405
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 406
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 407
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 410
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 411
    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    .line 414
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    :cond_1
    return-void
.end method

.method public shouldIgnoreProximityUntilChanged()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    return p0
.end method

.method public shouldSkipRampBecauseOfProximityChangeToNegative()Z
    .locals 0

    .line 303
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    return p0
.end method

.method public updatePendingProximityRequestsLocked()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 201
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz v2, :cond_0

    .line 203
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateProximityState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V
    .locals 3

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 245
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 246
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz p1, :cond_0

    if-eq p2, v2, :cond_0

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 251
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-nez p1, :cond_2

    .line 257
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_0

    .line 260
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne p1, v2, :cond_1

    if-eq p2, v2, :cond_1

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 272
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 274
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne p1, v2, :cond_3

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz p1, :cond_5

    .line 279
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityNegativeWithWakelock()V

    return-void

    .line 284
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 285
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 286
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 288
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p1, :cond_5

    .line 291
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityNegativeWithWakelock()V

    :cond_5
    return-void
.end method
