.class public abstract Landroid/hardware/weaver/IWeaver$Stub;
.super Landroid/os/Binder;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/IWeaver;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/weaver/IWeaver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    sget-object v0, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Landroid/hardware/weaver/IWeaver;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Landroid/hardware/weaver/IWeaver;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Landroid/hardware/weaver/IWeaver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/weaver/IWeaver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
