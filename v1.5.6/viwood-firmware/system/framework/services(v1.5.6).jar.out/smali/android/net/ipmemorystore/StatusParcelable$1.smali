.class public Landroid/net/ipmemorystore/StatusParcelable$1;
.super Ljava/lang/Object;
.source "StatusParcelable.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/StatusParcelable;
    .locals 0

    .line 17
    new-instance p0, Landroid/net/ipmemorystore/StatusParcelable;

    invoke-direct {p0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/StatusParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/StatusParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/StatusParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ipmemorystore/StatusParcelable;
    .locals 0

    .line 23
    new-array p0, p1, [Landroid/net/ipmemorystore/StatusParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/StatusParcelable$1;->newArray(I)[Landroid/net/ipmemorystore/StatusParcelable;

    move-result-object p0

    return-object p0
.end method
