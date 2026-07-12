.class public Landroid/net/networkstack/aidl/dhcp/DhcpOption$1;
.super Ljava/lang/Object;
.source "DhcpOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/dhcp/DhcpOption;
    .locals 0

    .line 17
    new-instance p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    invoke-direct {p0}, Landroid/net/networkstack/aidl/dhcp/DhcpOption;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/dhcp/DhcpOption$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/networkstack/aidl/dhcp/DhcpOption;
    .locals 0

    .line 23
    new-array p0, p1, [Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/dhcp/DhcpOption$1;->newArray(I)[Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    move-result-object p0

    return-object p0
.end method
