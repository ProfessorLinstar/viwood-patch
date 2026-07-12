.class public Landroid/net/DhcpResultsParcelable$1;
.super Ljava/lang/Object;
.source "DhcpResultsParcelable.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResultsParcelable;
    .locals 0

    .line 22
    new-instance p0, Landroid/net/DhcpResultsParcelable;

    invoke-direct {p0}, Landroid/net/DhcpResultsParcelable;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/net/DhcpResultsParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/DhcpResultsParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResultsParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/DhcpResultsParcelable;
    .locals 0

    .line 28
    new-array p0, p1, [Landroid/net/DhcpResultsParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/DhcpResultsParcelable$1;->newArray(I)[Landroid/net/DhcpResultsParcelable;

    move-result-object p0

    return-object p0
.end method
