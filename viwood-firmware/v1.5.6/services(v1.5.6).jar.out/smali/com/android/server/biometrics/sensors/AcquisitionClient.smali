.class public abstract Lcom/android/server/biometrics/sensors/AcquisitionClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "AcquisitionClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# static fields
.field public static final ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;


# instance fields
.field public mAlreadyCancelled:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mShouldSendErrorToClient:Z

.field public final mShouldVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    .line 46
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    .line 64
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 66
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    move/from16 p1, p9

    .line 67
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_0

    .line 135
    const-string p0, "Biometrics/AcquisitionClient"

    const-string v0, "Cancel was already requested"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    return-void
.end method

.method public cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 6

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWithoutStarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 153
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public isAlreadyCancelled()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    return p0
.end method

.method public isInterruptable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyUserActivity()V
    .locals 4

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 192
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public final onAcquiredInternal(IIZ)V
    .locals 6

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    move v3, p1

    move v4, p2

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAcquired(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Acquired: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", shouldSend: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Biometrics/AcquisitionClient"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->notifyUserActivity()V

    :cond_0
    if-eqz p3, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p3

    invoke-virtual {p1, p3, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAcquired(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 185
    const-string p3, "Failed to invoke sendAcquired"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_1
    return-void
.end method

.method public onError(II)V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    return-void
.end method

.method public onErrorInternal(IIZ)V
    .locals 9

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onErrorInternal code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/AcquisitionClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v5

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    move v6, p1

    move v7, p2

    .line 113
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 116
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    invoke-virtual {p1, p2, v0, v6, v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 119
    const-string p2, "Failed to invoke sendError"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 124
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    if-nez p1, :cond_1

    .line 125
    const-string p0, "Callback is null, perhaps the client hasn\'t been started yet?"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onUserCanceled()V
    .locals 2

    .line 96
    const-string v0, "Biometrics/AcquisitionClient"

    const-string/jumbo v1, "onUserCanceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->stopHalOperation()V

    return-void
.end method

.method public abstract stopHalOperation()V
.end method

.method public unableToStart()V
    .locals 4

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    const-string v0, "Biometrics/AcquisitionClient"

    const-string v1, "Unable to send error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final vibrateSuccess()V
    .locals 7

    .line 196
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 197
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/biometrics/sensors/AcquisitionClient;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::success"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 198
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_0
    return-void
.end method
