.class public Landroid/frameworks/devicestate/DeviceStateConfiguration$1;
.super Ljava/lang/Object;
.source "DeviceStateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/devicestate/DeviceStateConfiguration;
    .locals 0

    .line 18
    new-instance p0, Landroid/frameworks/devicestate/DeviceStateConfiguration;

    invoke-direct {p0}, Landroid/frameworks/devicestate/DeviceStateConfiguration;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Landroid/frameworks/devicestate/DeviceStateConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/frameworks/devicestate/DeviceStateConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/devicestate/DeviceStateConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/frameworks/devicestate/DeviceStateConfiguration;
    .locals 0

    .line 24
    new-array p0, p1, [Landroid/frameworks/devicestate/DeviceStateConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/frameworks/devicestate/DeviceStateConfiguration$1;->newArray(I)[Landroid/frameworks/devicestate/DeviceStateConfiguration;

    move-result-object p0

    return-object p0
.end method
