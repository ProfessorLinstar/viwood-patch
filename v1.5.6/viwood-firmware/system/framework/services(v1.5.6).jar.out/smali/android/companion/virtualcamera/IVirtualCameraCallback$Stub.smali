.class public abstract Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    instance-of v1, v0, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    const-string/jumbo p0, "onStreamClosed"

    return-object p0

    .line 97
    :cond_1
    const-string/jumbo p0, "onProcessCaptureRequest"

    return-object p0

    .line 93
    :cond_2
    const-string/jumbo p0, "onStreamConfigured"

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 112
    invoke-static {p1}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 117
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 155
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-interface {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onStreamClosed(I)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-interface {p0, p1, p3}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onProcessCaptureRequest(II)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 139
    invoke-interface/range {v2 .. v7}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    :goto_0
    return v1
.end method
