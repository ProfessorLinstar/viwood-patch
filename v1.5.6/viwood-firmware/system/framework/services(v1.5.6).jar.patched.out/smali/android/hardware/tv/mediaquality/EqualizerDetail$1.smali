.class public Landroid/hardware/tv/mediaquality/EqualizerDetail$1;
.super Ljava/lang/Object;
.source "EqualizerDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/EqualizerDetail;
    .locals 0

    .line 22
    new-instance p0, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/EqualizerDetail;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/EqualizerDetail;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/EqualizerDetail$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/mediaquality/EqualizerDetail;
    .locals 0

    .line 28
    new-array p0, p1, [Landroid/hardware/tv/mediaquality/EqualizerDetail;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/EqualizerDetail$1;->newArray(I)[Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object p0

    return-object p0
.end method
