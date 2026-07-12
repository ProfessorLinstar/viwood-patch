.class public abstract Landroid/hardware/power/stats/IPowerStats$Stub;
.super Landroid/os/Binder;
.source "IPowerStats.java"

# interfaces
.implements Landroid/hardware/power/stats/IPowerStats;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    sget-object v0, Landroid/hardware/power/stats/IPowerStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    instance-of v1, v0, Landroid/hardware/power/stats/IPowerStats;

    if-eqz v1, :cond_1

    .line 81
    check-cast v0, Landroid/hardware/power/stats/IPowerStats;

    return-object v0

    .line 83
    :cond_1
    new-instance v0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
