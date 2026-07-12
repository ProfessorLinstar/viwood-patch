.class public Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mWcAwaitingCommit:Landroid/util/ArraySet;

.field public ran:Z

.field public final synthetic this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final synthetic val$merged:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$mergedTxId:J


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iput-wide p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$mergedTxId:J

    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$merged:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->mWcAwaitingCommit:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    return-void
.end method


# virtual methods
.method public onCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    invoke-interface {v0}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionCommitted()V

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$fgetmTraceName(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-committed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmHandler(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    if-eqz v1, :cond_1

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 255
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    .line 256
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->mWcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->mWcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 260
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->mWcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 261
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public run()V
    .locals 6

    .line 270
    const-string v0, "onTransactionCommitTimeout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 271
    const-string v0, "BLASTSyncEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WM sent Transaction (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v4, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v4, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$mergedTxId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") to organizer, but never received commit callback. Application ANR likely to follow."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    invoke-interface {v1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionCommitTimeout()V

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$merged:Landroid/view/SurfaceControl$Transaction;

    iget-wide v2, v1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 277
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->onCommitted(Landroid/view/SurfaceControl$Transaction;)V

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
