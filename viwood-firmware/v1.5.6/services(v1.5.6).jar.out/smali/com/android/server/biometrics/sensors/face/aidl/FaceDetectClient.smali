.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "FaceDetectClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mIsStrongBiometric:Z

.field public final mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$VdXaVH2fkF0c-kpHNkPwXASKJlU(Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->lambda$doDetectInteraction$0(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhfZHzWIXh2_YZbPVhD4K4QPWZI(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 172
    const-string p1, "FaceDetectClient"

    const-string v0, "Unable to notify context changed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;Z)V
    .locals 14

    .line 71
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/SensorPrivacyManager;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 71
    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/SensorPrivacyManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/SensorPrivacyManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "Landroid/hardware/face/FaceAuthenticateOptions;",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;",
            "Z",
            "Landroid/hardware/SensorPrivacyManager;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    move-result v5

    .line 85
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 84
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move-wide/from16 p1, p4

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 p1, p10

    .line 89
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move/from16 p1, p11

    .line 90
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    move-object/from16 p1, p12

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    move-object/from16 p1, p7

    .line 92
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    return-void
.end method


# virtual methods
.method public final doDetectInteraction()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 159
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-interface {v2, v1, v3, v4, p0}, Lcom/android/server/biometrics/log/BiometricContext;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-void
.end method

.method public getProtoEnum()I
    .locals 0

    .line 0
    const/16 p0, 0xd

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$doDetectInteraction$0(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 1

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/hardware/biometrics/face/ISession;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 165
    const-string p2, "FaceDetectClient"

    const-string v0, "Remote exception when requesting face detect"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onError(II)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v3, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 150
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance p1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    invoke-direct {p1, v2, v4}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 152
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    return-void
.end method

.method public onInteractionDetected()V
    .locals 4

    .line 182
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateSuccess()V

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onDetected(IIZ)V

    .line 186
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 188
    const-string v1, "FaceDetectClient"

    const-string v2, "Remote exception when sending onDetected"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 123
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 127
    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onError(II)V

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->doDetectInteraction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 137
    const-string v2, "FaceDetectClient"

    const-string v3, "Remote exception when requesting face detect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public stopHalOperation()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 105
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 109
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 113
    const-string v1, "FaceDetectClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method
