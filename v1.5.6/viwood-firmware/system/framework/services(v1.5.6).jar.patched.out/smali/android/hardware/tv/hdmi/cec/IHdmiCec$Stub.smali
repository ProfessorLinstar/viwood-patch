.class public abstract Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub;
.super Landroid/os/Binder;
.source "IHdmiCec.java"

# interfaces
.implements Landroid/hardware/tv/hdmi/cec/IHdmiCec;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/hdmi/cec/IHdmiCec;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    sget-object v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    instance-of v1, v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
