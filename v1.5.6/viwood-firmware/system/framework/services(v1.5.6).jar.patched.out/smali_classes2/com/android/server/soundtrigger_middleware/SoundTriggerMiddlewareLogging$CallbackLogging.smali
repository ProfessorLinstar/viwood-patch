.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# instance fields
.field public final mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 381
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 382
    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onModelUnloaded(I)V
    .locals 4

    .line 426
    const-string v0, "SoundTriggerMiddlewareLogging"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V

    .line 427
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODEL_UNLOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 427
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v2

    const/4 v3, 0x0

    .line 429
    invoke-virtual {v2, v3, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 431
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODEL_UNLOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 431
    invoke-static {v2, v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object p1

    const/4 v2, 0x2

    .line 433
    invoke-virtual {p1, v2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 434
    throw v1
.end method

.method public onModuleDied()V
    .locals 6

    .line 456
    const-string v0, "SoundTriggerMiddlewareLogging"

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V

    .line 457
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v4

    .line 459
    invoke-virtual {v4, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 461
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v2

    .line 463
    invoke-virtual {v2, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 464
    throw v3
.end method

.method public onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .locals 5

    .line 408
    const-string v0, "SoundTriggerMiddlewareLogging"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$fgetmBatteryStatsInternalSupplier(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsInternal;

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget v4, v4, Landroid/media/permission/Identity;->uid:I

    .line 408
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStatsInternal;->noteWakingSoundTrigger(JI)V

    .line 410
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    iget-object v2, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$mstartKeyphraseEventLatencyTracking(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 411
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V

    .line 412
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, p2, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 412
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v2

    const/4 v3, 0x0

    .line 414
    invoke-virtual {v2, v3, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 412
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 416
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 416
    invoke-static {v2, v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object p1

    const/4 p2, 0x2

    .line 418
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 419
    throw v1
.end method

.method public onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .locals 5

    .line 389
    const-string v0, "SoundTriggerMiddlewareLogging"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$fgetmBatteryStatsInternalSupplier(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsInternal;

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget v4, v4, Landroid/media/permission/Identity;->uid:I

    .line 389
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStatsInternal;->noteWakingSoundTrigger(JI)V

    .line 391
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V

    .line 392
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, p2, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 392
    invoke-static {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v2

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v2, v3, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 396
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 396
    invoke-static {v2, v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object p1

    const/4 p2, 0x2

    .line 398
    invoke-virtual {p1, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 399
    throw v1
.end method

.method public onResourcesAvailable()V
    .locals 5

    .line 441
    const-string v0, "SoundTriggerMiddlewareLogging"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V

    .line 442
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v3

    .line 444
    invoke-virtual {v3, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 446
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    move-result-object v1

    const/4 v3, 0x2

    .line 448
    invoke-virtual {v1, v3, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 449
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mCallbackDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
