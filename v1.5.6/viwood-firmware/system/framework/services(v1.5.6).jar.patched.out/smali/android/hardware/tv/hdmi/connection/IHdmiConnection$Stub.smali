.class public abstract Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub;
.super Landroid/os/Binder;
.source "IHdmiConnection.java"

# interfaces
.implements Landroid/hardware/tv/hdmi/connection/IHdmiConnection;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/hdmi/connection/IHdmiConnection;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    sget-object v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
