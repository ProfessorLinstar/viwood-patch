.class public abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;
.super Landroid/os/Binder;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    instance-of v1, v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    if-eqz v1, :cond_1

    .line 74
    check-cast v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    return-object v0

    .line 76
    :cond_1
    new-instance v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
