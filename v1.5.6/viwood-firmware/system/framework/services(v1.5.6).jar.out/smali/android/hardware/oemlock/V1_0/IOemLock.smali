.class public interface abstract Landroid/hardware/oemlock/V1_0/IOemLock;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    const-string v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    instance-of v3, v2, Landroid/hardware/oemlock/V1_0/IOemLock;

    if-eqz v3, :cond_1

    .line 28
    check-cast v2, Landroid/hardware/oemlock/V1_0/IOemLock;

    return-object v2

    .line 31
    :cond_1
    new-instance v2, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/oemlock/V1_0/IOemLock;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 1

    .line 64
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/oemlock/V1_0/IOemLock;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 1

    .line 71
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService(Ljava/lang/String;Z)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
.end method

.method public abstract isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
.end method

.method public abstract setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I
.end method

.method public abstract setOemUnlockAllowedByDevice(Z)I
.end method
