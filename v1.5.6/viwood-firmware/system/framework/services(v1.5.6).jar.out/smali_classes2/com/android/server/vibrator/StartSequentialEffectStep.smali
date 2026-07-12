.class public final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "StartSequentialEffectStep.java"


# instance fields
.field public final currentIndex:I

.field public mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 69
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 70
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V
    .locals 10

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 0

    .line 119
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public cancelImmediately()V
    .locals 0

    .line 0
    return-void
.end method

.method public final createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .locals 1

    .line 146
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 149
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public nextStep()Lcom/android/server/vibrator/Step;
    .locals 7

    .line 132
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v6, v0, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v3, v2, v0

    .line 138
    new-instance v1, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v1
.end method

.method public play()Ljava/util/List;
    .locals 9

    .line 81
    const-string v0, "StartSequentialEffectStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, -0x1

    .line 83
    iput-wide v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    const-wide/16 v3, 0x0

    .line 85
    :try_start_0
    sget-boolean v5, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 86
    const-string v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartSequentialEffectStep for effect #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_3

    .line 89
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 90
    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 100
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_2

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    .line 105
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 96
    :cond_3
    :try_start_1
    invoke-virtual {p0, v5, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 97
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 98
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v5, v5, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 97
    invoke-interface {v6, v5, v7, v8}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOn(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_5

    cmp-long v3, v5, v3

    if-lez v3, :cond_4

    .line 105
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_5

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 100
    :goto_3
    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_7

    cmp-long v3, v6, v3

    if-lez v3, :cond_6

    .line 105
    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_7

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw v5
.end method

.method public final startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p3, p0, v0

    if-gez p3, :cond_1

    return-wide p0

    .line 249
    :cond_1
    invoke-virtual {p2}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .locals 13

    .line 168
    invoke-virtual {p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 174
    :cond_0
    new-array v3, v0, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_1

    .line 177
    iget-object v8, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 178
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {p1, v7}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/vibrator/VibratorController;

    .line 179
    invoke-virtual {p1, v7}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object v10

    .line 177
    invoke-virtual {v8, v4, v5, v9, v10}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect;)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v8

    aput-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 184
    aget-object v0, v3, v6

    invoke-virtual {p1, v6}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    .line 197
    :cond_2
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 198
    invoke-virtual {p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v7

    .line 199
    invoke-virtual {p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v9

    .line 197
    invoke-interface {v5, v7, v8, v9}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->prepareSyncedVibration(J[I)Z

    move-result v5

    move-wide v8, v1

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_4

    .line 202
    aget-object v10, v3, v7

    invoke-virtual {p1, v7}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object v11

    invoke-virtual {p0, v10, v11, p2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J

    move-result-wide v10

    cmp-long v12, v10, v1

    if-gez v12, :cond_3

    move p1, v4

    goto :goto_2

    .line 208
    :cond_3
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move p1, v6

    :goto_2
    if-eqz v5, :cond_5

    if-nez p1, :cond_5

    cmp-long v0, v8, v1

    if-lez v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 214
    invoke-interface {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->triggerSyncedVibration(J)Z

    move-result v6

    and-int/2addr p1, v6

    :cond_5
    if-eqz p1, :cond_6

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_3
    if-ltz v0, :cond_6

    .line 223
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/Step;

    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    .line 230
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    :cond_7
    if-eqz p1, :cond_8

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_8
    return-wide v8
.end method
