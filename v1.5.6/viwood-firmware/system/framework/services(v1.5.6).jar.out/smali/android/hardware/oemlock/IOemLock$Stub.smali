.class public abstract Landroid/hardware/oemlock/IOemLock$Stub;
.super Landroid/os/Binder;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/IOemLock;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/oemlock/IOemLock;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    sget-object v0, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Landroid/hardware/oemlock/IOemLock;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Landroid/hardware/oemlock/IOemLock;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/oemlock/IOemLock$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
