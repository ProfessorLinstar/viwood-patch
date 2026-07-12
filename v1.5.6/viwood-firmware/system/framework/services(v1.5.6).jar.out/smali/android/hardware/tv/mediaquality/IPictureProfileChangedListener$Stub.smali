.class public abstract Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub;
.super Landroid/os/Binder;
.source "IPictureProfileChangedListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
