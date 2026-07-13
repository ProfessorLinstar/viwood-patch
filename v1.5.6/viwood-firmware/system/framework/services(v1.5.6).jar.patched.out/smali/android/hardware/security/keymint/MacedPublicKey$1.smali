.class public Landroid/hardware/security/keymint/MacedPublicKey$1;
.super Ljava/lang/Object;
.source "MacedPublicKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 0

    .line 19
    new-instance p0, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {p0}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/MacedPublicKey;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/MacedPublicKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/keymint/MacedPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 0

    .line 25
    new-array p0, p1, [Landroid/hardware/security/keymint/MacedPublicKey;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/MacedPublicKey$1;->newArray(I)[Landroid/hardware/security/keymint/MacedPublicKey;

    move-result-object p0

    return-object p0
.end method
