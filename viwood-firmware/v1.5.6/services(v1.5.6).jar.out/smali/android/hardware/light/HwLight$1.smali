.class public Landroid/hardware/light/HwLight$1;
.super Ljava/lang/Object;
.source "HwLight.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/light/HwLight;
    .locals 0

    .line 20
    new-instance p0, Landroid/hardware/light/HwLight;

    invoke-direct {p0}, Landroid/hardware/light/HwLight;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/light/HwLight;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/light/HwLight$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/light/HwLight;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/light/HwLight;
    .locals 0

    .line 26
    new-array p0, p1, [Landroid/hardware/light/HwLight;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/light/HwLight$1;->newArray(I)[Landroid/hardware/light/HwLight;

    move-result-object p0

    return-object p0
.end method
