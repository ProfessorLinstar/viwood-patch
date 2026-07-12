.class public Lcom/android/server/voiceinteraction/DetectorSession$3;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "DetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$audioSource:Ljava/io/InputStream;

.field public final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$shouldCheckPermissionsAndAppOpsOnDetected:Z

.field public final synthetic val$shouldCloseAudioStreamWithDelayOnDetect:Z


# direct methods
.method public static synthetic $r8$lambda$9dnL8v0HUaGmotfzgJiBvoeQ1JE(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x2

    .line 614
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mZKyEsfTI7o0TcutMcIgxm29kL4(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x2

    .line 647
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    iput-boolean p5, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 7

    .line 638
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 641
    invoke-static {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v3, 0xb

    .line 640
    invoke-static {v1, v3, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 644
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-interface {v1, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 653
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 655
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionsForDataDelivery()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 657
    :try_start_2
    const-string v1, "DetectorSession"

    const-string v2, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 663
    invoke-static {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v2, 0xd

    .line 662
    invoke-static {p1, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v2, "Security exception occurs in #onDetected method"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    :try_start_4
    monitor-exit v0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 673
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 674
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    :cond_1
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    .line 683
    invoke-virtual {v1, p1, v2}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 708
    :try_start_6
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 716
    :try_start_7
    const-string v1, "DetectorSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_2

    .line 720
    const-string p0, "DetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_2
    monitor-exit v0

    return-void

    :catch_2
    move-exception p1

    .line 713
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 714
    throw p1

    :catch_3
    move-exception p1

    .line 687
    const-string v1, "DetectorSession"

    const-string v2, "Ignoring #onDetected due to a IOException"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 694
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v2, "Copy audio stream failure."

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 702
    :try_start_9
    monitor-exit v0

    :goto_2
    return-void

    :catch_4
    move-exception p1

    .line 699
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 700
    throw p1

    .line 722
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 7

    .line 606
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 609
    invoke-static {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->-$$Nest$mgetDetectorType(Lcom/android/server/voiceinteraction/DetectorSession;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v3, 0xc

    .line 608
    invoke-static {v1, v3, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 612
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v3}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-interface {v1, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-interface {v1, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 626
    :try_start_2
    const-string v1, "DetectorSession"

    const-string v2, "Egressed \'hotword rejected result\' from hotword trusted process"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_0

    .line 629
    const-string p0, "DetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 632
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 622
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 623
    throw p1

    .line 632
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
