.class public abstract Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "AbstractComposedVibratorStep.java"


# instance fields
.field public final effect:Landroid/os/VibrationEffect$Composed;

.field public final segmentIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p7

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    .line 47
    iput-object p5, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 48
    iput p6, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    return-void
.end method


# virtual methods
.method public nextSteps(I)Ljava/util/List;
    .locals 6

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long/2addr v0, v2

    .line 64
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public nextSteps(JI)Ljava/util/List;
    .locals 9

    .line 75
    iget v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    add-int/2addr v0, p3

    .line 76
    iget-object p3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 77
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-lt v0, p3, :cond_0

    if-ltz v1, :cond_0

    sub-int v2, p3, v1

    sub-int v3, v0, v1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    div-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibrationStats;->reportRepetition(I)V

    sub-int/2addr v0, p3

    .line 83
    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_0
    move v6, v0

    .line 85
    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
