.class public abstract Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub;
.super Landroid/os/Binder;
.source "ISecretkeeper.java"

# interfaces
.implements Landroid/hardware/security/secretkeeper/ISecretkeeper;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/secretkeeper/ISecretkeeper;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    sget-object v0, Landroid/hardware/security/secretkeeper/ISecretkeeper;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
