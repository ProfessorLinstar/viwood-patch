.class public abstract Landroid/adpf/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/adpf/ISessionManager;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/adpf/ISessionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    const-string v0, "android.adpf.ISessionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Landroid/adpf/ISessionManager;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Landroid/adpf/ISessionManager;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Landroid/adpf/ISessionManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/adpf/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
