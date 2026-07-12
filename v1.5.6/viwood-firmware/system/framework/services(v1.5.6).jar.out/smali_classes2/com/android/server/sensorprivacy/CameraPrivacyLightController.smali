.class public Lcom/android/server/sensorprivacy/CameraPrivacyLightController;
.super Ljava/lang/Object;
.source "CameraPrivacyLightController.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final LIGHT_VALUE_MULTIPLIER:D


# instance fields
.field public final mActivePackages:Ljava/util/Set;

.field public final mActivePhonePackages:Ljava/util/Set;

.field public mAlvSum:J

.field public final mAmbientLightValues:Ljava/util/ArrayDeque;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCameraLights:Ljava/util/List;

.field public final mColors:[I

.field public final mContext:Landroid/content/Context;

.field public final mDelayedUpdateToken:Ljava/lang/Object;

.field public mElapsedRealTime:J

.field public mElapsedTimeStartedReading:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public mIsAmbientLightListenerRegistered:Z

.field public mLastLightColor:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsManager:Landroid/hardware/lights/LightsManager;

.field public mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

.field public final mMovingAverageIntervalMillis:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mThresholds:[J


# direct methods
.method public static synthetic $r8$lambda$SMiyzXtZBAwi2UTaXppZg0EcP9M(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 80
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    const-wide/16 v2, 0x0

    .line 83
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 84
    iput v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 88
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    .line 91
    iput-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    .line 100
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 105
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 106
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 107
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 108
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 109
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 115
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 118
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 119
    const-class p2, Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/LightsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 120
    const-class p2, Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0042

    .line 122
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107002e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 125
    array-length p2, p1

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_5

    .line 130
    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    move p2, v1

    .line 131
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_1

    .line 132
    aget v2, p1, p2

    .line 133
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v4, v6

    double-to-long v4, v4

    aput-wide v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p1

    .line 137
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/Light;

    .line 139
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string p2, "android:camera"

    const-string v0, "android:phone_call_camera"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 155
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void

    .line 126
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There must be exactly one more color than thresholds. Found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " colors and "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " thresholds."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addElement(JI)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 165
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 167
    iget-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object p3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    iget-object p3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v5, p3

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    return-void
.end method

.method public final computeCurrentLightColor()I
    .locals 7

    .line 266
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getLiveAmbientLightTotal()J

    move-result-wide v0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 269
    :goto_0
    iget-object v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 270
    aget-wide v5, v5, v4

    mul-long/2addr v5, v2

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 271
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    aget p0, p0, v4

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public final getCurrentIntervalMillis()J
    .locals 6

    .line 314
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 315
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    sub-long/2addr v2, v4

    .line 314
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getElapsedRealTime()J
    .locals 4

    .line 290
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final getLiveAmbientLightTotal()J
    .locals 10

    .line 188
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    return-wide v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 194
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 195
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 197
    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 198
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v8, p0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 204
    const-string p2, "android:camera"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    goto :goto_0

    .line 206
    :cond_0
    const-string p2, "android:phone_call_camera"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    :goto_0
    if-eqz p4, :cond_1

    .line 213
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 218
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    :cond_2
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 302
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    float-to-double v3, p1

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v3, v5

    double-to-int p1, v3

    .line 302
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->addElement(JI)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 305
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 306
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final removeObsoleteData(J)V
    .locals 8

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 174
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 175
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 176
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    .line 179
    :cond_0
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setElapsedRealTime(J)V
    .locals 0

    .line 295
    iput-wide p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    return-void
.end method

.method public final updateLightSession()V
    .locals 5

    .line 222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 231
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateSensorListener(Z)V

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_2

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    aget v0, v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->computeCurrentLightColor()I

    move-result v0

    .line 244
    :goto_1
    iget v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-eqz v1, :cond_5

    :goto_2
    return-void

    .line 247
    :cond_5
    iput v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 249
    new-instance v1, Landroid/hardware/lights/LightsRequest$Builder;

    invoke-direct {v1}, Landroid/hardware/lights/LightsRequest$Builder;-><init>()V

    .line 250
    :goto_3
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 251
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/Light;

    new-instance v4, Landroid/hardware/lights/LightState$Builder;

    invoke-direct {v4}, Landroid/hardware/lights/LightState$Builder;-><init>()V

    .line 253
    invoke-virtual {v4, v0}, Landroid/hardware/lights/LightState$Builder;->setColor(I)Landroid/hardware/lights/LightState$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Landroid/hardware/lights/LightState$Builder;->build()Landroid/hardware/lights/LightState;

    move-result-object v4

    .line 251
    invoke-virtual {v1, v3, v4}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_7

    .line 258
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/hardware/lights/LightsManager;->openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 261
    :cond_7
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    invoke-virtual {v1}, Landroid/hardware/lights/LightsRequest$Builder;->build()Landroid/hardware/lights/LightsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/lights/LightsManager$LightsSession;->requestLights(Landroid/hardware/lights/LightsRequest;)V

    return-void
.end method

.method public final updateSensorListener(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 278
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    :cond_0
    if-nez p1, :cond_1

    .line 282
    iget-boolean p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 285
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    :cond_1
    return-void
.end method
