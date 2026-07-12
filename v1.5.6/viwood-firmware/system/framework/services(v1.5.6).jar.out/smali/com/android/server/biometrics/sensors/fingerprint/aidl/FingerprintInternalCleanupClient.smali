.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "FingerprintInternalCleanupClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;Ljava/util/Map;)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 1

    .line 63
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;

    const/4 v0, 0x3

    .line 65
    invoke-virtual {p9, p1, v0}, Lcom/android/server/biometrics/log/BiometricLogger;->swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p9

    invoke-direct/range {p0 .. p10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object p0
.end method

.method public getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 14

    .line 75
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v5

    const/4 p0, 0x4

    move-object/from16 v1, p9

    .line 77
    invoke-virtual {v1, p1, p0}, Lcom/android/server/biometrics/log/BiometricLogger;->swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v10

    const/4 v4, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)V

    return-object v0
.end method

.method public handleInvalidBiometricState()V
    .locals 2

    .line 90
    const-string v0, "FingerprintInternalCleanupClient"

    const-string v1, "Invalid fingerprint user state: delete the state."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->deleteStateForUser(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFingerprintLoeNotification(Landroid/content/Context;)V

    return-void
.end method

.method public onAddUnknownTemplate(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    check-cast p2, Landroid/hardware/fingerprint/Fingerprint;

    .line 84
    invoke-interface {p1, v0, p0, p2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method
