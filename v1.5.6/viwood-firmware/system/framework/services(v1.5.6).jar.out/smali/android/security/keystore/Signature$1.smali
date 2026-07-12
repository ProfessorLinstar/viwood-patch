.class public Landroid/security/keystore/Signature$1;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/Signature;
    .locals 0

    .line 26
    new-instance p0, Landroid/security/keystore/Signature;

    invoke-direct {p0}, Landroid/security/keystore/Signature;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/security/keystore/Signature;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroid/security/keystore/Signature$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/Signature;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keystore/Signature;
    .locals 0

    .line 32
    new-array p0, p1, [Landroid/security/keystore/Signature;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroid/security/keystore/Signature$1;->newArray(I)[Landroid/security/keystore/Signature;

    move-result-object p0

    return-object p0
.end method
