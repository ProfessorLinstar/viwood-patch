.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

.field public final mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

.field public final mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

.field public mIsDead:Z

.field public mIsResourceContended:Z

.field public final mLock:Ljava/lang/Object;

.field public mModelKeyCounter:I

.field public final mModelSessionMap:Ljava/util/Map;

.field public final mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method public static synthetic $r8$lambda$-Qjoj0MqRXhchf-50-IjfmQxECU(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    const/4 v0, -0x1

    .line 492
    invoke-interface {p3, v0, p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$41friA0u5mUpSibCjA5jNhYu5ps(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$loadSoundModel$1(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5oM9qepYifylrd9ttRDTLXLM84g(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 459
    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D8VAFUSx6IBzUHbmeGEYHDY1R0Y(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$loadPhraseSoundModel$2(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDPo4Vyq08W-b31ENAIaet2E0FE(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 0

    .line 465
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$_r7zgC45YMbhkVPbRFw41fe6CNU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->lambda$new$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hs93o6QYJV0yRbAqrtTPfQ-bqSM(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 584
    invoke-interface {p3, p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ic_NsW2JMiOfkLXCdZ7rrUTsAVE(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 507
    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjectionDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModelSessionMap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProperties(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/media/soundtrigger/Properties;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetNumLoadedModelsLocked(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smcreateDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 3

    .line 270
    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    const/16 v2, 0x65

    .line 107
    iput v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 110
    iput-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    .line 271
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 272
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    invoke-direct {v1, p1, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    .line 273
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    .line 277
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    .line 342
    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V

    invoke-static {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    .line 640
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 642
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 p0, 0x1

    .line 643
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 646
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    const/16 p0, 0x32

    .line 647
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    const/16 p0, 0xc8

    .line 648
    iput p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    const/4 p0, 0x0

    .line 649
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    const/4 v1, 0x0

    .line 650
    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 651
    new-array v1, p0, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 653
    iput-boolean p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    return-object v0
.end method

.method public static createDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 2

    .line 659
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->createDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p0

    const/4 v0, 0x0

    .line 660
    iput v0, p0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 661
    new-instance v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v1}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 662
    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 663
    new-array p0, v0, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object p0, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    return-object v1
.end method

.method public static createDefaultProperties()Landroid/media/soundtrigger/Properties;
    .locals 3

    .line 617
    new-instance v0, Landroid/media/soundtrigger/Properties;

    invoke-direct {v0}, Landroid/media/soundtrigger/Properties;-><init>()V

    .line 618
    const-string v1, "android"

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 619
    const-string v1, "AOSP fake STHAL"

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    const/4 v1, 0x1

    .line 620
    iput v1, v0, Landroid/media/soundtrigger/Properties;->version:I

    .line 621
    const-string v2, "00000001-0002-0003-0004-deadbeefabcd"

    iput-object v2, v0, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    .line 622
    const-string v2, "injection"

    iput-object v2, v0, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    const/16 v2, 0x8

    .line 623
    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    const/4 v2, 0x2

    .line 624
    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    .line 625
    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxUsers:I

    const/16 v2, 0x9

    .line 626
    iput v2, v0, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 628
    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    const/16 v2, 0x1388

    .line 630
    iput v2, v0, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    .line 631
    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    const/4 v1, 0x0

    .line 632
    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    .line 633
    iput v1, v0, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    .line 634
    iput v1, v0, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    return-object v0
.end method


# virtual methods
.method public forceRecognitionEvent(I)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    .line 516
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    .line 518
    const-string p1, "FakeSoundTriggerHal"

    const-string v1, "Attempted to force recognition with invalid handle"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 524
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetRecogSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    .line 525
    :cond_1
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mforceRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    .line 526
    monitor-exit v0

    return-void

    .line 515
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 526
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGlobalEventInjection()Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p0, :cond_0

    .line 600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    const-string p0, "f2ec48a74490bf9d5675f48cb89ecdb3e5cd9c35"

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 599
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 600
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p0, :cond_0

    .line 592
    monitor-exit v0

    const/4 p0, 0x3

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 591
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 592
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNumLoadedModelsLocked()I
    .locals 2

    .line 608
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    .line 609
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getParameter(II)I
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    .line 557
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    .line 559
    const-string p1, "FakeSoundTriggerHal"

    const-string v1, "Attempted to get param with invalid handle"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 564
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 562
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 556
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 565
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_0

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :try_start_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/soundtrigger/Properties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 386
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 387
    sget-object p0, Landroid/media/soundtrigger/Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/soundtrigger/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    throw p0

    .line 382
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 391
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$loadPhraseSoundModel$2(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    .line 437
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p3, v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public final synthetic lambda$loadSoundModel$1(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p3, p1, v0, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public final synthetic lambda$new$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;

    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 2

    .line 358
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "FakeSoundTriggerHal"

    const-string v1, "Received two death recipients concurrently"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 362
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 363
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 9

    .line 425
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v0, :cond_1

    .line 427
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v2, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    if-eq v0, v2, :cond_0

    .line 431
    iget v5, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 432
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    const/4 v0, 0x0

    invoke-direct {v6, p2, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;ZLcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    .line 434
    iget-object p0, v4, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object p0, v4, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance p2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda5;

    invoke-direct {p2, v4, p1, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 439
    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 428
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 426
    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 440
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I
    .locals 9

    .line 406
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v0, :cond_1

    .line 408
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v2, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    if-eq v0, v2, :cond_0

    .line 411
    iget v5, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelKeyCounter:I

    .line 412
    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    const/4 v0, 0x0

    invoke-direct {v6, p2, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;ILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;ZLcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    .line 414
    iget-object p0, v4, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object p0, v4, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance p2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;

    invoke-direct {p2, v4, p1, v3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 418
    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 409
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 407
    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 419
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    .line 537
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p0, :cond_0

    .line 539
    const-string p0, "FakeSoundTriggerHal"

    const-string p1, "Attempted to get param with invalid handle"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 541
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 543
    new-instance p0, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {p0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    const/16 p1, -0xa

    .line 544
    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    const/16 p1, 0xa

    .line 545
    iput p1, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 536
    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 541
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;-><init>(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    .line 400
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 398
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 400
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setParameter(III)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_3

    .line 573
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    .line 575
    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to get param with invalid handle"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    const/16 v1, -0xa

    if-lt p3, v1, :cond_1

    const/16 v1, 0xa

    if-gt p3, v1, :cond_1

    goto :goto_1

    .line 581
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 579
    :cond_2
    :goto_1
    invoke-static {p1, p3}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$msetThresholdFactor(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;I)V

    .line 583
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 585
    monitor-exit v0

    return-void

    .line 572
    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 585
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 1

    .line 474
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 475
    :try_start_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez p3, :cond_3

    .line 476
    iget-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    .line 478
    const-string p3, "FakeSoundTriggerHal"

    const-string v0, "Attempted to start recognition with invalid handle"

    invoke-static {p3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 480
    :cond_0
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    const/4 v0, 0x1

    if-nez p3, :cond_2

    .line 483
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 488
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mstartRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p3

    .line 491
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda6;

    invoke-direct {v0, p4, p3, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda6;-><init>(Landroid/media/soundtrigger/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 493
    monitor-exit p2

    return-void

    .line 486
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 481
    :cond_2
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 475
    :cond_3
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 493
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopRecognition(I)V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    .line 502
    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to stop recognition with invalid handle"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 504
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mstopRecognitionForModel(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 509
    :cond_1
    monitor-exit v0

    return-void

    .line 499
    :cond_2
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 509
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .line 368
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p0, 0x1

    .line 374
    monitor-exit p2

    return p0

    .line 371
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 375
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unloadSoundModel(I)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsDead:Z

    if-nez v1, :cond_4

    .line 447
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mModelSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    if-nez p1, :cond_0

    .line 449
    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Attempted to unload model which was never loaded"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 452
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetRecogSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 453
    const-string v1, "FakeSoundTriggerHal"

    const-string v2, "Session unloaded before recog stopped!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$mgetIsUnloaded(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mInjectionDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->getNumLoadedModelsLocked()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mProperties:Landroid/media/soundtrigger/Properties;

    iget v1, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mIsResourceContended:Z

    if-nez p1, :cond_3

    .line 464
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalCallbackDispatcher:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 468
    :cond_3
    monitor-exit v0

    return-void

    .line 446
    :cond_4
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    .line 468
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
