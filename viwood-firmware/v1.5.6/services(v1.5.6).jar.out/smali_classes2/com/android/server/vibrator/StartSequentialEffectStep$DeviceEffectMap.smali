.class public final Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
.super Ljava/lang/Object;
.source "StartSequentialEffectStep.java"


# instance fields
.field public final mRequiredSyncCapabilities:J

.field public final mVibratorEffects:Landroid/util/SparseArray;

.field public final mVibratorIds:[I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V
    .locals 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iget-object p1, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object p1

    .line 265
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 267
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    const/4 v0, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    .locals 5

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iget-object p1, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 280
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 281
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 283
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 288
    :goto_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    iget-object p2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method


# virtual methods
.method public final calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 336
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x4

    if-ge v3, v4, :cond_5

    .line 337
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    .line 338
    instance-of v11, v4, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v11, :cond_0

    :goto_1
    or-long/2addr v0, v9

    goto :goto_2

    .line 340
    :cond_0
    instance-of v11, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v11, :cond_3

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    .line 341
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 342
    instance-of v11, v4, Landroid/os/vibrator/StepSegment;

    if-eqz v11, :cond_1

    or-long/2addr v0, v7

    goto :goto_2

    .line 344
    :cond_1
    instance-of v7, v4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v7, :cond_2

    goto :goto_1

    .line 346
    :cond_2
    instance-of v4, v4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v4, :cond_4

    or-long/2addr v0, v5

    goto :goto_2

    .line 350
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to check sync capabilities to unexpected effect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VibrationThread"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v2, 0x10

    .line 358
    :cond_6
    invoke-virtual {p0, v0, v1, v9, v10}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v2, v2, 0x20

    .line 361
    :cond_7
    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p0

    if-eqz p0, :cond_8

    or-int/lit8 v2, v2, 0x40

    :cond_8
    const-wide/16 p0, 0x1

    or-long/2addr p0, v0

    int-to-long v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public effectAt(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getRequiredSyncCapabilities()J
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    return-object p0
.end method

.method public final requireMixedTriggerCapability(JJ)Z
    .locals 4

    .line 0
    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    not-long p3, p3

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    array-length p0, p0

    return p0
.end method

.method public vibratorIdAt(I)I
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method
