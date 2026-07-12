.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
.super Landroid/os/Handler;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    .line 363
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 395
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->capacity()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 403
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 408
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 403
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    :goto_2
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    :cond_1
    throw p1

    .line 413
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sub-long/2addr v0, v2

    .line 388
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p0

    const-string p1, "DELETE FROM app_op_accesses WHERE access_time < ?"

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_4
    :try_start_5
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object p1

    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 373
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;

    move-result-object v0

    .line 374
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 375
    :try_start_7
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 377
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 381
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void

    :catchall_2
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 374
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 377
    :goto_3
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetDB_WRITE_INTERVAL()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 381
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p0

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 384
    :cond_6
    throw p1
.end method

.method public removeAllPendingMessages()V
    .locals 1

    const/4 v0, 0x1

    .line 418
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 419
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 420
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
