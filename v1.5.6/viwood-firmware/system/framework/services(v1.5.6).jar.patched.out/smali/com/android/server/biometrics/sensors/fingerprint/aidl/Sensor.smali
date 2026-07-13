.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

.field public final mHandler:Landroid/os/Handler;

.field public mLazySession:Ljava/util/function/Supplier;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mTestHalEnabled:Z

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$-KQmHF3X1xhozR4LcNLarJOuYdM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->lambda$getBiometricSchedulerForInit$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5_mPPF3pM7Na-xROLmZvgUQkybQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;IILandroid/hardware/biometrics/fingerprint/ISession;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;IILandroid/hardware/biometrics/fingerprint/ISession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D95l73NKbYyECBDY-3cqPliPJYc(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->lambda$init$0()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_GlcO2ai-HjPxKZq8Jmr8Z-zIlk(Landroid/hardware/biometrics/fingerprint/SensorLocation;)Landroid/hardware/biometrics/SensorLocationInternal;
    .locals 4

    .line 230
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    iget v3, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    iget p0, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStartUserClient(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;II)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getStartUserClient(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;II)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Z)V
    .locals 0

    .line 117
    invoke-static {p4, p6, p7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintSensorPropertiesInternal(Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/util/List;Z)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p4

    const/4 p6, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 103
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 104
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 105
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 107
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 109
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method public static getFingerprintSensorPropertiesInternal(Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/util/List;Z)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 11

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-object v0, v0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    if-eqz v0, :cond_0

    .line 215
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 216
    new-instance v5, Landroid/hardware/biometrics/ComponentInfoInternal;

    iget-object v6, v3, Landroid/hardware/biometrics/common/ComponentInfo;->componentId:Ljava/lang/String;

    iget-object v7, v3, Landroid/hardware/biometrics/common/ComponentInfo;->hardwareVersion:Ljava/lang/String;

    iget-object v8, v3, Landroid/hardware/biometrics/common/ComponentInfo;->firmwareVersion:Ljava/lang/String;

    iget-object v9, v3, Landroid/hardware/biometrics/common/ComponentInfo;->serialNumber:Ljava/lang/String;

    iget-object v10, v3, Landroid/hardware/biometrics/common/ComponentInfo;->softwareVersion:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Landroid/hardware/biometrics/ComponentInfoInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    move-object v3, v2

    iget-byte v2, v3, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    iget v3, v3, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    iget-byte v5, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    iget-boolean v6, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    move-object v8, p1

    move v7, p2

    goto :goto_2

    .line 235
    :cond_1
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 229
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 235
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v8}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 7

    .line 257
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-object v6, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    return-object v0
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 8

    const-wide v0, 0x20b00000001L

    .line 296
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 298
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x1

    .line 299
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 300
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x20e00000008L

    const/4 p1, 0x0

    .line 301
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 304
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    const-wide v4, 0x10500000003L

    .line 303
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 305
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    const-wide v4, 0x10b00000004L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 307
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 308
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 310
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 311
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v6, v7, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-wide v6, 0x10500000002L

    .line 312
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 314
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 319
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    const-wide v2, 0x10800000007L

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 322
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorIds()Ljava/util/Map;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method public getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public final getBiometricSchedulerForInit(Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .locals 6

    .line 136
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 137
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I

    move-result v2

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    invoke-direct {v5, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLazySession()Ljava/util/function/Supplier;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getLockoutModeForUser(I)I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    invoke-interface {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 375
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p0

    .line 374
    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->getLockoutStateFor(II)I

    move-result p0

    return p0
.end method

.method public getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    return-object p0
.end method

.method public getProvider()Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    return-object p0
.end method

.method public getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSessionForUser: mCurrentSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStartUserClient(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;II)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;
    .locals 10

    .line 185
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;I)V

    .line 204
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v5, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v8, p1

    move v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/fingerprint/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    return-object v0
.end method

.method public init(Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getBiometricSchedulerForInit(Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setScheduler(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 129
    new-instance p1, Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 130
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 2

    .line 358
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTestHalEnabled:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->remapFqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getBiometricSchedulerForInit$1()Ljava/lang/Integer;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, -0x2710

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;IILandroid/hardware/biometrics/fingerprint/ISession;I)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New fingerprint session created for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with hal version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-direct {v0, p5, p4, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintUtilsInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p1

    iget-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {p1, p4, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isInvalidationInProgress(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Scheduling unfinished invalidation request for fingerprint sensor: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", user: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInvalidationRequest(II)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$init$0()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onBinderDied()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 327
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending fingerprint hardware unavailable error for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sensor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 330
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v0, 0x94

    const/4 v1, -0x1

    .line 333
    invoke-static {v0, v2, v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method public setLazySession(Ljava/util/function/Supplier;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-void
.end method

.method public setScheduler(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fingerprint setTestHalEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "Closing old fingerprint session"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 291
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTestHalEnabled:Z

    return-void
.end method
