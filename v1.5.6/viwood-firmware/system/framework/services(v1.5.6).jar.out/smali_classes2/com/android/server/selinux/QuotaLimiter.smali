.class public Lcom/android/server/selinux/QuotaLimiter;
.super Ljava/lang/Object;
.source "QuotaLimiter.java"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurrentWindow:J

.field public mMaxPermits:I

.field public mPermitsGranted:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 54
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/selinux/QuotaLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 45
    iput-object p2, p0, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    .line 46
    iput p3, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 4

    .line 63
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iget-object v1, p0, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 64
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    .line 65
    invoke-virtual {v0, v1}, Ljava/time/Duration;->dividedBy(Ljava/time/Duration;)J

    move-result-wide v0

    .line 66
    iget-wide v2, p0, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 67
    iput-wide v0, p0, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    .line 68
    iput v3, p0, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    iget v1, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    return v1

    :cond_1
    return v3
.end method

.method public setMaxPermits(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    return-void
.end method
