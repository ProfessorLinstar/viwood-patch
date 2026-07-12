.class public abstract Landroid/os/IMmd$Stub;
.super Landroid/os/Binder;
.source "IMmd.java"

# interfaces
.implements Landroid/os/IMmd;


# static fields
.field static final TRANSACTION_doZramMaintenanceAsync:I = 0x1

.field static final TRANSACTION_isZramMaintenanceSupported:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.os.IMmd"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IMmd;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    const-string v0, "android.os.IMmd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    instance-of v1, v0, Landroid/os/IMmd;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Landroid/os/IMmd;

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Landroid/os/IMmd$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IMmd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-string v0, "android.os.IMmd"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 96
    :cond_2
    invoke-interface {p0}, Landroid/os/IMmd;->isZramMaintenanceSupported()Z

    move-result p0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-interface {p0}, Landroid/os/IMmd;->doZramMaintenanceAsync()V

    :goto_0
    return v1
.end method
