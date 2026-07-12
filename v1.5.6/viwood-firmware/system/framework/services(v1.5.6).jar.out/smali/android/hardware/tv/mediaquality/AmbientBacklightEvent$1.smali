.class public Landroid/hardware/tv/mediaquality/AmbientBacklightEvent$1;
.super Ljava/lang/Object;
.source "AmbientBacklightEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;
    .locals 1

    .line 75
    new-instance p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;-><init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/AmbientBacklightEvent-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;
    .locals 0

    .line 79
    new-array p0, p1, [Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent$1;->newArray(I)[Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    move-result-object p0

    return-object p0
.end method
