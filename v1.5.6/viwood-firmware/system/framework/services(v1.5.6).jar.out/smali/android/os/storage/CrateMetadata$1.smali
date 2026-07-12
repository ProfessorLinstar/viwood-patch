.class public Landroid/os/storage/CrateMetadata$1;
.super Ljava/lang/Object;
.source "CrateMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateMetadata;
    .locals 0

    .line 35
    new-instance p0, Landroid/os/storage/CrateMetadata;

    invoke-direct {p0}, Landroid/os/storage/CrateMetadata;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/storage/CrateMetadata;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/storage/CrateMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateMetadata;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/storage/CrateMetadata;
    .locals 0

    .line 41
    new-array p0, p1, [Landroid/os/storage/CrateMetadata;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/storage/CrateMetadata$1;->newArray(I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0

    return-object p0
.end method
