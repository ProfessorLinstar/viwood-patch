.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceResetLockoutClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public final mBiometricStrength:I

.field public final mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 62
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 65
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    move-object/from16 p1, p9

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-object/from16 p1, p10

    .line 67
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move/from16 p1, p11

    .line 68
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mBiometricStrength:I

    return-void
.end method

.method public static resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V
    .locals 0

    .line 120
    invoke-virtual {p4, p1, p5, p6, p7}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    const/4 p4, 0x0

    .line 121
    invoke-interface {p2, p1, p4}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 122
    invoke-virtual {p3, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 0

    .line 0
    const/16 p0, 0xc

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onError(II)V
    .locals 1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during resetLockout: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceResetLockoutClient"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onLockoutCleared()V
    .locals 8

    .line 97
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mBiometricStrength:I

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v6

    .line 97
    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V

    .line 100
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .locals 3

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/ISession;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 87
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 91
    const-string v1, "FaceResetLockoutClient"

    const-string v2, "Unable to reset lockout"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method

.method public unableToStart()V
    .locals 0

    .line 0
    return-void
.end method
