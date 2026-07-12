.class Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
.super Ljava/lang/Object;
.source "BiometricService.java"


# instance fields
.field public final mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field public final mSensorsPendingInvalidation:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 170
    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 172
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/biometrics/BiometricSensor;

    .line 173
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v0, p4, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    :try_start_0
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    const-string v1, "BiometricService"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_2
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting authenticatorId invalidation for sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    iget v1, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;

    invoke-direct {v1, p0, p5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;-><init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p5

    .line 203
    const-string v0, "BiometricService"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 193
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 207
    :cond_3
    monitor-enter p0

    .line 208
    :try_start_4
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_4

    .line 210
    :try_start_5
    const-string p1, "BiometricService"

    const-string p2, "No sensors require invalidation"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 213
    :try_start_6
    const-string p2, "BiometricService"

    const-string p3, "Remote Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public static start(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    .locals 6

    .line 163
    new-instance v0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;-><init>(Landroid/content/Context;Ljava/util/List;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-object v0
.end method


# virtual methods
.method public onInvalidated(I)V
    .locals 3

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 224
    const-string v0, "BiometricService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalidated, remaining size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 225
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 229
    :try_start_1
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    :try_start_2
    const-string v0, "BiometricService"

    const-string v1, "Remote Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
