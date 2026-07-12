.class public Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;
.super Ljava/lang/Object;
.source "HotwordAudioStreamCopier.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCopyTaskInfos:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mResultTaskId:Ljava/lang/String;

.field public final mShouldNotifyAppOpsManager:Z

.field public final mTotalInitialAudioSizeBytes:I

.field public final mTotalMetadataSizeBytes:I

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 206
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 208
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 209
    iput p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 210
    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    return-void
.end method


# virtual methods
.method public final bestEffortPropagateError(Ljava/lang/String;)V
    .locals 6

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    .line 299
    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->-$$Nest$fgetmSource(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    .line 300
    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->-$$Nest$fgetmSink(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v0

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v2

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 302
    invoke-static/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 307
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Failed to propagate error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HotwordAudioStreamCopier"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 215
    const-string v2, " bytes NOT streamed), total metadata bundle size bytes: "

    const-string v3, " (including "

    const-string v4, "HotwordAudioStreamCopier"

    const-string v5, "android:record_audio_hotword"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copy-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 217
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    move v0, v13

    :goto_0
    if-ge v0, v11, :cond_0

    .line 219
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 221
    new-instance v14, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->-$$Nest$fgetmSource(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->-$$Nest$fgetmSink(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->-$$Nest$fgetmCopyBufferLength(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)I

    move-result v18

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v19

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v20

    invoke-direct/range {v14 .. v20}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;III)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v16

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "Streaming hotword audio to VoiceInteractionService"

    .line 227
    const-string v15, "android:record_audio_hotword"

    invoke-virtual/range {v14 .. v19}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v6

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x4

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain RECORD_AUDIO_HOTWORD permission for voice interactor with uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attributionTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v6

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v8

    iget v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    const/4 v7, 0x1

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 251
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 255
    iget v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 256
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v0

    move v0, v13

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    check-cast v7, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    .line 257
    invoke-static {v7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->-$$Nest$fgetmTotalCopiedBytes(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;)I

    move-result v7

    add-int/2addr v9, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Task was completed. Total bytes egressed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v6

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v8

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v3}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :goto_2
    :try_start_1
    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 272
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v6

    :goto_3
    if-ge v13, v7, :cond_3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    .line 273
    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->-$$Nest$fgetmTotalCopiedBytes(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;)I

    move-result v6

    add-int/2addr v9, v6

    goto :goto_3

    .line 276
    :cond_3
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v6

    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v8

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    const/4 v7, 0x3

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Task was interrupted. Total bytes egressed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v3}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 286
    :goto_4
    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v2, :cond_5

    .line 287
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v3}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->-$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_5
    throw v0
.end method
