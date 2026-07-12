.class public abstract Landroid/hardware/health/IHealth$Stub;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/IHealth;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    instance-of v1, v0, Landroid/hardware/health/IHealth;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Landroid/hardware/health/IHealth;

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/health/IHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
