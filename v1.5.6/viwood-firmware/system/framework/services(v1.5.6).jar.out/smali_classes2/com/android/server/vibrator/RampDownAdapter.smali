.class public final Lcom/android/server/vibrator/RampDownAdapter;
.super Ljava/lang/Object;
.source "RampDownAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mRampDownDuration:I

.field public final mStepDuration:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    .line 51
    iput p2, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    return-void
.end method

.method public static createRampDown(FFJ)Landroid/os/vibrator/RampSegment;
    .locals 6

    .line 208
    new-instance v0, Landroid/os/vibrator/RampSegment;

    const/4 v2, 0x0

    long-to-int v5, p2

    move v4, p1

    move v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v0
.end method

.method public static endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 4

    .line 239
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 240
    check-cast p0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v3

    .line 241
    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_2

    .line 242
    check-cast p0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public static isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .locals 4

    .line 227
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 228
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 229
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 230
    :cond_1
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_2

    .line 231
    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 232
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 6

    .line 214
    instance-of v0, p0, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_0

    .line 215
    check-cast p0, Landroid/os/vibrator/RampSegment;

    .line 216
    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    .line 217
    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {p0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    long-to-int v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v0

    .line 218
    :cond_0
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_1

    .line 219
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 220
    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result p0

    long-to-int p1, p1

    invoke-direct {v0, v1, p0, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 0

    .line 57
    iget p1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    if-gtz p1, :cond_0

    return p3

    .line 61
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I

    move-result p1

    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/RampDownAdapter;->addRampDownToLoop(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final addRampDownToLoop(Ljava/util/List;I)I
    .locals 7

    if-gez p2, :cond_0

    goto/16 :goto_0

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 163
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 164
    invoke-virtual {v1}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v2

    .line 166
    iget v4, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    int-to-long v4, v4

    sub-long v4, v2, v4

    .line 172
    invoke-static {v1, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget v4, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;->updateDuration(Landroid/os/vibrator/VibrationEffectSegment;J)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 178
    instance-of v1, v0, Landroid/os/vibrator/StepSegment;

    if-eqz v1, :cond_3

    .line 179
    check-cast v0, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v1

    .line 180
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    .line 181
    iget v4, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v4, v4

    .line 182
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 181
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return p2

    .line 183
    :cond_3
    instance-of v1, v0, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_4

    .line 184
    check-cast v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    .line 185
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v0

    .line 186
    iget p0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v4, p0

    .line 187
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 186
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return p2
.end method

.method public final addRampDownToZeroAmplitudeSegments(Ljava/util/List;I)I
    .locals 12

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    add-int/lit8 v3, v2, -0x1

    .line 82
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v4}, Lcom/android/server/vibrator/RampDownAdapter;->isOffSegment(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    invoke-static {v3}, Lcom/android/server/vibrator/RampDownAdapter;->endsWithNonZeroAmplitude(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 89
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v4

    .line 91
    instance-of v6, v3, Landroid/os/vibrator/StepSegment;

    if-eqz v6, :cond_1

    .line 92
    check-cast v3, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v6

    .line 93
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    .line 96
    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;->createStepsDown(FFJ)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 97
    :cond_1
    instance-of v6, v3, Landroid/os/vibrator/RampSegment;

    if-eqz v6, :cond_3

    .line 98
    check-cast v3, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v3}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    .line 99
    invoke-virtual {v3}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v3

    .line 101
    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v8, v7

    cmp-long v8, v4, v8

    const/4 v9, 0x0

    if-gtz v8, :cond_2

    .line 104
    new-array v7, v1, [Landroid/os/vibrator/VibrationEffectSegment;

    .line 105
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    aput-object v3, v7, v9

    .line 104
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    .line 109
    new-array v8, v8, [Landroid/os/vibrator/VibrationEffectSegment;

    int-to-long v10, v7

    .line 110
    invoke-static {v6, v3, v10, v11}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v6

    aput-object v6, v8, v9

    iget v6, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    .line 111
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/vibrator/RampDownAdapter;->createRampDown(FFJ)Landroid/os/vibrator/RampSegment;

    move-result-object v3

    aput-object v3, v8, v1

    .line 109
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 119
    invoke-interface {p1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-lt p2, v2, :cond_5

    if-ne p2, v2, :cond_4

    .line 124
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/2addr p2, v4

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v4

    :cond_6
    :goto_2
    add-int/2addr v2, v1

    goto/16 :goto_0

    :cond_7
    return p2
.end method

.method public final createStepsDown(FFJ)Ljava/util/List;
    .locals 8

    .line 196
    iget v0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mRampDownDuration:I

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    div-float v1, p1, v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 200
    new-instance v5, Landroid/os/vibrator/StepSegment;

    int-to-float v6, v4

    mul-float/2addr v6, v1

    sub-float v6, p1, v6

    iget v7, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    invoke-direct {v5, v6, p2, v7}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-int p1, p3

    .line 202
    iget p0, p0, Lcom/android/server/vibrator/RampDownAdapter;->mStepDuration:I

    sub-int/2addr v0, v3

    mul-int/2addr p0, v0

    sub-int/2addr p1, p0

    .line 203
    new-instance p0, Landroid/os/vibrator/StepSegment;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
