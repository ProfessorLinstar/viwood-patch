.class public Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# instance fields
.field public final mDroppedCountSinceRateLimitActivated:I

.field public final mShouldRateLimit:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-boolean p2, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    .line 195
    iput p3, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    return-void
.end method


# virtual methods
.method public createHeader()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropped-Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public droppedCountSinceRateLimitActivated()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    return p0
.end method

.method public shouldRateLimit()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    return p0
.end method
