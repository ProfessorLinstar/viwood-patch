.class public Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# instance fields
.field public mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field public mModelHandle:I

.field public mModelId:Ljava/util/UUID;

.field public mModelState:I

.field public mModelType:I

.field public mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field public mRecognitionToken:Landroid/os/IBinder;

.field public mRequested:Z

.field public mRunInBatterySaverMode:Z

.field public mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;


# direct methods
.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    const/4 v1, 0x0

    .line 1388
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1389
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1401
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z

    .line 1404
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 1407
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;

    .line 1410
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    .line 1413
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    return-void
.end method

.method public static createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2

    .line 1421
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method public static createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2

    .line 1417
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized callbackToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1561
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearCallback()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1479
    :try_start_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearState()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1471
    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    const/4 v1, 0x0

    .line 1472
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;

    .line 1473
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1474
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1475
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .locals 1

    monitor-enter p0

    .line 1435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandle()I
    .locals 1

    monitor-enter p0

    .line 1499
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getModelId()Ljava/util/UUID;
    .locals 1

    monitor-enter p0

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1

    monitor-enter p0

    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .locals 1

    monitor-enter p0

    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isGenericModel()Z
    .locals 2

    monitor-enter p0

    .line 1544
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isKeyphraseModel()Z
    .locals 1

    monitor-enter p0

    .line 1540
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isModelLoaded()Z
    .locals 3

    monitor-enter p0

    .line 1439
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isModelNotLoaded()Z
    .locals 1

    monitor-enter p0

    .line 1443
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isModelStarted()Z
    .locals 2

    monitor-enter p0

    .line 1467
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isRequested()Z
    .locals 1

    monitor-enter p0

    .line 1512
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized modelTypeToString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1580
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1581
    :cond_0
    const-string v0, "Generic"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1583
    :cond_1
    const-string v0, "Keyphrase"

    goto :goto_0

    .line 1582
    :cond_2
    const-string v0, "Unknown"

    .line 1585
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestedToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1557
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V
    .locals 0

    monitor-enter p0

    .line 1431
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHandle(I)V
    .locals 0

    monitor-enter p0

    .line 1483
    :try_start_0
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLoaded()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1458
    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setNotLoaded()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1462
    :try_start_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 1463
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 0

    monitor-enter p0

    .line 1487
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setRequested(Z)V
    .locals 0

    monitor-enter p0

    .line 1516
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setRunInBatterySaverMode(Z)V
    .locals 0

    monitor-enter p0

    .line 1491
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V
    .locals 0

    monitor-enter p0

    .line 1520
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 1447
    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1453
    :try_start_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 1454
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setToken(Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 1532
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized shouldRunInBatterySaverMode()Z
    .locals 1

    monitor-enter p0

    .line 1495
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stateToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1548
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1553
    const-string v0, "Unknown state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1551
    :cond_0
    :try_start_1
    const-string v0, "STARTED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1550
    :cond_1
    :try_start_2
    const-string v0, "LOADED"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1549
    :cond_2
    :try_start_3
    const-string v0, "NOT_LOADED"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1553
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1569
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nModelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->requestedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->callbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->uuidToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->modelTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RunInBatterySaverMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized uuidToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1565
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
