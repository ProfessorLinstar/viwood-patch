.class public Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "DspTrustedHotwordDetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    monitor-exit v0

    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v3, 0x5

    invoke-static {v2, v3, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 122
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    const-string p1, "DspTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring #onDetected due to a process restart or previous #onRejected result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v3}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmLastHotwordRejectedResult(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Landroid/service/voice/HotwordRejectedResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x7

    invoke-static {v2, p1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 129
    monitor-exit v0

    return-void

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionsForDataDelivery()V

    .line 134
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/voiceinteraction/DetectorSession;->enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 175
    const-string v1, "DspTrustedHotwordDetectorSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Egressed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bits from hotword trusted process"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_3

    .line 186
    const-string p0, "DspTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 178
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 179
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0x11

    invoke-static {v2, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 183
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p1

    .line 162
    :try_start_6
    const-string v1, "DspTrustedHotwordDetectorSession"

    const-string v2, "Ignoring #onDetected due to a IOException"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v2, "Copy audio stream failure."

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :try_start_7
    monitor-exit v0

    goto :goto_1

    :catch_2
    move-exception p1

    .line 168
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 169
    throw p1

    :catch_3
    move-exception p1

    .line 136
    const-string v1, "DspTrustedHotwordDetectorSession"

    const-string v4, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v1, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0x8

    invoke-static {v2, v1, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v4, "Security exception occurs in #onDetected method."

    invoke-direct {v1, v3, v4}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 154
    :try_start_9
    monitor-exit v0

    :goto_1
    return-void

    :catch_4
    move-exception p1

    .line 147
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 148
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0xf

    invoke-static {v2, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 152
    throw p1

    .line 188
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 207
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    const-string p1, "DspTrustedHotwordDetectorSession"

    const-string v1, "Ignoring #onRejected due to a process restart"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 p1, 0x9

    invoke-static {v2, p1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 213
    monitor-exit v0

    return-void

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-static {v1, p1}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->-$$Nest$fputmLastHotwordRejectedResult(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Landroid/service/voice/HotwordRejectedResult;)V

    .line 227
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 228
    const-string p0, "DspTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed rejected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 219
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 220
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0x10

    invoke-static {v2, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 224
    throw p1

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
