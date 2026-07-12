.class public Landroid/net/PrivateDnsConfigParcel$1;
.super Ljava/lang/Object;
.source "PrivateDnsConfigParcel.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/PrivateDnsConfigParcel;
    .locals 0

    .line 23
    new-instance p0, Landroid/net/PrivateDnsConfigParcel;

    invoke-direct {p0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/net/PrivateDnsConfigParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/PrivateDnsConfigParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/PrivateDnsConfigParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/PrivateDnsConfigParcel;
    .locals 0

    .line 29
    new-array p0, p1, [Landroid/net/PrivateDnsConfigParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/PrivateDnsConfigParcel$1;->newArray(I)[Landroid/net/PrivateDnsConfigParcel;

    move-result-object p0

    return-object p0
.end method
