.class public Lcom/android/server/oemlock/VendorLockAidl;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLockAidl.java"


# instance fields
.field public mOemLock:Landroid/hardware/oemlock/IOemLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    return-void
.end method

.method public static getOemLockHalService()Landroid/hardware/oemlock/IOemLock;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/hardware/oemlock/IOemLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/oemlock/IOemLock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .locals 2

    .line 45
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    invoke-interface {p0}, Landroid/hardware/oemlock/IOemLock;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    const-string v0, "OemLock"

    const-string v1, "Failed to get name from HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .locals 2

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    invoke-interface {p0}, Landroid/hardware/oemlock/IOemLock;->isOemUnlockAllowedByCarrier()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 90
    const-string v0, "OemLock"

    const-string v1, "Failed to get carrier state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByDevice()Z
    .locals 2

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    invoke-interface {p0}, Landroid/hardware/oemlock/IOemLock;->isOemUnlockAllowedByDevice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 111
    const-string v0, "OemLock"

    const-string v1, "Failed to get devie state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 2

    .line 56
    const-string v0, "OemLock"

    if-nez p2, :cond_0

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-interface {p0, p1, v1}, Landroid/hardware/oemlock/IOemLock;->setOemUnlockAllowedByCarrier(Z[B)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    invoke-interface {p0, p1, p2}, Landroid/hardware/oemlock/IOemLock;->setOemUnlockAllowedByCarrier(Z[B)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    if-nez p2, :cond_1

    .line 68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Signature required for carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_2
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set carrier OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated carrier allows OEM lock state to: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 80
    :goto_1
    const-string p1, "Failed to set carrier state with HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByDevice(Z)V
    .locals 1

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/IOemLock;->setOemUnlockAllowedByDevice(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 100
    const-string p1, "OemLock"

    const-string v0, "Failed to set device state with HAL"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
