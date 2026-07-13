.class public final Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "ComposePrimitivesVibratorStep.java"


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 0

    .line 47
    invoke-static {p2, p3, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 10

    .line 54
    const-string v0, "ComposePrimitivesStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    move-result v0

    .line 59
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "VibrationThread"

    if-eqz v3, :cond_1

    .line 63
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring wrong segment for a ComposePrimitivesStep: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 64
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 69
    :cond_1
    :try_start_2
    sget-boolean v3, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compose "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " primitives on vibrator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Landroid/os/vibrator/PrimitiveSegment;

    .line 76
    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v3

    .line 77
    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide v3

    .line 78
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 79
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/server/vibrator/VibrationStats;->reportComposePrimitives(J[Landroid/os/vibrator/PrimitiveSegment;)V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    throw p0
.end method

.method public final unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 4

    .line 103
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 107
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p3, :cond_1

    if-ne p2, v0, :cond_0

    if-ltz v1, :cond_1

    move p2, v1

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 117
    instance-of v3, v2, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v3, :cond_1

    .line 118
    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
