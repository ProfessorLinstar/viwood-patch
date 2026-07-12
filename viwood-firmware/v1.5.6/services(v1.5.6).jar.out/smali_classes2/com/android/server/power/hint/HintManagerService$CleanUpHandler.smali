.class public final Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
.super Landroid/os/Handler;
.source "HintManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 1095
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I
    .locals 11

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isForcePaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1201
    :cond_0
    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 1202
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 1203
    array-length v4, p3

    if-ne v4, v3, :cond_1

    .line 1204
    aget v4, p3, v1

    array-length v5, v2

    add-int/2addr v4, v5

    aput v4, p3, v1

    .line 1206
    :cond_1
    new-instance p3, Landroid/util/IntArray;

    array-length v4, v2

    invoke-direct {p3, v4}, Landroid/util/IntArray;-><init>(I)V

    move v4, v1

    .line 1207
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 1208
    aget v5, v2, v4

    .line 1209
    invoke-virtual {p2, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eqz v6, :cond_2

    .line 1210
    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 1211
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    .line 1217
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v6}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1218
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 1219
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    .line 1222
    :try_start_1
    invoke-static {v0, v5}, Landroid/os/Process;->checkTid(II)V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    .line 1224
    :cond_3
    invoke-static {v5}, Landroid/os/Process;->checkPid(I)V

    .line 1226
    :goto_1
    invoke-virtual {p2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1231
    :goto_2
    const-string v8, "HintManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception when checking TID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " under PID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "(isolated: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    invoke-virtual {p3, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    :catch_1
    const/4 v6, 0x2

    .line 1229
    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1219
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1237
    :cond_5
    array-length p0, v2

    invoke-virtual {p3}, Landroid/util/IntArray;->size()I

    move-result p2

    sub-int/2addr p0, p2

    if-lez p0, :cond_a

    .line 1239
    monitor-enter p1

    .line 1242
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object p2

    .line 1243
    array-length v0, p2

    array-length v4, v2

    if-eq v0, v4, :cond_6

    .line 1244
    const-string p2, "HintManagerService"

    const-string p3, "Skipped cleaning up the session as new tids are added"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    monitor-exit p1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 1247
    :cond_6
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 1248
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1249
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1250
    const-string p2, "HintManagerService"

    const-string p3, "Skipped cleaning up the session as new tids are updated"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    monitor-exit p1

    goto :goto_6

    .line 1253
    :cond_7
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaned up "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid tids for session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " with UID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\tbefore: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tafter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    .line 1258
    array-length p3, p2

    if-nez p3, :cond_8

    .line 1259
    iput-boolean v3, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 1260
    iget-boolean p2, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz p2, :cond_9

    .line 1261
    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mpause(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V

    goto :goto_4

    .line 1264
    :cond_8
    invoke-static {p1, p2, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$msetThreadsInternal(Lcom/android/server/power/hint/HintManagerService$AppHintSession;[IZ)V

    .line 1266
    :cond_9
    :goto_4
    monitor-exit p1

    goto :goto_6

    :goto_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_a
    :goto_6
    return p0

    :cond_b
    :goto_7
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1100
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 1101
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1103
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 1104
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1105
    const-string p0, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate messages for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1108
    :cond_0
    const-string v0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starts cleaning for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1110
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result v6

    .line 1115
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1117
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_5

    .line 1118
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 1121
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1122
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    .line 1123
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1124
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_1
    if-ltz v7, :cond_2

    .line 1125
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1128
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array v3, p1, [J

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array v2, p1, [I

    .line 1131
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 1132
    new-array v5, v4, [I

    .line 1133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_2
    if-ltz v7, :cond_4

    .line 1134
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 1135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1137
    :try_start_1
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->cleanUpSession(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Landroid/util/SparseIntArray;[I)I

    move-result v10

    .line 1138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v8

    .line 1139
    aput v10, v2, v7

    .line 1140
    aput-wide v11, v3, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1142
    :catch_0
    const-string v8, "HintManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clean up session "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v4, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " for UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1146
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 p1, 0x0

    aget v5, v5, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;->logCleanUpMetrics(I[I[JIIZ)V

    goto :goto_6

    .line 1119
    :cond_5
    :goto_4
    :try_start_2
    monitor-exit v2

    return-void

    .line 1128
    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    :goto_6
    return-void
.end method

.method public final logCleanUpMetrics(I[I[JIIZ)V
    .locals 11

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    move v8, v0

    move v0, v1

    move v7, v0

    .line 1155
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1156
    aget v2, p2, v0

    add-int/2addr v7, v2

    .line 1157
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v7, :cond_2

    .line 1160
    invoke-static {p3}, Ljava/util/Arrays;->sort([J)V

    const-wide/16 v2, 0x0

    move p2, v1

    .line 1162
    :goto_1
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 1163
    aget-wide v4, p3, p2

    add-long/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1165
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1166
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-wide v5, p3, v0

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1168
    aget-wide v0, p3, v1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1169
    array-length v1, p3

    int-to-long v9, v1

    div-long/2addr v2, v9

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1171
    array-length v2, p3

    int-to-double v2, v2

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v9

    double-to-int v2, v2

    aget-wide v2, p3, v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-int p0, v2

    const/16 v2, 0x347

    move v3, p1

    move v9, p4

    move/from16 v6, p5

    move/from16 v10, p6

    .line 1173
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIZ)V

    .line 1176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tid found for UID"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "us:\n\tcount( session: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalTid: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " maxInvalidTid: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalInvalidTid: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\n\ttime per session( min: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "us max: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "us avg: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "us 90%: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "us)\n\tisForeground: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HintManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
