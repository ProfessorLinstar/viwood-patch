.class public Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;
.super Ljava/util/AbstractCollection;
.source "SelinuxAuditLogsCollector.java"


# instance fields
.field public mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

.field public mAuditsWritten:I

.field public mLatestTimestamp:Ljava/time/Instant;

.field public final synthetic this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return-void
.end method


# virtual methods
.method public add(Landroid/util/EventLog$Event;)Z
    .locals 13

    .line 136
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v0, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 140
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v1, v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    return v2

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object p1

    .line 145
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    return v2

    .line 148
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 149
    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    const-string v3, "denial"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->reset(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    invoke-virtual {p1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->build()Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmQuotaLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/QuotaLimiter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/selinux/QuotaLimiter;->acquire()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmRateLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/RateLimiter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/selinux/RateLimiter;->acquire()V

    .line 164
    iget-boolean v4, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    iget-object v5, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    iget-object v8, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    iget-object v10, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    iget-boolean v12, p1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    const/16 v3, 0x31f

    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ[Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;Z)V

    .line 176
    iget p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    .line 177
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    :cond_4
    return v2

    .line 160
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Lcom/android/server/selinux/QuotaExceededException;

    invoke-direct {p1}, Lcom/android/server/selinux/QuotaExceededException;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 137
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p1, Landroid/util/EventLog$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->add(Landroid/util/EventLog$Event;)Z

    move-result p0

    return p0
.end method

.method public getAuditsWritten()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return p0
.end method

.method public getLatestTimestamp()Ljava/time/Instant;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    .line 126
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    .line 112
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v0, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    .line 113
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmAuditDomainSupplier(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    return-void
.end method

.method public size()I
    .locals 0

    .line 131
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
