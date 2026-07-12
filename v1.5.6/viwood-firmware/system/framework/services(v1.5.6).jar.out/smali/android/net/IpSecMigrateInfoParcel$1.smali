.class public Landroid/net/IpSecMigrateInfoParcel$1;
.super Ljava/lang/Object;
.source "IpSecMigrateInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 0

    .line 69
    invoke-static {p1}, Landroid/net/IpSecMigrateInfoParcel;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/net/IpSecMigrateInfoParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/IpSecMigrateInfoParcel;
    .locals 0

    .line 73
    new-array p0, p1, [Landroid/net/IpSecMigrateInfoParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/net/IpSecMigrateInfoParcel$1;->newArray(I)[Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0
.end method
