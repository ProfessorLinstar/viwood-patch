.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
.super Ljava/lang/Object;
.source "D2DConnectionContextV1.java"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 34
    const-string v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Path isn\'t set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    return-void
.end method

.method private static native decode_message_from_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/CryptoException;
        }
    .end annotation
.end method

.method private static native encode_message_to_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native get_session_unique(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method


# virtual methods
.method public decodeMessageFromPeer([B[B)[B
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decode_message_from_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encodeMessageToPeer([B[B)[B
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encode_message_to_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSessionUnique()[B
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->get_session_unique(J)[B

    move-result-object p0

    return-object p0
.end method
