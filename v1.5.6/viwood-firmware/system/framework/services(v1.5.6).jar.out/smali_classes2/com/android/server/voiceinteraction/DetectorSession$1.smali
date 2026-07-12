.class public Lcom/android/server/voiceinteraction/DetectorSession$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "DetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "DetectorSession"

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 284
    const-string p1, "call callback after timeout"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 287
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v0, 0x5

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    return-void

    .line 293
    :cond_0
    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$smgetInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1

    .line 294
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v3, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 298
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v0, p1, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report initialization status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 307
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 311
    :cond_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    :cond_2
    return-void
.end method
