.class public Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "BiometricTestSessionImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 302
    const-string p2, "face/aidl/BiometricTestSessionImpl"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClientFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 305
    const-string p1, "Remote exception"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3

    .line 291
    const-string v0, "face/aidl/BiometricTestSessionImpl"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 294
    const-string p1, "Remote exception"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
