.class public Landroid/hardware/usb/AltModeData$DisplayPortAltModeData$1;
.super Ljava/lang/Object;
.source "AltModeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;
    .locals 0

    .line 137
    new-instance p0, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    invoke-direct {p0}, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;
    .locals 0

    .line 143
    new-array p0, p1, [Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData$1;->newArray(I)[Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object p0

    return-object p0
.end method
