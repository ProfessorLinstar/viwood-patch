.class public Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;
.super Ljava/lang/Object;
.source "MultiRateLimiter.java"


# instance fields
.field public final mLimit:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(ILjava/time/Duration;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mLimit:I

    .line 191
    iput-object p2, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mWindowSize:Ljava/time/Duration;

    return-void
.end method

.method public static create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;
    .locals 1

    .line 199
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-direct {v0, p0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method
