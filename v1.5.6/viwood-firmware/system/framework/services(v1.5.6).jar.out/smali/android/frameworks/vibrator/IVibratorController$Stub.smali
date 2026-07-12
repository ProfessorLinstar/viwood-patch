.class public abstract Landroid/frameworks/vibrator/IVibratorController$Stub;
.super Landroid/os/Binder;
.source "IVibratorController.java"

# interfaces
.implements Landroid/frameworks/vibrator/IVibratorController;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    sget-object v0, Landroid/frameworks/vibrator/IVibratorController;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Landroid/frameworks/vibrator/IVibratorController;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Landroid/frameworks/vibrator/IVibratorController;

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
