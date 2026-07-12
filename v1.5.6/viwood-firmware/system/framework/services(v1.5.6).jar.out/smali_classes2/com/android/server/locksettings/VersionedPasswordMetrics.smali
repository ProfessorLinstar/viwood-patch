.class public Lcom/android/server/locksettings/VersionedPasswordMetrics;
.super Ljava/lang/Object;
.source "VersionedPasswordMetrics.java"


# instance fields
.field public final mMetrics:Landroid/app/admin/PasswordMetrics;

.field public final mVersion:I


# direct methods
.method public constructor <init>(ILandroid/app/admin/PasswordMetrics;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    .line 36
    iput p1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mVersion:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(ILandroid/app/admin/PasswordMetrics;)V

    return-void
.end method

.method public static deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;
    .locals 12

    .line 70
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 74
    new-instance v1, Landroid/app/admin/PasswordMetrics;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-direct/range {v1 .. v11}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    .line 77
    new-instance v0, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(ILandroid/app/admin/PasswordMetrics;)V

    return-object v0
.end method


# virtual methods
.method public getMetrics()Landroid/app/admin/PasswordMetrics;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    return-object p0
.end method

.method public serialize()[B
    .locals 2

    const/16 v0, 0x2c

    .line 53
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v1, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    iget-object p0, p0, Lcom/android/server/locksettings/VersionedPasswordMetrics;->mMetrics:Landroid/app/admin/PasswordMetrics;

    iget p0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
