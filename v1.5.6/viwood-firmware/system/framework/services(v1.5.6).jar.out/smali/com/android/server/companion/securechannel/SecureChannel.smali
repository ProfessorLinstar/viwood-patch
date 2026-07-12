.class public Lcom/android/server/companion/securechannel/SecureChannel;
.super Ljava/lang/Object;
.source "SecureChannel.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlias:Ljava/lang/String;

.field public final mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

.field public mClientInit:[B

.field public mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

.field public final mFlags:I

.field public mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

.field public final mHandshakeLock:Ljava/lang/Object;

.field public volatile mInProgress:Z

.field public final mInput:Ljava/io/InputStream;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPreSharedKey:[B

.field public mPskVerified:Z

.field public mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

.field public volatile mStopped:Z

.field public mVerificationResult:I

.field public final mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;


# direct methods
.method public static synthetic $r8$lambda$iCAm1ptJuD73fs84njR5KGHZPAU(Lcom/android/server/companion/securechannel/SecureChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->lambda$start$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;Landroid/content/Context;I)V
    .locals 7

    .line 115
    new-instance v5, Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-direct {v5, p4, p5}, Lcom/android/server/companion/securechannel/AttestationVerifier;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 127
    iput-object p2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 128
    iput-object p3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 129
    iput-object p4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 130
    iput-object p5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    .line 131
    iput p6, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mFlags:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->stop()V

    .line 188
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Closing secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 193
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->cleanUp(Ljava/lang/String;)V

    return-void
.end method

.method public final compareByteArray([B[B)I
    .locals 3

    const/4 p0, 0x0

    if-ne p1, p2, :cond_0

    return p0

    .line 599
    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 600
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0

    :cond_1
    move v0, p0

    .line 602
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 603
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_2

    sub-int/2addr v1, v2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public final completeHandshake([B)V
    .locals 3

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->handleHandshakeCollision([B)[B

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_3

    .line 435
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 436
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->forResponder()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 439
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 440
    const-string v2, "Receiving Ukey2 Client Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_1

    .line 446
    const-string p1, "Sending Ukey2 Server Init message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 449
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v2

    .line 448
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    if-eqz v0, :cond_2

    .line 453
    const-string p1, "Receiving Ukey2 Client Finish message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    goto :goto_0

    .line 459
    :cond_3
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 460
    const-string v2, "Receiving Ukey2 Server Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_5

    .line 466
    const-string p1, "Sending Ukey2 Client Finish message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 472
    :goto_0
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->isHandshakeComplete()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 473
    sget-boolean p1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 474
    const-string p1, "Ukey2 Handshake completed successfully"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    return-void

    .line 478
    :cond_7
    const-string p0, "Failed to complete Ukey2 Handshake"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ukey2 Handshake did not complete as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final constructHandshakeInitMessage([B)[B
    .locals 2

    .line 576
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 577
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-virtual {v1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 578
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B
    .locals 2

    .line 584
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 585
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne p1, v0, :cond_0

    const-string p1, "Initiator"

    goto :goto_0

    :cond_0
    const-string p1, "Responder"

    .line 586
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 587
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 588
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 590
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public establishSecureConnection()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    .line 217
    const-string p0, "Channel is already secure."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    if-eqz v0, :cond_1

    .line 221
    const-string p0, "Channel has already started establishing secure connection."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 226
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->initiateHandshake()V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 229
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Failed to initiate handshake protocol."

    invoke-direct {v0, v1, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final exchangeAttestation()V
    .locals 5

    .line 519
    iget v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_0

    .line 520
    const-string p0, "Remote attestation was already verified."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_0
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 526
    const-string v2, "Exchanging device attestation."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->generateAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v2

    .line 532
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->generateAttestationKeyPair(Ljava/lang/String;[B)V

    .line 533
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->getEncodedCertificateChain(Ljava/lang/String;)[B

    move-result-object v2

    .line 534
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 535
    invoke-virtual {p0, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 538
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v3, v4, :cond_3

    .line 539
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 540
    :cond_3
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 541
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v3

    .line 538
    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 542
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/securechannel/AttestationVerifier;->verifyAttestation([B[B)I

    move-result v2

    iput v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const/4 v2, 0x4

    .line 545
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 546
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 547
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 548
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 549
    invoke-virtual {p0, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 551
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_6

    .line 555
    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_5

    if-eqz v0, :cond_4

    .line 560
    const-string p0, "Remote attestation was successfully verified."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 556
    :cond_5
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify remote attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_6
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Remote device failed to verify local attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final exchangeAuthentication()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangePreSharedKey()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAttestation()V

    :cond_1
    return-void
.end method

.method public final exchangeHandshake()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    if-eqz v0, :cond_0

    .line 411
    const-string p0, "CDM_SecureChannel"

    const-string v0, "Ukey2 handshake is already completed."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 422
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->completeHandshake([B)V

    .line 424
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final exchangePreSharedKey()V
    .locals 5

    .line 497
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    .line 498
    const-string v2, "Exchanging pre-shared keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 501
    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v3, v4, :cond_1

    .line 503
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 502
    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 506
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 513
    const-string p0, "The pre-shared key was successfully authenticated."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 509
    :cond_3
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify the hash of pre-shared key."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateAlias()Ljava/lang/String;
    .locals 1

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "secure-channel-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->aliasExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0
.end method

.method public final handleHandshakeCollision([B)[B
    .locals 2

    .line 372
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 375
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 379
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 383
    :cond_1
    const-string p1, "Detected a Ukey2 handshake role collision. Negotiating a role."

    const-string v0, "CDM_SecureChannel"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->compareByteArray([B[B)I

    move-result p1

    if-gez p1, :cond_2

    .line 387
    const-string p1, "Assigned: Responder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    return-object v1

    .line 391
    :cond_2
    const-string p1, "Assigned: Initiator; Discarding received Client Init"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 402
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    .line 399
    :cond_3
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;

    const-string p1, "Failed to resolve Ukey2 handshake role collision."

    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final initiateHandshake()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    if-eqz v1, :cond_0

    .line 349
    const-string p0, "CDM_SecureChannel"

    const-string v1, "Ukey2 handshake is already completed."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 353
    :cond_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 354
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->forInitiator()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 355
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 358
    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 359
    const-string v1, "CDM_SecureChannel"

    const-string v2, "Sending Ukey2 Client Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    sget-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 362
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSecured()Z
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isStopped()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    return p0
.end method

.method public final synthetic lambda$start$0()V
    .locals 3

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeHandshake()V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAuthentication()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureConnection()V

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->receiveSecureMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    iget-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    const-string v1, "CDM_SecureChannel"

    const-string v2, "Secure channel encountered an error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    .line 166
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B
    .locals 7

    .line 272
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Waiting to receive next secure message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "CDM_SecureChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting to receive next "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    monitor-enter v0

    const/4 v1, 0x6

    .line 284
    :try_start_0
    new-array v1, v1, [B

    .line 285
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v2, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 286
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 288
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_4

    .line 296
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    .line 305
    new-array v2, v2, [B

    .line 306
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 307
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :try_start_1
    new-array v2, v2, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 319
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 320
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 323
    :cond_2
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decodeMessageFromPeer([B[B)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p1

    .line 314
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 315
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Payload is too large."

    invoke-direct {p0, v1, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 297
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 298
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected message type. Expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; Found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v2}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Skipping rest of data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_4
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 292
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string p1, "Secure channel version mismatch. Currently on version 1. Skipping rest of data."

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final receiveSecureMessage()V
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_0

    .line 256
    const-string v0, "Received a message without a secure connection. Message will be ignored."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not secure."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 263
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    .line 264
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureMessageReceived([B)V
    :try_end_0
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 266
    const-string v0, "Ignoring received message."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    monitor-enter v0

    const/4 v1, 0x6

    .line 330
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 331
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v2

    .line 332
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 334
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p1, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encodeMessageToPeer([B[B)[B

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 337
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 338
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    .line 339
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 338
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 342
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 343
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendSecureMessage([B)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to encrypt data."

    invoke-direct {p1, v0, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 241
    :cond_0
    const-string p0, "CDM_SecureChannel"

    const-string p1, "Cannot send a message without a secure connection."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Channel is not secured yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 2

    .line 138
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Starting secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/securechannel/SecureChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 175
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Stopping secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    return-void
.end method
