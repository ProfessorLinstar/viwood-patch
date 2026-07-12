.class public Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 227
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_1
    move v1, v3

    goto :goto_3

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    if-eqz v1, :cond_3

    .line 237
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/SnapshotPersistQueue;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    const/4 v2, 0x1

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 240
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 245
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_1

    :cond_3
    :goto_2
    move-object v2, v1

    goto :goto_1

    .line 250
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0x64

    .line 256
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 261
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 262
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 264
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    :catch_0
    :try_start_3
    monitor-exit v1

    goto/16 :goto_0

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 250
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
