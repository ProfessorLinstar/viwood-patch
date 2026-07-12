.class public Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;
.super Ljava/lang/Object;
.source "AttestationVerificationManagerService.java"


# instance fields
.field public final mData:Ljava/util/ArrayDeque;

.field public mEventsLogged:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    return-void
.end method


# virtual methods
.method public dumpTo(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->reversed()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;

    .line 175
    const-string v2, "Verification #%d [%s]"

    iget v3, v1, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventNumber:I

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventTimeMs:J

    .line 177
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 179
    invoke-virtual {v1, p1}, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->dumpTo(Landroid/util/IndentingPrintWriter;)V

    .line 180
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 182
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logAttempt(Lcom/android/server/security/AttestationVerificationManagerService$DumpData;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 163
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    .line 164
    iput v1, p1, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventNumber:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventTimeMs:J

    .line 168
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
