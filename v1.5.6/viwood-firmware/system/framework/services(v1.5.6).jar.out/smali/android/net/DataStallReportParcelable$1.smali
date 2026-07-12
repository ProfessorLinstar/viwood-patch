.class public Landroid/net/DataStallReportParcelable$1;
.super Ljava/lang/Object;
.source "DataStallReportParcelable.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DataStallReportParcelable;
    .locals 0

    .line 20
    new-instance p0, Landroid/net/DataStallReportParcelable;

    invoke-direct {p0}, Landroid/net/DataStallReportParcelable;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataStallReportParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/DataStallReportParcelable;
    .locals 0

    .line 26
    new-array p0, p1, [Landroid/net/DataStallReportParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable$1;->newArray(I)[Landroid/net/DataStallReportParcelable;

    move-result-object p0

    return-object p0
.end method
