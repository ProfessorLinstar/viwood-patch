.class public abstract Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld$IFsveritySetupAuthToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2161
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2172
    :cond_0
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2173
    instance-of v1, v0, Landroid/os/IInstalld$IFsveritySetupAuthToken;

    if-eqz v1, :cond_1

    .line 2174
    check-cast v0, Landroid/os/IInstalld$IFsveritySetupAuthToken;

    return-object v0

    .line 2176
    :cond_1
    new-instance v0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_0

    .line 2186
    const-string p0, "android.os.IInstalld.IFsveritySetupAuthToken"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2193
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
