.class public Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;
.super Ljava/lang/Object;
.source "VirtualCameraConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;
    .locals 0

    .line 24
    new-instance p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    invoke-direct {p0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/companion/virtualcamera/VirtualCameraConfiguration;
    .locals 0

    .line 30
    new-array p0, p1, [Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;->newArray(I)[Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    move-result-object p0

    return-object p0
.end method
