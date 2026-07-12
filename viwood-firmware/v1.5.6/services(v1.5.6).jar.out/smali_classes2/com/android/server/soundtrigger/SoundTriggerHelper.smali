.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mIsAppOpPermitted:Z

.field public mIsDetached:Z

.field public final mKeyphraseUuidMap:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mModelDataMap:Ljava/util/HashMap;

.field public mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field public final mModuleId:I

.field public final mModulePropertiesProvider:Ljava/util/function/Supplier;

.field public final mModuleProvider:Ljava/util/function/Function;

.field public mRecognitionRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/EventLogger;Ljava/util/function/Function;ILjava/util/function/Supplier;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 119
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 129
    iput p4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    .line 130
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    .line 132
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 133
    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModulePropertiesProvider:Ljava/util/function/Supplier;

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    return-void

    .line 137
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    return-void
.end method


# virtual methods
.method public final cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .locals 2

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result p0

    if-eqz p0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to stop or unload previous model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    const-string v0, "SoundTriggerHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public final createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p2

    .line 1180
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public detach()V
    .locals 4

    .line 1052
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1054
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 1055
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1056
    invoke-virtual {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1059
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_2

    .line 1060
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1061
    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 1063
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 1073
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    return-void
.end method

.method public final forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .locals 2

    .line 1089
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_0

    .line 1090
    const-string v1, "forceStopAndUnloadModel"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    :cond_0
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 1095
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1096
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping previously started dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 1098
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    const/4 p2, 0x0

    .line 1099
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    goto :goto_0

    .line 1101
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading previously loaded dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result p2

    if-nez p2, :cond_7

    if-eqz p3, :cond_4

    .line 1109
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1111
    :cond_4
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :goto_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1114
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1117
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1120
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    return-void

    .line 1122
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to unload model "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method public getGenericModelState(Ljava/util/UUID;)I
    .locals 4

    .line 633
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_get_generic_model_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_6

    .line 635
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 638
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_5

    .line 641
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_4

    .line 642
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    const-string p0, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState: Given generic model is not loaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 651
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 652
    const-string p0, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState: Given generic model is not started:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    monitor-exit v0

    return v1

    .line 656
    :cond_3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getModelState(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 643
    :cond_4
    :goto_0
    const-string p0, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState error: Invalid generic model id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    monitor-exit v0

    return v1

    .line 639
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :cond_6
    :goto_1
    monitor-exit v0

    return v1

    .line 657
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .locals 2

    const/high16 p0, -0x80000000

    .line 918
    const-string v0, "SoundTriggerHelper"

    if-nez p1, :cond_0

    .line 919
    const-string p1, "Null RecognitionEvent received."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 922
    :cond_0
    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    if-eqz p1, :cond_2

    .line 924
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 929
    aget-object p0, p1, p0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return p0

    .line 925
    :cond_2
    :goto_0
    const-string p1, "Invalid keyphrase recognition event!"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1170
    :cond_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object p0
.end method

.method public getKeyphraseParameter(II)I
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 704
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 707
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2

    .line 1189
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1190
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_2

    .line 516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModulePropertiesProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 518
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v2

    iget v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 522
    :cond_1
    const-string v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module properties not found for existing moduleId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 514
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-nez v0, :cond_0

    .line 1147
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1148
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1149
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1150
    const-string p0, "SoundTriggerHelper"

    const-string p1, "UUID already used for non-generic model."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getParameter(Ljava/util/UUID;I)I
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 695
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 698
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_get_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 712
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 719
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getParameter(II)I

    move-result p0

    return p0

    .line 720
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given model is not loaded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 717
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid model id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 713
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SoundTriggerModule not initialized"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final internalClearModelStateLocked()V
    .locals 1

    .line 1041
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1042
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .locals 0

    .line 798
    instance-of p0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return p0
.end method

.method public final isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z
    .locals 2

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAppOpPermitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mDeviceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1213
    :cond_0
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->$SwitchMap$com$android$server$soundtrigger$DeviceStateHandler$SoundTriggerDeviceState:[I

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    return v0

    .line 1217
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Enum changed between compile and runtime"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1215
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->shouldRunInBatterySaverMode()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isRecognitionRequested(Ljava/util/UUID;)Z
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_1

    .line 603
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 601
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 605
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppOpStateChanged(Z)V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    if-ne v1, p1, :cond_0

    .line 624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 626
    :cond_0
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsAppOpPermitted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isPermitted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 628
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    .line 629
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDetached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mDeviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 617
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    .line 618
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 614
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 618
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onGenericRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 8

    .line 803
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_generic_recognition_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 804
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 808
    :cond_0
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 809
    const-string v1, "SoundTriggerHelper"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 814
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    if-nez v3, :cond_3

    .line 821
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 826
    :cond_3
    iget-boolean v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->recognitionStillActive:Z

    if-nez v4, :cond_4

    .line 827
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 831
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 832
    invoke-interface {v3, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v3

    if-nez v3, :cond_5

    .line 843
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 848
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->isMultipleTriggersAllowed()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 850
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 851
    invoke-virtual {p0, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 834
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 835
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    const-string v6, "RemoteException"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 836
    invoke-virtual {v3, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 834
    invoke-virtual {v2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 837
    invoke-virtual {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    return-void

    .line 810
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onKeyphraseRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 7

    .line 934
    const-string v0, "Recognition success"

    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_keyphrase_recognition_event"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v0

    .line 937
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 939
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 943
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 947
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 948
    const-string p0, "Received onRecognition event without callback for keyphrase model."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 952
    :cond_2
    iget-boolean v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->recognitionStillActive:Z

    if-nez v0, :cond_3

    .line 953
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 957
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 958
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 970
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->isMultipleTriggersAllowed()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 973
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 974
    invoke-virtual {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 960
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 961
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    const-string v6, "RemoteException"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 962
    invoke-virtual {v3, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 960
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 963
    invoke-virtual {p0, v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    return-void

    .line 940
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Keyphase model data does not exist for ID:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModelUnloaded(I)V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onModelUnloadedLocked(I)V

    .line 860
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onModelUnloadedLocked(I)V
    .locals 0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setNotLoaded()V

    :cond_0
    return-void
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3

    if-nez p1, :cond_0

    .line 769
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Null recognition event!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 773
    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-nez v0, :cond_1

    .line 775
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Invalid recognition event type (not one of generic or keyphrase)!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 787
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 788
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_0

    .line 790
    :cond_4
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 794
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 7

    .line 893
    const-string v0, "Recognition aborted"

    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_recognition_aborted"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 895
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 903
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 905
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 906
    invoke-interface {p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 909
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 910
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    const-string v6, "RemoteException"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 911
    invoke-virtual {v3, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 909
    invoke-virtual {v2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 912
    invoke-virtual {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResourcesAvailable()V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onResourcesAvailableLocked()V

    .line 867
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onResourcesAvailableLocked()V
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 889
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    return-void
.end method

.method public onServiceDied()V
    .locals 3

    .line 872
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 874
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 876
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDiedLocked()V
    .locals 10

    .line 1009
    const-string v0, "SoundTriggerHelper"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sth_service_died"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1010
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1011
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    .line 1014
    :try_start_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1015
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {v7, v5, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v7

    .line 1014
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1016
    invoke-interface {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onModuleDied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1018
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1019
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v3

    const-string v8, "RemoteException"

    invoke-direct {v6, v7, v3, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v6, v5, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v3

    .line 1018
    invoke-virtual {v4, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 1026
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_2

    .line 1027
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1031
    :try_start_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1033
    :catch_1
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_2
    :goto_1
    return-void

    .line 1025
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 1026
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_3

    .line 1027
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1031
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1033
    :catch_2
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 1036
    :cond_3
    :goto_3
    throw v0
.end method

.method public final prepareForRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const-string v1, "SoundTriggerHelper"

    if-nez v0, :cond_0

    .line 239
    const-string/jumbo p0, "prepareForRecognition: cannot attach to sound trigger module"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopAndUnloadDeadModelsLocked()V

    .line 249
    filled-new-array {v2}, [I

    move-result-object v0

    .line 250
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareForRecognition: loadSoundModel failed with status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 255
    :cond_1
    aget p0, v0, v2

    invoke-virtual {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 256
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    :cond_2
    return v2
.end method

.method public queryKeyphraseParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 742
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 740
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 730
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_query_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 750
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 753
    :cond_0
    const-string v0, "SoundTriggerHelper"

    if-nez p1, :cond_1

    .line 754
    const-string/jumbo p0, "queryParameter: Invalid model id"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 757
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 758
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryParameter: Given model is not loaded:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 762
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    return-object p0
.end method

.method public final removeKeyphraseModelLocked(I)V
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    if-nez v0, :cond_0

    return-void

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKeyphraseParameter(III)I
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 672
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 675
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setParameter(Ljava/util/UUID;II)I
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 663
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_set_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 681
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_0

    .line 682
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 684
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 689
    :cond_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->setParameter(III)I

    move-result p0

    return p0

    .line 685
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetParameter: Given model is not loaded:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundTriggerHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    return p0
.end method

.method public startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 10

    .line 155
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_2

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v5

    if-nez v5, :cond_1

    .line 168
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Irrecoverable error occurred, check UUID / sound model data."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/high16 v8, -0x80000000

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    .line 171
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I

    move-result p0

    monitor-exit v1

    return p0

    .line 164
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 158
    :cond_3
    :goto_1
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Passed in bad data to startGenericRecognition()."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 9

    .line 188
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v0, -0x80000000

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    if-nez p4, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_5

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Generic model with same UUID exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    .line 205
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    monitor-exit v1

    return v0

    .line 211
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_4

    .line 218
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    :cond_4
    move v7, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    move-object v4, v2

    move-object v2, p0

    .line 221
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I

    move-result p0

    monitor-exit v1

    return p0

    .line 195
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_6
    :goto_0
    monitor-exit v1

    return v0

    .line 223
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I
    .locals 4

    .line 278
    iget-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 280
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 282
    const-string v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling previous recognition for model id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onPreempted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 287
    :try_start_2
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onDetectionStopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 299
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    move v3, v2

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    .line 311
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    goto :goto_1

    :cond_2
    move v0, v2

    move v3, v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    .line 314
    :cond_3
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    const-string p0, "SoundTriggerHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to stop or unload previous model: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit p5

    return v0

    .line 323
    :cond_4
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 324
    invoke-virtual {p2, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 325
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 326
    invoke-virtual {p2, p6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRunInBatterySaverMode(Z)V

    .line 327
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 329
    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 330
    invoke-virtual {p0, p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p1

    if-nez p1, :cond_5

    .line 333
    monitor-exit p5

    goto :goto_2

    .line 334
    :cond_5
    sget p4, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    if-eq p1, p4, :cond_6

    .line 336
    invoke-virtual {p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 337
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return p1

    :cond_6
    if-eqz p3, :cond_7

    .line 344
    :try_start_3
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object p6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p4, p6, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    invoke-virtual {p1, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 345
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 348
    :try_start_4
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object p6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 349
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "RemoteException"

    invoke-direct {p4, p6, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string p6, "SoundTriggerHelper"

    const/4 v0, 0x2

    .line 350
    invoke-virtual {p4, v0, p6}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p4

    .line 348
    invoke-virtual {p3, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 351
    invoke-virtual {p0, p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 353
    :cond_7
    :goto_3
    monitor-exit p5

    return v2

    .line 354
    :goto_4
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 9

    .line 1225
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1226
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v1

    .line 1227
    const-string/jumbo v2, "sth_start_recognition_error"

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    const-string v5, "SoundTriggerHelper"

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 1236
    const-string/jumbo p1, "startRecognition requested but not allowed."

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "sth_start_recognition_not_allowed"

    invoke-static {p0, p1, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return v7

    .line 1241
    :cond_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v6, :cond_2

    return v3

    .line 1246
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v6, v3, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognitionWithToken(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1248
    invoke-static {v1}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v1, :cond_3

    .line 1251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRecognition failed with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    .line 1256
    :try_start_1
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1257
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v4, v6, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v2, v3, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1256
    invoke-virtual {p2, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1259
    invoke-virtual {p1, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 1260
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onResumeFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 1262
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1263
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v2, v3, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1262
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1270
    :cond_3
    const-string/jumbo v2, "startRecognition successful."

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_success"

    invoke-static {v2, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1272
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    if-eqz p2, :cond_4

    .line 1276
    :try_start_2
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1277
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 1276
    invoke-virtual {p2, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1278
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 1280
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1281
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    const-string v7, "RemoteException"

    invoke-direct {v2, v4, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1280
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1282
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    return v1

    .line 1229
    :cond_5
    :goto_2
    const-string/jumbo p1, "startRecognition: Bad data passed in."

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return v3
.end method

.method public final stopAndUnloadDeadModelsLocked()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1129
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1131
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1134
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1135
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1136
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1138
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that has no clients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundTriggerHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1139
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 375
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_4

    .line 378
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 386
    const-string p1, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopGenericRecognition failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 388
    :cond_2
    :goto_0
    monitor-exit v0

    return p0

    .line 380
    :cond_3
    :goto_1
    const-string p0, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v0

    return v1

    .line 376
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_5
    :goto_2
    const-string p0, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v0

    return v1

    .line 389
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-nez p2, :cond_0

    .line 406
    const-string p0, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 410
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_4

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 414
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 421
    monitor-exit v0

    return p0

    .line 424
    :cond_2
    monitor-exit v0

    return p0

    .line 415
    :cond_3
    :goto_0
    const-string p0, "SoundTriggerHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No model exists for given keyphrase Id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    monitor-exit v0

    return v1

    .line 411
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/high16 v1, -0x80000000

    if-nez p2, :cond_0

    .line 438
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_1

    .line 441
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition after detach"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v0

    return v1

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 447
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 453
    :cond_2
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eq v2, p2, :cond_3

    .line 456
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition for another recognition"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v0

    return v1

    :cond_3
    const/4 p2, 0x0

    .line 461
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p0

    if-eqz p0, :cond_4

    .line 464
    monitor-exit v0

    return p0

    .line 470
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    const/4 p2, 0x0

    .line 471
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 472
    monitor-exit v0

    return p0

    .line 449
    :cond_5
    :goto_0
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    monitor-exit v0

    return v1

    .line 473
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 9

    .line 1290
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 1294
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1298
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1300
    const-string v4, "SoundTriggerHelper"

    if-eqz v1, :cond_1

    .line 1301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopRecognition call failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_stop_recognition_error"

    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 1305
    :try_start_0
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1306
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1305
    invoke-virtual {p2, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 p2, 0x0

    .line 1308
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 1309
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onPauseFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p2

    .line 1311
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1312
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1311
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1315
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1320
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_stop_recognition_success"

    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 1324
    :try_start_1
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V

    .line 1324
    invoke-virtual {p2, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1326
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p2

    .line 1328
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;

    sget-object v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 1329
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v6

    const-string v7, "RemoteException"

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 1328
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 2

    .line 482
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 485
    :cond_0
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 486
    invoke-virtual {p0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "stopRecognition failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-eqz p3, :cond_4

    .line 494
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 495
    const-string p2, "Unloading previously loaded stale model."

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_2

    const/high16 p0, -0x80000000

    return p0

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result p2

    .line 500
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "sth_unloading_stale_model"

    const/4 v1, 0x1

    invoke-static {p0, p3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unloadSoundModel call failed with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 505
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    return p2

    :cond_4
    return v1
.end method

.method public unloadGenericSoundModel(Ljava/util/UUID;)I
    .locals 7

    .line 556
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_generic_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_8

    .line 558
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 561
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_7

    .line 564
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_6

    .line 565
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 570
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 572
    const-string p0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unload: Given generic model is not loaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 575
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 576
    invoke-virtual {p0, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopGenericRecognition failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_3
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v3, :cond_4

    .line 584
    monitor-exit v0

    return v1

    .line 586
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 588
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v2, "SoundTriggerHelper"

    const-string/jumbo v3, "unloadGenericSoundModel() force-marking model as unloaded."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_5
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    monitor-exit v0

    return v1

    .line 566
    :cond_6
    :goto_0
    const-string p0, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit v0

    return v1

    .line 562
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :cond_8
    :goto_1
    monitor-exit v0

    return v1

    .line 595
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unloadKeyphraseSoundModel(I)I
    .locals 6

    .line 527
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_keyphrase_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 538
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 539
    invoke-virtual {p0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 544
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 551
    monitor-exit v0

    return v1

    .line 535
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/high16 p0, -0x80000000

    .line 532
    monitor-exit v0

    return p0

    .line 552
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateAllRecognitionsLocked()V
    .locals 5

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 982
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v4, 0x1

    .line 983
    invoke-virtual {p0, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 3

    .line 989
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 990
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_3

    .line 995
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->prepareForRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const-string p0, "SoundTriggerHelper"

    const-string/jumbo p1, "startRecognition failed to prepare model for recognition"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1000
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p0

    return p0

    .line 1003
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p0

    return p0
.end method
