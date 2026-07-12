.class public abstract Lvendor/mediatek/hardware/nvram/INvram$Stub;
.super Landroid/os/Binder;
.source "INvram.java"

# interfaces
.implements Lvendor/mediatek/hardware/nvram/INvram;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/nvram/INvram;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    sget-object v0, Lvendor/mediatek/hardware/nvram/INvram;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    instance-of v1, v0, Lvendor/mediatek/hardware/nvram/INvram;

    if-eqz v1, :cond_1

    .line 109
    check-cast v0, Lvendor/mediatek/hardware/nvram/INvram;

    return-object v0

    .line 111
    :cond_1
    new-instance v0, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/mediatek/hardware/nvram/INvram$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
