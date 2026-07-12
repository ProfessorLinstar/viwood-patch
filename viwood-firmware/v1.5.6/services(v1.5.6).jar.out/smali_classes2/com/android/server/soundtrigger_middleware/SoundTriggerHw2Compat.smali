.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mBinder:Landroid/os/IHwBinder;

.field public final mDeathRecipientMap:Ljava/util/Map;

.field public final mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

.field public final mProperties:Landroid/media/soundtrigger/Properties;

.field public final mRebootRunnable:Ljava/lang/Runnable;

.field public mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field public mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field public mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field public mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# direct methods
.method public static synthetic $r8$lambda$9haPk7j7dtwnoAHwbx8690skM1Y(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 461
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 462
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A4BrqWquKPBqezAkT33LO6zQEhQ(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 228
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 229
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MG6UmWvdj7aG3UzL3X_MRJEwRs4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V
    .locals 0

    .line 382
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 383
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjCM49VkkZDAPGeNHPuefSKPjFY(Landroid/os/IBinder$DeathRecipient;J)V
    .locals 0

    .line 400
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method public static synthetic $r8$lambda$My_51mdMqfVt9tFj6Dvb1i6Eo7s(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 349
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 350
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmxvGrR7wyO3fcw-rc1y3_enelo(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .locals 0

    .line 197
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZElrq0fydHMXzrtMhEj1C_ds4gw(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .locals 0

    .line 442
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 443
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uP8AQmIzgAPZI0WSikuoT_qDvzs(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 264
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 265
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yu9FjgvCm4rZd8zV4JzlalBuG6U(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 481
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 482
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->initUnderlying(Landroid/os/IHwBinder;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getPropertiesInternal()Landroid/media/soundtrigger/Properties;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-void
.end method

.method public static create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 0

    .line 90
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 1

    .line 96
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V

    .line 99
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object p1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget p1, p1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;I)V

    .line 101
    iget-object p1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget-boolean p1, p1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static handleHalStatus(ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-object p0
.end method

.method public final as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    .locals 1

    .line 524
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz p0, :cond_0

    return-object p0

    .line 525
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.1"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz p0, :cond_0

    return-object p0

    .line 533
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.2"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    .locals 1

    .line 540
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    if-eqz p0, :cond_0

    return-object p0

    .line 541
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.3"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public clientDetached(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public detach()V
    .locals 0

    .line 0
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .locals 0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result p0

    .line 334
    const-string p1, "getModelState"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 338
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 336
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getModelParameter(II)I
    .locals 3

    .line 344
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 345
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p0, p1, p2, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string p1, "getParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 353
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final getPropertiesInternal()Landroid/media/soundtrigger/Properties;
    .locals 4

    .line 191
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 192
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string v0, "getProperties_2_3"

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0

    .line 202
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getProperties_2_0()Landroid/media/soundtrigger/Properties;
    .locals 3

    .line 436
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 438
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 445
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string v0, "getProperties"

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertProperties_2_0_to_2_3(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object p0

    .line 446
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final initUnderlying(Landroid/os/IHwBinder;)V
    .locals 2

    .line 121
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 132
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    return-void

    .line 138
    :cond_1
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 141
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    return-void

    .line 147
    :cond_2
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 150
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    return-void

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to asInterface for binder:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundTriggerHw2Compat"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Conver HwBinder Interface failed, throw remote exception and retry again."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Binder doesn\'t support ISoundTriggerHw@2.0"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3

    .line 400
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 8

    .line 256
    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    move-result-object p1

    .line 258
    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 259
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, p1, v6, v4, v7}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    .line 267
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v4, "loadPhraseSoundModel_2_1"

    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_0

    .line 281
    :try_start_3
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 283
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    .line 271
    :catch_2
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_1

    .line 281
    :try_start_5
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 283
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return p0

    .line 275
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 279
    :goto_2
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_2

    .line 281
    :try_start_7
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 283
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    :cond_2
    :goto_3
    throw p0
.end method

.method public final loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 6

    .line 475
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    move-result-object p1

    .line 477
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 478
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, p1, v4, v2, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 484
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 485
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 8

    .line 220
    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object p1

    .line 222
    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 223
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;

    invoke-direct {v7, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, p1, v6, v4, v7}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    .line 231
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v4, "loadSoundModel_2_1"

    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_0

    .line 245
    :try_start_3
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 247
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    .line 235
    :catch_2
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_1

    .line 245
    :try_start_5
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 247
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return p0

    .line 239
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    :goto_2
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_2

    .line 245
    :try_start_7
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 247
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :cond_2
    :goto_3
    throw p0
.end method

.method public final loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 6

    .line 456
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    move-result-object p1

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 459
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, p1, v4, v2, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 465
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 4

    .line 375
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 377
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v2, 0x0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, p1, p2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string/jumbo p1, "queryParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->getDiscriminator()B

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 395
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    .line 389
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    return-object v2
.end method

.method public reboot()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setModelParameter(III)V
    .locals 0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->setParameter(III)I

    move-result p0

    .line 365
    const-string/jumbo p1, "setParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 369
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 367
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 0

    .line 316
    invoke-static {p4, p2, p3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;II)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    move-result-object p2

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result p3

    .line 320
    const-string/jumbo p4, "startRecognition_2_3"

    invoke-static {p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 323
    :catch_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 326
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 3

    .line 511
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_0(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    move-result-object p2

    .line 512
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    const/4 p0, 0x0

    .line 512
    invoke-interface {v0, p1, p2, v1, p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 514
    const-string/jumbo p1, "startRecognition"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void
.end method

.method public final startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 5

    .line 494
    :try_start_0
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_1(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 495
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat-IA;)V

    const/4 v3, 0x0

    .line 495
    invoke-interface {v1, p1, v0, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v0

    .line 497
    const-string/jumbo v1, "startRecognition_2_1"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 500
    :catch_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 503
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopRecognition(I)V
    .locals 0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    .line 305
    const-string/jumbo p1, "stopRecognition"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unloadSoundModel(I)V
    .locals 2

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    .line 295
    const-string/jumbo p1, "unloadSoundModel"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
