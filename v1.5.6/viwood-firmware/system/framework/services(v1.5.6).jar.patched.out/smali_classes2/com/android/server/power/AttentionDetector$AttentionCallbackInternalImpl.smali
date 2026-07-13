.class final Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionDetector.java"


# instance fields
.field public final mId:I

.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;I)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 398
    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check attention: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AttentionDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmRequested(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSuccess(IJ)V
    .locals 1

    .line 403
    const-string p2, "AttentionDetector"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSuccess: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget v0, p3, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    if-ne p2, v0, :cond_2

    invoke-static {p3}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmRequested(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 408
    iget-object p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p2}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmLock(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 409
    :try_start_0
    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p3}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmWakefulness(Lcom/android/server/power/AttentionDetector;)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 411
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 414
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmOnUserAttention(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 416
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$mresetConsecutiveExtensionCount(Lcom/android/server/power/AttentionDetector;)V

    .line 418
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
