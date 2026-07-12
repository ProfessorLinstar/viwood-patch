.class public abstract Landroid/hardware/tv/mediaquality/IMediaQuality$Stub;
.super Landroid/os/Binder;
.source "IMediaQuality.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IMediaQuality;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IMediaQuality;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    instance-of v1, v0, Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Landroid/hardware/tv/mediaquality/IMediaQuality;

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
