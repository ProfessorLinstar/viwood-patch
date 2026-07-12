.class public Landroid/hardware/broadcastradio/Metadata$1;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Metadata;
    .locals 1

    .line 427
    new-instance p0, Landroid/hardware/broadcastradio/Metadata;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/broadcastradio/Metadata;-><init>(Landroid/os/Parcel;Landroid/hardware/broadcastradio/Metadata-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/broadcastradio/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/broadcastradio/Metadata;
    .locals 0

    .line 431
    new-array p0, p1, [Landroid/hardware/broadcastradio/Metadata;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/Metadata$1;->newArray(I)[Landroid/hardware/broadcastradio/Metadata;

    move-result-object p0

    return-object p0
.end method
