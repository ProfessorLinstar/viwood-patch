.class public Landroid/hardware/power/stats/EnergyConsumer$1;
.super Ljava/lang/Object;
.source "EnergyConsumer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumer;
    .locals 0

    .line 21
    new-instance p0, Landroid/hardware/power/stats/EnergyConsumer;

    invoke-direct {p0}, Landroid/hardware/power/stats/EnergyConsumer;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumer;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 0

    .line 27
    new-array p0, p1, [Landroid/hardware/power/stats/EnergyConsumer;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/EnergyConsumer$1;->newArray(I)[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0

    return-object p0
.end method
