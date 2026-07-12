.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;
.super Ljava/lang/Exception;
.source "AlertException.java"


# instance fields
.field private final alertMessageToSend:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;->alertMessageToSend:[B

    return-void
.end method
