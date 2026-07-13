.class public final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "PerformPrebakedVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 42
    invoke-static {p2, p3, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 13

    .line 49
    const-string v0, "PerformPrebakedVibratorStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 52
    instance-of v3, v0, Landroid/os/vibrator/PrebakedSegment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const-string v5, "VibrationThread"

    if-nez v3, :cond_0

    .line 53
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_0

    .line 59
    :cond_0
    :try_start_2
    move-object v7, v0

    check-cast v7, Landroid/os/vibrator/PrebakedSegment;

    .line 60
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Perform "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v7}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    .line 61
    invoke-static {v6}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " on vibrator "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 63
    invoke-virtual {v6}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/VibratorInfo;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/vibrator/HalVibration;->getFallback(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 67
    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v6

    move v8, v6

    .line 68
    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v11, v8

    move-wide v8, v9

    move-wide v10, v11

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/vibrator/PrebakedSegment;JJ)J

    move-result-wide v8

    .line 69
    invoke-virtual {p0, v8, v9}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 70
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6, v8, v9, v7}, Lcom/android/server/vibrator/VibrationStats;->reportPerformEffect(JLandroid/os/vibrator/PrebakedSegment;)V

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    .line 72
    invoke-virtual {v7}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v6, :cond_3

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing fallback for effect "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v7}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    invoke-static {v4}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v3

    .line 78
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v7

    iget v8, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-wide v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 78
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 89
    :cond_3
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    throw p0
.end method

.method public final replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .locals 4

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 103
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 105
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    if-ge v2, p0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr v1, p0

    .line 108
    :cond_0
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p0
.end method
