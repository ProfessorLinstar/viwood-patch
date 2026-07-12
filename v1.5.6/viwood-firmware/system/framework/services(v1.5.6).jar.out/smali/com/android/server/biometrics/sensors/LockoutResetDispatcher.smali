.class public Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
.super Ljava/lang/Object;
.source "LockoutResetDispatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 4

    .line 91
    const-string v0, "LockoutResetTracker"

    if-nez p1, :cond_0

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Callback from : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 98
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 100
    const-string p1, "Failed to link to death"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public binderDied()V
    .locals 0

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback binder died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockoutResetTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 113
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 115
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing dead callback for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$fgetmOpPackageName(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$mreleaseWakelock(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyLockoutResetCallbacks(I)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->mClientCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->sendLockoutReset(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
