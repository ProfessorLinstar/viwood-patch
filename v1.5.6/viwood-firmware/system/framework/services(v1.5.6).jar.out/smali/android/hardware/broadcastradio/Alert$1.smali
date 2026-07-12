.class public Landroid/hardware/broadcastradio/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Alert;
    .locals 0

    .line 20
    new-instance p0, Landroid/hardware/broadcastradio/Alert;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/Alert;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Alert;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Alert$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Alert;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/Alert;
    .locals 0

    .line 26
    new-array p0, p1, [Landroid/hardware/broadcastradio/Alert;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Alert$1;->newArray(I)[Landroid/hardware/broadcastradio/Alert;

    move-result-object p0

    return-object p0
.end method
