.class public Landroid/hardware/tv/mediaquality/ParameterRange$1;
.super Ljava/lang/Object;
.source "ParameterRange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/ParameterRange;
    .locals 0

    .line 19
    new-instance p0, Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/ParameterRange;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterRange;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/ParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/mediaquality/ParameterRange;
    .locals 0

    .line 25
    new-array p0, p1, [Landroid/hardware/tv/mediaquality/ParameterRange;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterRange$1;->newArray(I)[Landroid/hardware/tv/mediaquality/ParameterRange;

    move-result-object p0

    return-object p0
.end method
