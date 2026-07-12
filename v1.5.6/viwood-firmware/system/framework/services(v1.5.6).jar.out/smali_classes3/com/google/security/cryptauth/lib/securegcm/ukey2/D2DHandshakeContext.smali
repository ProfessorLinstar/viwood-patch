.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;
.super Ljava/lang/Object;
.source "D2DHandshakeContext.java"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    filled-new-array {v0}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 62
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 63
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 64
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_0
    sget-object p2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->create_context(Z[I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    return-void

    .line 60
    :cond_2
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;

    const-string p1, "Need more than one supported next protocol!"

    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native create_context(Z[I)J
.end method

.method public static forInitiator()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;
    .locals 2

    .line 76
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    return-object v0
.end method

.method public static forResponder()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;
    .locals 2

    .line 96
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    return-object v0
.end method

.method private static native get_next_handshake_message(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native is_handshake_complete(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native parse_handshake_message(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method

.method private static native to_connection_context(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method


# virtual methods
.method public getNextHandshakeMessage()[B
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->get_next_handshake_message(J)[B

    move-result-object p0

    return-object p0
.end method

.method public isHandshakeComplete()Z
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->is_handshake_complete(J)Z

    move-result p0

    return p0
.end method

.method public parseHandshakeMessage([B)V
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parse_handshake_message(J[B)V

    return-void
.end method

.method public toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
    .locals 3

    .line 172
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    iget-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->to_connection_context(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;-><init>(J)V

    return-object v0
.end method
