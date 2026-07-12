.class public final Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "PerformVendorEffectVibratorStep.java"


# instance fields
.field public final effect:Landroid/os/VibrationEffect$VendorEffect;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$VendorEffect;J)V
    .locals 7

    .line 42
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    .line 44
    iput-object p5, v0, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;->effect:Landroid/os/VibrationEffect$VendorEffect;

    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 13

    .line 50
    const-string v0, "PerformVendorEffectVibratorStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v0

    .line 53
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v4, p0, Lcom/android/server/vibrator/PerformVendorEffectVibratorStep;->effect:Landroid/os/VibrationEffect$VendorEffect;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/VibrationEffect$VendorEffect;JJ)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    .line 54
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 55
    invoke-virtual {p0, v3, v4}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 56
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/vibrator/VibrationStats;->reportPerformVendorEffect(J)V

    .line 57
    new-instance v5, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    iget-object v6, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v7, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v10, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    invoke-static {v5}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    throw p0
.end method
