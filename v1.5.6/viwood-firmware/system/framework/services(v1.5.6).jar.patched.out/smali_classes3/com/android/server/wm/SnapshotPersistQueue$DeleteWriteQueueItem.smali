.class public Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final mId:I

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 529
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 530
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteWriteQueueItem{ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write()V
    .locals 5

    .line 535
    const-string v0, "DeleteWriteQueueItem"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->mId:I

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v0, v3, v4, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 537
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
