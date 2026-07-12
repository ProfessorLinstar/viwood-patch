.class public Landroid/hardware/broadcastradio/Properties$1;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Properties;
    .locals 0

    .line 23
    new-instance p0, Landroid/hardware/broadcastradio/Properties;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/Properties;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Properties;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Properties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Properties;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/Properties;
    .locals 0

    .line 29
    new-array p0, p1, [Landroid/hardware/broadcastradio/Properties;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Properties$1;->newArray(I)[Landroid/hardware/broadcastradio/Properties;

    move-result-object p0

    return-object p0
.end method
