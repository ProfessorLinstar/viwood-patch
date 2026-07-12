.class public final Lcom/android/server/vibrator/ComposePwleV2VibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "ComposePwleV2VibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 44
    invoke-static {p2, p3, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public final isBetterBreakPosition(Ljava/util/List;FI)Z
    .locals 3

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/PwlePoint;

    .line 144
    invoke-virtual {p0}, Landroid/os/vibrator/PwlePoint;->getAmplitude()F

    move-result p0

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, p3, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_1

    return v0

    .line 155
    :cond_1
    div-int/lit8 p3, p3, 0x2

    if-ge p1, p3, :cond_2

    return v1

    :cond_2
    cmpg-float p0, p0, p2

    if-gtz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public play()Ljava/util/List;
    .locals 10

    .line 56
    const-string v0, "ComposePwleV2Step"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectSize()I

    move-result v0

    .line 61
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;->unrollPwleSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "VibrationThread"

    if-eqz v3, :cond_0

    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring wrong segment for a ComposeEnvelopeStep: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 65
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 70
    :cond_0
    :try_start_2
    sget-boolean v3, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compose "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " PWLEs on vibrator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 72
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/vibrator/PwlePoint;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Landroid/os/vibrator/PwlePoint;

    .line 75
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v3

    .line 76
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide v3

    .line 77
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 78
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/server/vibrator/VibrationStats;->reportComposePwle(J[Landroid/os/vibrator/PwlePoint;)V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    throw p0
.end method

.method public final unrollPwleSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 11

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, p3

    .line 98
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-gt v5, p3, :cond_3

    if-ne p2, v1, :cond_0

    if-ltz v2, :cond_3

    move p2, v2

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 108
    instance-of v7, v5, Landroid/os/vibrator/PwleSegment;

    if-eqz v7, :cond_3

    check-cast v5, Landroid/os/vibrator/PwleSegment;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    new-instance v7, Landroid/os/vibrator/PwlePoint;

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v8

    .line 114
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v9

    invoke-direct {v7, v8, v9, v6}, Landroid/os/vibrator/PwlePoint;-><init>(FFI)V

    .line 113
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    new-instance v6, Landroid/os/vibrator/PwlePoint;

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v7

    .line 117
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v8

    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {v6, v7, v8, v9}, Landroid/os/vibrator/PwlePoint;-><init>(FFI)V

    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;->isBetterBreakPosition(Ljava/util/List;FI)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {v5}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v3

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p3, :cond_4

    .line 132
    invoke-interface {v0, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method
