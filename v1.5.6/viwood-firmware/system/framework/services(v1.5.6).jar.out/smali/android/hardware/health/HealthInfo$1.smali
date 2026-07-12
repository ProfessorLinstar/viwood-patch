.class public Landroid/hardware/health/HealthInfo$1;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/HealthInfo;
    .locals 0

    .line 44
    new-instance p0, Landroid/hardware/health/HealthInfo;

    invoke-direct {p0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/HealthInfo;
    .locals 0

    .line 50
    new-array p0, p1, [Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo$1;->newArray(I)[Landroid/hardware/health/HealthInfo;

    move-result-object p0

    return-object p0
.end method
