.class public final Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
.super Lcom/android/server/voiceinteraction/DetectorSession;
.source "VisualQueryDetectorSession.java"


# instance fields
.field public mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

.field public mEgressingData:Z

.field public mEnableAccessibilityDataEgress:Z

.field public mQueryStreaming:Z


# direct methods
.method public static synthetic $r8$lambda$1rW2CDRKCdK6zJC905YkoB1kmdg(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->lambda$enforcePermissionsForVisualQueryDelivery$1(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ul23vhk-2iKjg8J9GwYHMZ4I-8(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 0

    .line 325
    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableAccessibilityDataEgress(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p11}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    const/4 p2, 0x0

    .line 92
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 93
    iget-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "visual_query_accessibility_detection_enabled"

    iget p4, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    .line 93
    invoke-static {p2, p3, p1, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p1, p3

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public enforcePermissionsForVisualQueryDelivery(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 355
    new-instance v0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public informRestartProcessLocked()V
    .locals 3

    .line 103
    const-string v0, "informRestartProcessLocked"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 108
    const-string v2, "Failed to communicate #onProcessRestarted"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    return-void
.end method

.method public final synthetic lambda$enforcePermissionsForVisualQueryDelivery$1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 356
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v2, p1, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v5, p0, Landroid/media/permission/Identity;->uid:I

    iget-object v6, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    move-object v8, p2

    move v4, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setVisualQueryDetectionAttentionListenerLocked(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    return-void
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 343
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "HotwordDetectionService method should not be called from VisualQueryDetectorSession."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startPerceivingLocked(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)Z
    .locals 1

    .line 124
    new-instance v0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;-><init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V

    .line 324
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result p0

    return p0
.end method

.method public stopPerceivingLocked()Z
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result p0

    return p0
.end method

.method public updateAccessibilityEgressStateLocked(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    return-void
.end method
