.class public Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;
.super Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.source "HidlToAidlSensorAdapter.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field public final mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field public mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field public final mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# direct methods
.method public static synthetic $r8$lambda$FJjvKbPjEv6TEUrQiM1jjsfDAHc(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->lambda$init$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HOc3JPOzKL5jUL6VYht1uq31aXo(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->lambda$scheduleLoadAuthenticatorIds$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$s2IFFJnZU55Q9zycXiLrNywSER0(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;ILcom/android/server/biometrics/sensors/face/aidl/AidlSession;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->lambda$new$0(ILcom/android/server/biometrics/sensors/face/aidl/AidlSession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyLcgWxvpxdJHyIZWnoWBI4BDzE(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;)V
    .locals 12

    .line 79
    new-instance v9, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    invoke-direct {v9}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    .line 97
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/16 p2, -0x2710

    .line 57
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 63
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 99
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 101
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-object/from16 p1, p9

    .line 102
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-object/from16 p1, p10

    .line 103
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez p11, :cond_0

    .line 105
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    goto :goto_0

    :cond_0
    move-object/from16 p1, p11

    .line 116
    :goto_0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    return-void
.end method


# virtual methods
.method public final getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
    .locals 10

    .line 181
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v2

    .line 183
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v3

    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getFaceUtilsInstance()Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V

    return-object v0
.end method

.method public final getFaceUpdateActiveUserClient(I)Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;
    .locals 11

    .line 253
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 254
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v4

    iget v6, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 255
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v8

    .line 256
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getFaceUtilsInstance()Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v9, v4, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v10

    const-string v5, "HidlToAidlSensorAdapter"

    move v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    return-object v0
.end method

.method public getFaceUtilsInstance()Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p0

    return-object p0
.end method

.method public final getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mFaceProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v2

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 195
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-eqz v0, :cond_1

    return-object v0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face daemon was null, reconnecting, current operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "HidlToAidlSensorAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_0
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 212
    :goto_0
    const-string v2, "Failed to get face HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 210
    :goto_1
    const-string v2, "NoSuchElementException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez v0, :cond_2

    .line 216
    const-string p0, "Face HAL not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_2
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->scheduleLoadAuthenticatorIds()V

    .line 223
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mInternalCleanupAndGetFeatureRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 224
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p0
.end method

.method public getLockoutModeForUser(I)I
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    return-object p0
.end method

.method public getSession()Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-object v0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleUserChanged(I)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed. Current user for face sensor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HidlToAidlSensorAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 230
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return-void
.end method

.method public init(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 6

    .line 144
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setScheduler(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 148
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setLazySession(Ljava/util/function/Supplier;)V

    .line 149
    new-instance p1, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$init$1()Ljava/lang/Integer;
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0(ILcom/android/server/biometrics/sensors/face/aidl/AidlSession;I)V
    .locals 0

    .line 65
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    if-eq p1, p2, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->handleUserChanged(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$scheduleLoadAuthenticatorIds$2()V
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 244
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->scheduleFaceUpdateActiveUserClient(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scheduleFaceUpdateActiveUserClient(I)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getFaceUpdateActiveUserClient(I)Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public final scheduleLoadAuthenticatorIds()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceDied(J)V
    .locals 0

    .line 126
    const-string p1, "HidlToAidlSensorAdapter"

    const-string p2, "Face HAL died."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-void
.end method
