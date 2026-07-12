.class public interface abstract Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# virtual methods
.method public onReadyTimeout()V
    .locals 0

    .line 0
    return-void
.end method

.method public onReadyTraceEnd(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x20

    .line 107
    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onReadyTraceStart(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x20

    .line 103
    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public onTransactionCommitTimeout()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTransactionCommitted()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
.end method
