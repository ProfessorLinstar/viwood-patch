.class public Landroid/hardware/broadcastradio/Polygon$1;
.super Ljava/lang/Object;
.source "Polygon.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Polygon;
    .locals 0

    .line 18
    new-instance p0, Landroid/hardware/broadcastradio/Polygon;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/Polygon;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Polygon;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Polygon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/Polygon;
    .locals 0

    .line 24
    new-array p0, p1, [Landroid/hardware/broadcastradio/Polygon;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Polygon$1;->newArray(I)[Landroid/hardware/broadcastradio/Polygon;

    move-result-object p0

    return-object p0
.end method
