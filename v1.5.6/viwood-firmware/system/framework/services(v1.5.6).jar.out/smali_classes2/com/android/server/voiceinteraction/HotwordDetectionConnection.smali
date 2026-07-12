.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# static fields
.field public static final SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z


# instance fields
.field public final mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

.field public mAudioFlinger:Landroid/os/IBinder;

.field public final mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mContext:Landroid/content/Context;

.field public mDebugHotwordLogging:Z

.field public mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mDetectorSessions:Landroid/util/SparseArray;

.field public mDetectorType:I

.field public final mHotwordDetectionComponentName:Landroid/content/ComponentName;

.field public final mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field public mLastRestartInstant:Ljava/time/Instant;

.field public final mLock:Ljava/lang/Object;

.field public final mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field public final mReStartPeriodSeconds:I

.field public mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

.field public mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field public mRestartCount:I

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mUserId:I

.field public final mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

.field public final mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field public final mVoiceInteractionServiceUid:I

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public static synthetic $r8$lambda$3dvVF2wJqmuLUVQkxTv-KV92Z8o(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateServiceIdentity$11(Landroid/service/voice/ISandboxedDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6adhHw1nf2g-BOLIgN7WESE9aOs(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->audioServerDied()V

    return-void
.end method

.method public static synthetic $r8$lambda$HagB46oS5tk_bpUymch2aajSzEA(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 348
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    return-void
.end method

.method public static synthetic $r8$lambda$IoB1SIw1NBueTt33_sBQWnmQAiw(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 3

    .line 648
    instance-of v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/16 v1, 0xa

    const-string v2, "Shutdown hotword detection service on voice activation op disabled!"

    invoke-direct {v0, v1, v2}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$JBANd7j37Gc1njGvWffcbybD8uU(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 2

    .line 1155
    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/ISandboxedDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWFsPRsQ78pTXKDC7FqiIW2PcdY(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DetectorSession;->setDebugHotwordLoggingLocked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qc5m5301Sp77BQp7o30OG5ZjslA(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 796
    invoke-virtual {p2, p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TENNtXprD8crRV9NqFHjmHp0Qmg(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStorageService$12(Landroid/service/voice/ISandboxedDetectionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6iI2V9fosj42MtGZoEM72DNDrw(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$restartProcessLocked$5(Lcom/android/server/voiceinteraction/DetectorSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xe6MIz_ON0zsbVBqnJ0QGOr1MpU(Landroid/speech/IRecognitionServiceManager;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 0

    .line 1163
    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oYC96nyQKYyGMh8oYOGWkjXmac(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$setDebugHotwordLoggingLocked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$sEJQWqihWiR1T4i1rAJfrMI36U8(ZLcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 555
    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->setDebugHotwordLoggingLocked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tm-lhAXPaBtKF2vFPQpeW6jvfOg(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$uLn_NYQmZE6VHjpTxmC7yEbplQE(Landroid/os/IBinder;Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 0

    .line 1147
    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHotwordRecognitionCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestartCount(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/media/permission/Identity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddServiceUidForAudioPolicy(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->addServiceUidForAudioPolicy(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdetectFromDspSource(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetVisualQueryDetectorSessionLocked(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrunForEachDetectorSessionLocked(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStorageService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStorageService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSPROP_VISUAL_QUERY_SERVICE_ENABLED()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smupdateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdateSpeechService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateSpeechService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 122
    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    const/4 v1, 0x0

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;Landroid/content/ComponentName;IZILcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;)V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 136
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 139
    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    .line 160
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    .line 166
    iput v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    .line 173
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 183
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 188
    new-instance v4, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 238
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 239
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 240
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 241
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 242
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 243
    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 244
    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 245
    iput p9, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 246
    iput-object p10, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    .line 247
    const-string/jumbo p3, "voice_interaction"

    const-string/jumbo p7, "restart_period_in_seconds"

    invoke-static {p3, p7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    .line 249
    new-instance p7, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    invoke-direct {p7, p0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection-IA;)V

    iput-object p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    .line 251
    new-instance p7, Landroid/content/Intent;

    const-string p9, "android.service.voice.HotwordDetectionService"

    invoke-direct {p7, p9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p7, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    new-instance p5, Landroid/content/Intent;

    const-string p9, "android.service.voice.VisualQueryDetectionService"

    invoke-direct {p5, p9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p5, p6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    .line 261
    new-instance p6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-direct {p6, p0, p7, p8, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;ZI)V

    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 265
    new-instance p6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    const/4 p7, 0x2

    invoke-direct {p6, p0, p5, p8, p7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;ZI)V

    iput-object p6, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 270
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 272
    const-class p5, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    const/16 p5, 0x88

    .line 273
    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p5, p4, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    if-gtz p3, :cond_0

    .line 277
    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 279
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 282
    new-instance p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    move p5, p3

    int-to-long p3, p5

    int-to-long p5, p5

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 1

    .line 1147
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public static updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 2

    .line 1151
    const-string v0, "content_capture"

    .line 1152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1153
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1154
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(Landroid/view/contentcapture/IContentCaptureManager;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public static updateSpeechService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 2

    .line 1160
    const-string/jumbo v0, "speech_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1161
    invoke-static {v0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v0

    .line 1162
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;-><init>(Landroid/speech/IRecognitionServiceManager;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method


# virtual methods
.method public final addServiceUidForAudioPolicy(II)V
    .locals 0

    .line 1203
    const-class p0, Landroid/media/AudioManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_0

    .line 1205
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManagerInternal;->addAssistantServiceUid(II)V

    :cond_0
    return-void
.end method

.method public final audioServerDied()V
    .locals 3

    .line 327
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    .line 330
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 334
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 335
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 339
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelLocked()V
    .locals 4

    .line 344
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "cancelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    .line 347
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 351
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->unbindVisualQueryDetectionService()V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->unbindHotwordDetectionService()V

    .line 354
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 355
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 358
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 359
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 363
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mOnOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public final clearDebugHotwordLoggingTimeoutLocked()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 578
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public createDetectorLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 1025
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz v2, :cond_0

    .line 1027
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 1028
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1032
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v2, :cond_1

    .line 1033
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 1034
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 1036
    :cond_1
    new-instance v3, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v10, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    iget v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V

    move-object/from16 v9, p4

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1041
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v2, :cond_3

    .line 1042
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 1043
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 1045
    :cond_3
    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v10, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    iget v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v15}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V

    :goto_0
    move-object v3, v4

    goto :goto_1

    .line 1051
    :cond_4
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v2, :cond_5

    .line 1052
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 1053
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 1055
    :cond_5
    new-instance v4, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v10, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    iget v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v15}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;I)V

    goto :goto_0

    .line 1061
    :goto_1
    iput-object v9, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 1062
    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1063
    invoke-virtual {v3, v0, v1}, Lcom/android/server/voiceinteraction/DetectorSession;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    return-void
.end method

.method public destroyDetectorLocked(Landroid/os/IBinder;)V
    .locals 3

    .line 1068
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1072
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 1073
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1074
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 1077
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1078
    instance-of p1, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p1, :cond_2

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->unbindVisualQueryDetectionService()V

    .line 1083
    :cond_2
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 1084
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 1087
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->unbindHotwordDetectionService()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDspTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 534
    invoke-virtual {p0, p2}, Lcom/android/server/voiceinteraction/DetectorSession;->isSameCallback(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->detectFromDspSourceLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 535
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Not found the Dsp detector by callback"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    monitor-exit v0

    return-void

    .line 539
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mReStartPeriodSeconds="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mReStartPeriodSeconds:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 782
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bound for HotwordDetectionService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v2

    .line 783
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 785
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bound for VisualQueryDetectionService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v1, :cond_1

    .line 788
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    .line 786
    :cond_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRestartCount="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 791
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastRestartInstant="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "DetectorSession(s):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Num of DetectorSession(s)="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 795
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 798
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceRestart()V
    .locals 2

    .line 543
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Requested to restart the service internally. Performing the restart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 546
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1096
    :goto_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1097
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 1098
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->isSameToken(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDspTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;
    .locals 1

    .line 1107
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz p0, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    check-cast p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    return-object p0

    .line 1110
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    const-string v0, "Not found the Dsp detector"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSoftwareTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;
    .locals 1

    .line 1118
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz p0, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    check-cast p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    return-object p0

    .line 1121
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    const-string v0, "Not found the software detector"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;
    .locals 1

    .line 1129
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz p0, :cond_1

    .line 1131
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    check-cast p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    return-object p0

    .line 1132
    :cond_1
    :goto_0
    const-string p0, "HotwordDetectionConnection"

    const-string v0, "Not found the visual query detector"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initAudioFlinger()V
    .locals 3

    .line 300
    const-string/jumbo v0, "media.audio_flinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->setAudioFlinger(Landroid/os/IBinder;)V

    return-void

    :catch_0
    move-exception v0

    .line 311
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->setAudioFlinger(Landroid/os/IBinder;)V

    .line 303
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Service media.audio_flinger wasn\'t found."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 3

    .line 283
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Time to restart the process, TTL has passed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 286
    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 287
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceRestartEvent(III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 291
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$restartProcessLocked$5(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 1

    .line 609
    instance-of v0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-eqz v0, :cond_0

    .line 610
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 611
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->updateRemoteSandboxedDetectionServiceLocked(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    .line 612
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->informRestartProcessLocked()V

    return-void
.end method

.method public final synthetic lambda$setDebugHotwordLoggingLocked$4()V
    .locals 2

    .line 561
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Timeout to reset mDebugHotwordLogging to false"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 563
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 564
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 567
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateServiceIdentity$11(Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 1

    .line 1168
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V

    return-void
.end method

.method public final synthetic lambda$updateStorageService$12(Landroid/service/voice/ISandboxedDetectionService;)V
    .locals 1

    .line 1187
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V

    return-void
.end method

.method public final removeServiceUidForAudioPolicy(I)V
    .locals 0

    .line 1210
    const-class p0, Landroid/media/AudioManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_0

    .line 1212
    invoke-virtual {p0, p1}, Landroid/media/AudioManagerInternal;->removeAssistantServiceUid(I)V

    :cond_0
    return-void
.end method

.method public final resetDetectionProcessIdentityIfEmptyLocked()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v0, :cond_1

    .line 388
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v1, 0x0

    .line 389
    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    .line 393
    :cond_0
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    :cond_1
    return-void
.end method

.method public final restartProcessLocked()V
    .locals 5

    .line 586
    const-string v0, "Restarting hotword detection process"

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 589
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 590
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 592
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 594
    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    if-eqz v0, :cond_0

    .line 597
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 598
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_0
    if-eqz v2, :cond_1

    .line 602
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 603
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 606
    :cond_1
    const-string v4, "Started the new process, dispatching processRestarted to detector"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 620
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_2
    if-eqz v2, :cond_3

    .line 624
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 625
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_3
    if-eqz v3, :cond_4

    .line 632
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->removeServiceUidForAudioPolicy(I)V

    :cond_4
    return-void
.end method

.method public final runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1139
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 1141
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public safelyShutdownHotwordDetectionOnVoiceActivationDisabledLocked()V
    .locals 5

    .line 643
    const-string/jumbo v0, "safelyShutdownHotwordDetectionOnVoiceActivationDisabled"

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$DetectorRemoteExceptionListener;

    .line 647
    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    .line 662
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 663
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->delete(I)V

    const/4 v2, 0x0

    .line 665
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->unbindHotwordDetectionService()V

    .line 667
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_0

    .line 668
    invoke-interface {v4, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 670
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 671
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 672
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 675
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swallowing error while shutting down hotword detection.Error message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 675
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final setAudioFlinger(Landroid/os/IBinder;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 323
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDebugHotwordLoggingLocked(Z)V
    .locals 4

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDebugHotwordLoggingLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->clearDebugHotwordLoggingTimeoutLocked()V

    .line 553
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 554
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->runForEachDetectorSessionLocked(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_0

    .line 560
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/32 v1, 0x36ee80

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLoggingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public setDetectorType(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    return-void
.end method

.method public setVisualQueryDetectionAttentionListenerLocked(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->setVisualQueryDetectionAttentionListenerLocked(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V

    return-void
.end method

.method public startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 473
    invoke-virtual {p0, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 475
    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Not found the detector by token"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/voiceinteraction/DetectorSession;->startListeningFromExternalSourceLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public startListeningFromMicLocked(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getSoftwareTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->startListeningFromMicLocked(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    return-void
.end method

.method public startListeningFromWearableLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .locals 0

    .line 489
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDspTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 491
    const-string p0, "Unable to start listening from wearable because the trusted hotword detection session is not available."

    invoke-interface {p4, p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 496
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/DetectorSession;->startListeningFromWearableLocked(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V

    return-void
.end method

.method public startPerceivingLocked(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)Z
    .locals 0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->startPerceivingLocked(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)Z

    move-result p0

    return p0
.end method

.method public stopListeningFromMicLocked()V
    .locals 0

    .line 508
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getSoftwareTrustedHotwordDetectorSessionLocked()Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->stopListeningFromMicLocked()V

    return-void
.end method

.method public stopPerceivingLocked()Z
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->stopPerceivingLocked()Z

    move-result p0

    return p0
.end method

.method public triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    .line 521
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method public final unbindHotwordDetectionService()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    return-void
.end method

.method public final unbindVisualQueryDetectionService()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    return-void
.end method

.method public final updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 1

    .line 1168
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    .locals 0

    .line 400
    invoke-virtual {p0, p3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    move-result-object p3

    if-nez p3, :cond_0

    .line 402
    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Not found the detector by token"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/time/Instant;)V

    return-void
.end method

.method public final updateStorageService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 1

    .line 1186
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
