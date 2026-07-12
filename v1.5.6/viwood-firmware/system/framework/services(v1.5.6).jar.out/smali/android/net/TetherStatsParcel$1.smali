.class public Landroid/net/TetherStatsParcel$1;
.super Ljava/lang/Object;
.source "TetherStatsParcel.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;
    .locals 0

    .line 22
    new-instance p0, Landroid/net/TetherStatsParcel;

    invoke-direct {p0}, Landroid/net/TetherStatsParcel;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/TetherStatsParcel;
    .locals 0

    .line 28
    new-array p0, p1, [Landroid/net/TetherStatsParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->newArray(I)[Landroid/net/TetherStatsParcel;

    move-result-object p0

    return-object p0
.end method
