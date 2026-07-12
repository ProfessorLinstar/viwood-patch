.class public Landroid/security/keystore/KeyAttestationApplicationId$1;
.super Ljava/lang/Object;
.source "KeyAttestationApplicationId.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/KeyAttestationApplicationId;
    .locals 0

    .line 24
    new-instance p0, Landroid/security/keystore/KeyAttestationApplicationId;

    invoke-direct {p0}, Landroid/security/keystore/KeyAttestationApplicationId;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyAttestationApplicationId;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyAttestationApplicationId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/KeyAttestationApplicationId;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keystore/KeyAttestationApplicationId;
    .locals 0

    .line 30
    new-array p0, p1, [Landroid/security/keystore/KeyAttestationApplicationId;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyAttestationApplicationId$1;->newArray(I)[Landroid/security/keystore/KeyAttestationApplicationId;

    move-result-object p0

    return-object p0
.end method
