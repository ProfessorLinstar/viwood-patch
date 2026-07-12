.class public final Lcom/android/server/input/AmbientKeyboardBacklightController;
.super Ljava/lang/Object;
.source "AmbientKeyboardBacklightController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final DEBUG:Z

.field public static final HYSTERESIS_THRESHOLD:I = 0x2

.field public static final sAmbientControllerLock:Ljava/lang/Object;


# instance fields
.field public final mAmbientKeyboardBacklightListeners:Ljava/util/List;

.field public mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessStepIndex:I

.field public mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mHysteresisCount:I

.field public mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mSmoothedLux:I

.field public mSmoothedLuxAtLastAdjustment:I

.field public mSmoothingConstant:F


# direct methods
.method public static synthetic $r8$lambda$JJuuzJTMpjI9ZCGBKjwNrMezjco(Lcom/android/server/input/AmbientKeyboardBacklightController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "KbdBacklightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 104
    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 105
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->initConfiguration()V

    return-void
.end method


# virtual methods
.method public addSensorListener(Landroid/hardware/Sensor;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->reset()V

    const/4 v1, 0x3

    .line 294
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 295
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 296
    const-string p0, "KbdBacklightController"

    const-string p1, "Registering ALS listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;
    .locals 2

    .line 264
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ambient Light sensor data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KbdBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v0, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorType:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public final handleAmbientLuxChange(F)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    .line 161
    const-string v1, "KbdBacklightController"

    if-gez v0, :cond_0

    .line 162
    const-string p0, "Light sensor doesn\'t have valid value"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->updateSmoothedLux(F)V

    .line 167
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    if-ne p1, v2, :cond_1

    .line 169
    sget-object p1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    return-void

    .line 173
    :cond_1
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 174
    iget-object v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    array-length v3, v3

    .line 176
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    if-le v4, v5, :cond_5

    .line 177
    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v4, v0, :cond_3

    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v4, v0, :cond_3

    .line 179
    sget-boolean v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 180
    const-string v4, "ALS transitioned to brightness increasing state"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 183
    iput v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    :cond_3
    :goto_0
    if-ge p1, v3, :cond_9

    .line 186
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmIncreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result v4

    if-ge v0, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    if-ge v4, v5, :cond_9

    .line 191
    iget-object v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v3, v0, :cond_7

    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-eq v3, v0, :cond_7

    .line 193
    sget-boolean v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 194
    const-string v3, "ALS transitioned to brightness decreasing state"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_6
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 197
    iput v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    :cond_7
    :goto_1
    if-ltz p1, :cond_9

    .line 200
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iget-object v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmDecreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result v3

    if-le v0, v3, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 206
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-ne v0, v3, :cond_a

    .line 207
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 208
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 209
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 210
    iput v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 211
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmBrightnessValue(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->sendBrightnessAdjustment(I)V

    return-void

    .line 215
    :cond_a
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    if-ne p1, v0, :cond_b

    goto :goto_3

    .line 219
    :cond_b
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 220
    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incremented hysteresis count to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (lux went from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_c
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    .line 225
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 226
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 227
    iput v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 228
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmBrightnessValue(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->sendBrightnessAdjustment(I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public final handleBrightnessCallback(I)V
    .locals 2

    .line 152
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

    .line 154
    invoke-interface {v1, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;->onKeyboardBacklightValueChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 156
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleDisplayChange()V
    .locals 6

    .line 234
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 240
    :cond_0
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    iget-object v5, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 244
    :cond_1
    sget-boolean v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 245
    const-string v4, "KbdBacklightController"

    const-string v5, "Default display changed: resetting the light sensor"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    .line 250
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, v2}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    .line 254
    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getAmbientLightSensorData(I)Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 256
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    .line 259
    :cond_4
    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return v1

    .line 374
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleBrightnessCallback(I)V

    return v1
.end method

.method public final initConfiguration()V
    .locals 13

    .line 312
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070019

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x107001a

    .line 315
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x107001b

    .line 317
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 319
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_6

    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_6

    .line 325
    array-length v4, v1

    .line 326
    new-array v5, v4, [Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    iput-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    if-ge v6, v4, :cond_2

    .line 329
    aget v9, v3, v6

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    move v8, v9

    .line 331
    :goto_1
    aget v9, v2, v6

    if-gez v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v9

    .line 332
    :goto_2
    iget-object v9, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    new-instance v10, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    aget v11, v1, v6

    const/4 v12, 0x0

    invoke-direct {v10, v11, v8, v7, v12}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;-><init>(IIILcom/android/server/input/AmbientKeyboardBacklightController-IA;)V

    aput-object v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 337
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmDecreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result v1

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->-$$Nest$fgetmIncreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 346
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x10500da

    .line 347
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 351
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_4

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_4

    .line 358
    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Smoothing constant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KbdBacklightController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 353
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The config files for auto keyboard backlight brightness must contain smoothing constant in range (0.0, 1.0]."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The config files for auto keyboard backlight brightness must contain arrays of length > 0 and have -1 or Integer.MIN_VALUE as lower bound for decrease thresholds and -1 or Integer.MAX_VALUE as upper bound for increase thresholds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The config files for auto keyboard backlight brightness must contain arrays of equal lengths"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 394
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 399
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 385
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleAmbientLuxChange(F)V

    return-void
.end method

.method public registerAmbientBacklightListener(Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, v1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 127
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientKeyboardBacklightListener was already registered, listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeSensorListener(Landroid/hardware/Sensor;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 306
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 307
    const-string p0, "KbdBacklightController"

    const-string p1, "Unregistering ALS listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 365
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 367
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    const/4 v0, -0x1

    .line 368
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    return-void
.end method

.method public final sendBrightnessAdjustment(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 147
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public systemRunning()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterAmbientBacklightListener(Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;)V
    .locals 3

    .line 132
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 134
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientKeyboardBacklightListener was never registered, listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSmoothedLux(F)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    sget-object v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    if-ne v0, v1, :cond_0

    float-to-int p1, p1

    .line 276
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 281
    :goto_0
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current smoothed lux from ALS = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KbdBacklightController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
