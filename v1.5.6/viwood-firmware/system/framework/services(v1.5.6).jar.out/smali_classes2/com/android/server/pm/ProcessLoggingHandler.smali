.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "ProcessLoggingHandler.java"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLoggingInfo:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$AvUERcGr5gHBcuRst_1sEcdv8JM(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->lambda$enqueueProcessChecksum$0(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJ1-rR95R1RTlca2CWtk9awMWZw(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->lambda$enqueueSecurityLogEvent$1(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public enqueueProcessChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .locals 0

    .line 133
    new-instance p2, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public invalidateBaseApkHash(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$enqueueProcessChecksum$0(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method

.method public final synthetic lambda$enqueueSecurityLogEvent$1(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logAppProcessStart(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 11

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string/jumbo v2, "startTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    const-string/jumbo v2, "processName"

    move-object/from16 v3, p5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "uid"

    move/from16 v3, p6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v2, "seinfo"

    move-object/from16 v3, p7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "pid"

    move/from16 v3, p8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    .line 69
    const-string v0, "No APK"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    if-nez v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 81
    new-instance v3, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-direct {v3}, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;-><init>()V

    .line 82
    iget-object v5, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v10, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 85
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-enter v10

    .line 89
    :try_start_1
    iget-object v0, v10, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, v10, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 91
    monitor-exit v10

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 94
    :cond_3
    iget-object v0, v10, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_4

    goto :goto_2

    .line 104
    :cond_4
    :try_start_2
    new-instance v6, Lcom/android/server/pm/ProcessLoggingHandler$1;

    invoke-direct {v6, p0, v10}, Lcom/android/server/pm/ProcessLoggingHandler$1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v9, p0

    move-object v0, p2

    move-object v1, p4

    .line 104
    invoke-virtual/range {v0 .. v9}, Landroid/content/pm/PackageManagerInternal;->requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 114
    const-string v1, "ProcessLoggingHandler"

    const-string/jumbo v2, "requestChecksums() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v10, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->enqueueProcessChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    :goto_2
    return-void

    .line 95
    :goto_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 85
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    .line 177
    const-string/jumbo p0, "startTimestamp"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 178
    const-string/jumbo p0, "processName"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string/jumbo p0, "uid"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 180
    const-string/jumbo v3, "seinfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    const-string/jumbo v3, "pid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, p2

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33455

    .line 182
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .locals 4

    if-eqz p2, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 140
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 141
    const-string v2, "%02x"

    aget-byte v3, p2, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 145
    :cond_1
    const-string p2, "Failed to count APK hash"

    .line 149
    :goto_1
    monitor-enter p1

    .line 150
    :try_start_0
    iget-object v0, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 153
    :cond_2
    iput-object p2, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    const/4 v1, 0x0

    .line 156
    iput-object v1, p1, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 157
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 161
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void

    .line 157
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public processChecksums(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;Ljava/util/List;)V
    .locals 5

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 121
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApkChecksum;

    .line 122
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 123
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const-string p2, "ProcessLoggingHandler"

    const-string/jumbo v0, "requestChecksums() failed to return SHA256, see logs for details."

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method
