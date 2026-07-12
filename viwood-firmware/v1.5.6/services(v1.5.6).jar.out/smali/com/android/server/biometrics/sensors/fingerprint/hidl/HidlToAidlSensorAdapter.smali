.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;
.super Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.source "HidlToAidlSensorAdapter.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field public final mInternalCleanupRunnable:Ljava/lang/Runnable;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field public mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

.field public final mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# direct methods
.method public static synthetic $r8$lambda$-wPEXYFlazZdGejZvf6Ir12IwiY(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$getFingerprintUpdateActiveUserClient$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BeN6LuKE2VbzG2uCNRJ3x9xCoDY(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$init$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IVuIoFhufoTQ65AD-R7g5bNnQJo(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$scheduleLoadAuthenticatorIds$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$K5qiiEOAFuDRwfLo4odO9ZBPQO0(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$init$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kc293C62WtUnpWYG7-OdssgqiWA(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getSession()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hzKCz0gy8JwjgnnYzUAAoIgGgh4(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$getFingerprintUpdateActiveUserClient$3()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q5X-Y07QkYsG5y1YYqK5eK1ouSw(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->lambda$new$0(ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFingerprintUpdateActiveUserClient(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getFingerprintUpdateActiveUserClient(IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getSession()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;)V
    .locals 12

    .line 83
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

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V
    .locals 7

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4, v0, p7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintSensorPropertiesInternal(Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/util/List;Z)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    const/16 v1, -0x2710

    .line 64
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 68
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 103
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 104
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mInternalCleanupRunnable:Ljava/lang/Runnable;

    move-object/from16 v1, p9

    .line 105
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-object/from16 v1, p10

    .line 106
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez p11, :cond_0

    .line 108
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p11

    .line 122
    :goto_0
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Landroid/content/Context;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Landroid/content/Context;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAidlResponseHandler()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;
    .locals 10

    .line 187
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v3

    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;)V

    return-object v0
.end method

.method public final getFingerprintUpdateActiveUserClient(IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;
    .locals 13

    .line 271
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v3

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    .line 274
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v7

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 276
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    const-string v4, "HidlToAidlSensorAdapter"

    move v3, p1

    move v11, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;ZLjava/util/Map;ZLcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    return-object v0
.end method

.method public getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 3

    .line 199
    const-string v0, "HidlToAidlSensorAdapter"

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getProvider()Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTestHalEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 201
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-eqz v1, :cond_1

    return-object v1

    .line 210
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 215
    :goto_0
    const-string v2, "NoSuchElementException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 212
    :goto_1
    const-string v2, "Failed to get fingerprint HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :goto_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v1, :cond_2

    .line 219
    const-string p0, "Fingerprint HAL not available"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_2
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->scheduleLoadAuthenticatorIds()V

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mInternalCleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 226
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object p0
.end method

.method public getLockoutModeForUser(I)I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    return-object p0
.end method

.method public final declared-synchronized getSession()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 4

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 179
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 181
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserSwitchProvider()Lcom/android/server/biometrics/sensors/UserSwitchProvider;
    .locals 1

    .line 230
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    return-object v0
.end method

.method public handleUserChanged(I)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed. Current user for fingerprint sensor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HidlToAidlSensorAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 295
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    return-void
.end method

.method public init(Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 6

    .line 141
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setLazySession(Ljava/util/function/Supplier;)V

    .line 142
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I

    move-result v2

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getUserSwitchProvider()Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setScheduler(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 145
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getFingerprintUpdateActiveUserClient$3()Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getSession()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getFingerprintUpdateActiveUserClient$4()Ljava/lang/Integer;
    .locals 0

    .line 274
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$init$1()Ljava/lang/Integer;
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$init$2(I)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 146
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void
.end method

.method public final synthetic lambda$new$0(ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V
    .locals 0

    .line 70
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    if-eq p2, p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->handleUserChanged(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$scheduleLoadAuthenticatorIds$5()V
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getContext()Landroid/content/Context;

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

    .line 283
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 284
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getFingerprintUpdateActiveUserClient(IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final scheduleLoadAuthenticatorIds()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceDied(J)V
    .locals 0

    .line 127
    const-string p1, "HidlToAidlSensorAdapter"

    const-string p2, "Fingerprint HAL died."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 129
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method
