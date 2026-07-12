.class public Landroid/hardware/tv/mediaquality/SoundParameter$1;
.super Ljava/lang/Object;
.source "SoundParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 1

    .line 331
    new-instance p0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/SoundParameter-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 0

    .line 335
    new-array p0, p1, [Landroid/hardware/tv/mediaquality/SoundParameter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter$1;->newArray(I)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object p0

    return-object p0
.end method
