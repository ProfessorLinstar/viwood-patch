.class public final Lcom/android/server/selinux/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mNextPermit:Ljava/time/Instant;

.field public final mWindow:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 43
    iput-object p1, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 45
    iput-object p2, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, v0, p1}, Lcom/android/server/selinux/RateLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    invoke-virtual {v1, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    iget-object v2, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    invoke-virtual {v1, v0, v2}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 65
    iget-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    iget-object v1, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    return-void
.end method

.method public tryAcquire()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    invoke-virtual {v1, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    const/4 p0, 0x1

    return p0
.end method
