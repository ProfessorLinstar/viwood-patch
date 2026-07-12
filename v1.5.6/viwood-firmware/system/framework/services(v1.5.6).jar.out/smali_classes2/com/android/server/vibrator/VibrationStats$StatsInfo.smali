.class public final Lcom/android/server/vibrator/VibrationStats$StatsInfo;
.super Ljava/lang/Object;
.source "VibrationStats.java"


# instance fields
.field public final adaptiveScale:F

.field public final endLatencyMillis:I

.field public final endedBySameUid:Z

.field public final endedByUsage:I

.field public final halComposeCount:I

.field public final halComposePwleCount:I

.field public final halCompositionSize:I

.field public final halOffCount:I

.field public final halOnCount:I

.field public final halPerformCount:I

.field public final halPerformVendorCount:I

.field public final halPwleSize:I

.field public final halSetAmplitudeCount:I

.field public final halSetExternalControlCount:I

.field public final halSupportedCompositionPrimitivesUsed:[I

.field public final halSupportedEffectsUsed:[I

.field public final halUnsupportedCompositionPrimitivesUsed:[I

.field public final halUnsupportedEffectsUsed:[I

.field public final interruptedUsage:I

.field public mIsWritten:Z

.field public final repeatCount:I

.field public final startLatencyMillis:I

.field public final status:I

.field public final totalDurationMillis:I

.field public final uid:I

.field public final usage:I

.field public final vibrationType:I

.field public final vibratorOnMillis:I


# direct methods
.method public constructor <init>(IIILcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationStats;)V
    .locals 6

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 365
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    .line 366
    iput p3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    .line 367
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSession$Status;->getProtoEnumValue()I

    move-result p2

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    .line 368
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmAdaptiveScale(Lcom/android/server/vibrator/VibrationStats;)F

    move-result p2

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    .line 369
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUid(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    .line 370
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    .line 371
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmInterruptedUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    .line 372
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmRepeatCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 380
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    .line 381
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    .line 382
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnTotalDurationMillis(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    .line 384
    invoke-virtual {p5}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmStartUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v0

    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 387
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 388
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 389
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    goto :goto_1

    .line 391
    :cond_1
    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 394
    :goto_1
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    .line 395
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposePwleCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    .line 396
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    .line 397
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOffCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    .line 398
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPerformCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    .line 399
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPerformVendorCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    .line 400
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetAmplitudeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    .line 401
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetExternalControlCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    .line 402
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationCompositionTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    .line 403
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationPwleTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    .line 404
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 405
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    .line 406
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 407
    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    .line 408
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 409
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    .line 410
    invoke-static {p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 411
    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    return-void
.end method

.method public static filteredKeys(Landroid/util/SparseBooleanArray;Z)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 439
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 440
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 446
    :cond_2
    new-array v1, v2, [I

    move v2, v0

    .line 447
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 448
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 449
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static findVibrationType(Landroid/os/CombinedVibration;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    .line 469
    :cond_1
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public isWritten()Z
    .locals 0

    .line 416
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    return p0
.end method

.method public writeVibrationReported()V
    .locals 35

    move-object/from16 v0, p0

    .line 420
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    if-eqz v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing same vibration stats multiple times for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibrationStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .line 423
    iput-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    .line 425
    iget v3, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    iget v5, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    iget v6, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    iget v7, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    iget-boolean v8, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    iget v9, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    iget v10, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    iget v11, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    int-to-long v12, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    int-to-long v14, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    int-to-long v1, v1

    iget v4, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    move-wide/from16 v16, v1

    int-to-long v1, v4

    iget v4, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    iget v2, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    move/from16 v25, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    move-object/from16 v30, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    move/from16 v32, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    iget v0, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    move/from16 v22, v2

    const/16 v2, 0x1e7

    move/from16 v20, v4

    const/4 v4, 0x0

    move/from16 v34, v0

    move/from16 v33, v1

    invoke-static/range {v2 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IIIZIIIJJJJIIIIIII[I[I[I[IIIFI)V

    return-void
.end method
