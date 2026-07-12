.class public abstract Landroid/hardware/boot/IBootControl$Stub;
.super Landroid/os/Binder;
.source "IBootControl.java"

# interfaces
.implements Landroid/hardware/boot/IBootControl;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/boot/IBootControl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    sget-object v0, Landroid/hardware/boot/IBootControl;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Landroid/hardware/boot/IBootControl;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroid/hardware/boot/IBootControl;

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Landroid/hardware/boot/IBootControl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/boot/IBootControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
