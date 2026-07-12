.class public Landroid/hardware/health/DiskStats$1;
.super Ljava/lang/Object;
.source "DiskStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/DiskStats;
    .locals 0

    .line 28
    new-instance p0, Landroid/hardware/health/DiskStats;

    invoke-direct {p0}, Landroid/hardware/health/DiskStats;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/DiskStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/DiskStats;
    .locals 0

    .line 34
    new-array p0, p1, [Landroid/hardware/health/DiskStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats$1;->newArray(I)[Landroid/hardware/health/DiskStats;

    move-result-object p0

    return-object p0
.end method
