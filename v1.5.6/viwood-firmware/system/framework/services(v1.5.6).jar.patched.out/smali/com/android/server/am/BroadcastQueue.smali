.class public abstract Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/am/BroadcastHistory;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;


# direct methods
.method public static synthetic $r8$lambda$6U3hn8U3Ba60Eiz62EmylzEwrSc(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueue;->lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    .line 59
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logv(Ljava/lang/String;)V
    .locals 1

    .line 67
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    .line 63
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)I
    .locals 4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-wide/16 v1, 0x40

    .line 78
    const-string v3, "BroadcastQueue"

    invoke-static {v1, v2, v3, p0, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return v0
.end method

.method public static traceEnd(I)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 84
    const-string v2, "BroadcastQueue"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
.end method

.method public abstract describeStateLocked()Ljava/lang/String;
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public dumpToDropBoxLocked(Ljava/lang/String;)V
    .locals 2

    .line 263
    const-class v0, Lcom/android/server/DropBoxManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerInternal;

    new-instance v1, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;)V

    const/4 p0, 0x2

    const-string p1, "broadcast_queue_dump"

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/DropBoxManagerInternal;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method

.method public abstract enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
.end method

.method public abstract forceDelayBroadcastDelivery(Ljava/lang/String;J)V
.end method

.method public abstract getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
.end method

.method public abstract isIdleLocked()Z
.end method

.method public final synthetic lambda$dumpToDropBoxLocked$0(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 13

    .line 264
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 265
    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    const-string v0, "Message: "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p2

    .line 268
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z

    .line 269
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 264
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public abstract onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract start(Landroid/content/ContentResolver;)V
.end method

.method public abstract waitForBarrier(Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
.end method

.method public abstract waitForIdle(Ljava/io/PrintWriter;)V
.end method
