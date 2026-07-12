.class public Landroid/gsi/GsiProgress$1;
.super Ljava/lang/Object;
.source "GsiProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiProgress;
    .locals 0

    .line 24
    new-instance p0, Landroid/gsi/GsiProgress;

    invoke-direct {p0}, Landroid/gsi/GsiProgress;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/gsi/GsiProgress;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/gsi/GsiProgress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gsi/GsiProgress;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/gsi/GsiProgress;
    .locals 0

    .line 30
    new-array p0, p1, [Landroid/gsi/GsiProgress;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/gsi/GsiProgress$1;->newArray(I)[Landroid/gsi/GsiProgress;

    move-result-object p0

    return-object p0
.end method
