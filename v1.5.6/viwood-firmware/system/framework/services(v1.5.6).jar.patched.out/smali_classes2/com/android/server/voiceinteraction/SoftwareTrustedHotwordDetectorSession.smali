.class public final Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "SoftwareTrustedHotwordDetectorSession.java"


# instance fields
.field public mPerformingSoftwareHotwordDetection:Z

.field public mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# direct methods
.method public static synthetic $r8$lambda$3kOOUMTw0HJZSRjQEk2N46UoTc0(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    move-object v0, p1

    .line 201
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/ISandboxedDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p11}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 259
    invoke-super {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mPerformingSoftwareHotwordDetection="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public informRestartProcessLocked()V
    .locals 5

    .line 233
    const-string v0, "informRestartProcessLocked"

    const-string v1, "SoftwareTrustedHotwordDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    const-string v3, "Failed to communicate #onProcessRestarted"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    .line 240
    iget v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v4, 0x2

    invoke-static {v4, v0, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 244
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 248
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "Process restarted: calling startRecognition() again"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->startListeningFromMicLocked()V

    .line 253
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 254
    const-string/jumbo v0, "process restarted"

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final startListeningFromMicLocked()V
    .locals 3

    .line 104
    new-instance v0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)V

    .line 200
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    const/16 v0, 0x9

    .line 207
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v1, 0x2

    invoke-static {v1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    return-void
.end method

.method public startListeningFromMicLocked(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 90
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 92
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    if-eqz p1, :cond_0

    .line 93
    const-string p0, "SoftwareTrustedHotwordDetectorSession"

    const-string p1, "Hotword validation is already in progress, ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->startListeningFromMicLocked()V

    return-void
.end method

.method public stopListeningFromMicLocked()V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    if-nez v0, :cond_0

    .line 219
    const-string p0, "SoftwareTrustedHotwordDetectorSession"

    const-string v0, "Hotword detection is not running"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 224
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 226
    const-string/jumbo v0, "stopping requested"

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    return-void
.end method
