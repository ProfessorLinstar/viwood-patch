.class public Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;
.super Ljava/lang/Object;
.source "NetworkAttributesParcelable.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .locals 0

    .line 22
    new-instance p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    invoke-direct {p0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .locals 0

    .line 28
    new-array p0, p1, [Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;->newArray(I)[Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p0

    return-object p0
.end method
