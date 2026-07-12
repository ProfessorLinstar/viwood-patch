.class public Lcom/android/server/oemlock/VendorLockHidl;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLockHidl.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method public static synthetic $r8$lambda$J0xDhXKOKFsnDjeONe3R4MXPypg([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 1

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 121
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method

.method public static synthetic $r8$lambda$eOi_ayoptw_9P3u_INg97xoCpUs([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 1

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 170
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method

.method public static synthetic $r8$lambda$uRDVk7b7gmc4xqVSXUxClFklLYY([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 63
    aput-object p3, p1, v0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLockHidl;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    return-void
.end method

.method public static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 2

    const/4 v0, 0x1

    .line 39
    :try_start_0
    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService(Z)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 41
    :catch_1
    const-string v0, "OemLock"

    const-string v1, "OemLock Hidl HAL not present on device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .locals 5

    .line 56
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 57
    new-array v3, v1, [Ljava/lang/Integer;

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    .line 70
    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    if-eq v3, v1, :cond_0

    .line 80
    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 76
    :cond_0
    const-string v1, "Failed to get OEM lock name."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 73
    :cond_1
    aget-object p0, v2, p0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    const-string v1, "Failed to get name from HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .locals 5

    .line 115
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Boolean;

    .line 116
    new-array v3, v1, [Ljava/lang/Integer;

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    .line 128
    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    .line 134
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get carrier OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 124
    const-string v1, "Failed to get carrier state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByDevice()Z
    .locals 5

    .line 163
    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Boolean;

    .line 165
    new-array v3, v1, [Ljava/lang/Integer;

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v2}, Lcom/android/server/oemlock/VendorLockHidl$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    .line 177
    aget-object v3, v3, p0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    .line 183
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get device OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_1
    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 173
    const-string v1, "Failed to get devie state from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 1

    .line 88
    const-string v0, "OemLock"

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/oemlock/VendorLockHidl;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    .line 89
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Signature required for carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set carrier OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_3
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

    .line 108
    :goto_0
    const-string p1, "Failed to set carrier state with HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByDevice(Z)V
    .locals 2

    .line 144
    const-string v0, "OemLock"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 150
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 153
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set device OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated device allows OEM lock state to: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 156
    :goto_1
    const-string p1, "Failed to set device state with HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final toByteArrayList([B)Ljava/util/ArrayList;
    .locals 3

    if-nez p1, :cond_0

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 194
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    .line 196
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
