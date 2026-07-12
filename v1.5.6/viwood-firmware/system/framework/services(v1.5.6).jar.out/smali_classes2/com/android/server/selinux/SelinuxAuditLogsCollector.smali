.class public Lcom/android/server/selinux/SelinuxAuditLogsCollector;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsCollector.java"


# static fields
.field static final CONFIG_SELINUX_AUDIT_DOMAIN:Ljava/lang/String; = "selinux_audit_domain"

.field public static final DEBUG:Z

.field static final DEFAULT_SELINUX_AUDIT_DOMAIN:Ljava/lang/String; = "no_match^"

.field static final SELINUX_MATCHER:Ljava/util/regex/Matcher;


# instance fields
.field public final mAuditDomainSupplier:Ljava/util/function/Supplier;

.field public mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

.field mLastWrite:Ljava/time/Instant;

.field public final mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuditDomainSupplier(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mAuditDomainSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/QuotaLimiter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/RateLimiter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "SelinuxAuditLogs"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    .line 53
    const-string v0, "^.*\\bavc:\\s+(?<denial>.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V
    .locals 2

    .line 75
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector-IA;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;-><init>(Ljava/util/function/Supplier;Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mAuditDomainSupplier:Ljava/util/function/Supplier;

    .line 69
    iput-object p2, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 70
    iput-object p3, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    .line 71
    new-instance p1, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-direct {p1, p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    return-void
.end method


# virtual methods
.method public collect(I)Z
    .locals 3

    .line 193
    const-string v0, "SelinuxAuditLogs"

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->reset()V

    const/4 v1, 0x0

    .line 195
    :try_start_0
    filled-new-array {p1}, [I

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-static {p1, v2}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {p1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 216
    sget-boolean p1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getAuditsWritten()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Written %d logs"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 211
    :goto_0
    const-string p1, "Error reading event logs"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 197
    :goto_1
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/selinux/QuotaExceededException;

    if-eqz v2, :cond_2

    .line 198
    sget-boolean v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    .line 200
    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getAuditsWritten()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 199
    const-string v2, "Running out of quota after %d logs."

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 204
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/server/selinux/QuotaExceededException;

    throw p0

    .line 205
    :cond_2
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_3

    .line 206
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {p1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    return v1

    .line 209
    :cond_3
    throw p1
.end method
