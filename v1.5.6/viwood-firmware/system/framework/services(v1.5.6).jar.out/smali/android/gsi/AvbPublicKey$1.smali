.class public Landroid/gsi/AvbPublicKey$1;
.super Ljava/lang/Object;
.source "AvbPublicKey.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gsi/AvbPublicKey;
    .locals 0

    .line 20
    new-instance p0, Landroid/gsi/AvbPublicKey;

    invoke-direct {p0}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/gsi/AvbPublicKey;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/gsi/AvbPublicKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gsi/AvbPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/gsi/AvbPublicKey;
    .locals 0

    .line 26
    new-array p0, p1, [Landroid/gsi/AvbPublicKey;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/gsi/AvbPublicKey$1;->newArray(I)[Landroid/gsi/AvbPublicKey;

    move-result-object p0

    return-object p0
.end method
