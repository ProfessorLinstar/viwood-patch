.class public Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;
.super Ljava/lang/Object;
.source "ReachabilityLossInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 0

    .line 33
    invoke-static {p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 0

    .line 37
    new-array p0, p1, [Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;->newArray(I)[Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method
