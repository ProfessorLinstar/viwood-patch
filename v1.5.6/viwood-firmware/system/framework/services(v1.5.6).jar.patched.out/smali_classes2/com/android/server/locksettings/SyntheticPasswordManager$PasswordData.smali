.class public Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public credentialType:I

.field public passwordHandle:[B

.field public pinLength:I

.field public salt:[B

.field public scryptLogN:B

.field public scryptLogP:B

.field public scryptLogR:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 2

    .line 375
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    const/16 v1, 0xb

    .line 376
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    const/4 v1, 0x3

    .line 377
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    const/4 v1, 0x1

    .line 378
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 379
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 380
    iput p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    const/16 p0, 0x10

    .line 381
    invoke-static {p0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 4

    .line 395
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 396
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 397
    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 411
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-short p0, p0

    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 412
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 413
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 414
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 415
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 416
    new-array p0, p0, [B

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 417
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 418
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-lez p0, :cond_0

    .line 420
    new-array p0, p0, [B

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 421
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 423
    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 425
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/4 v2, 0x4

    if-lt p0, v2, :cond_1

    .line 426
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    return-object v0

    :cond_1
    const/4 p0, -0x1

    .line 428
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    return-object v0
.end method

.method public static isBadFormatFromAndroid14Beta([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 391
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public toBytes()[B
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xf

    .line 446
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 444
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/16 v3, -0x8000

    if-lt v1, v3, :cond_2

    const/16 v3, 0x7fff

    if-gt v1, v3, :cond_2

    .line 451
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 452
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 453
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 455
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 458
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 459
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 463
    :goto_1
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
