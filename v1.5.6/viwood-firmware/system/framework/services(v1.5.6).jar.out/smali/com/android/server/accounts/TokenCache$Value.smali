.class public Lcom/android/server/accounts/TokenCache$Value;
.super Ljava/lang/Object;
.source "TokenCache.java"


# instance fields
.field public final expiryEpochMillis:J

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    return-void
.end method
