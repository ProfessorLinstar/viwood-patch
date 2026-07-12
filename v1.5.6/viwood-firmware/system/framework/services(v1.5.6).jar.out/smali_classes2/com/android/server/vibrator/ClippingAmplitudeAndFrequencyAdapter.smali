.class public final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "ClippingAmplitudeAndFrequencyAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 4

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 43
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v3, :cond_0

    .line 44
    check-cast v2, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->adaptToVibrator(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public final adaptToVibrator(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Landroid/os/vibrator/RampSegment;
    .locals 7

    .line 51
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 52
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v5

    .line 53
    new-instance v1, Landroid/os/vibrator/RampSegment;

    .line 54
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v2

    .line 55
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v3

    .line 58
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide p0

    long-to-int v6, p0

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v1
.end method

.method public final clampAmplitude(Landroid/os/VibratorInfo;FF)F
    .locals 0

    .line 70
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return p3

    .line 76
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitude(F)F

    move-result p0

    invoke-static {p3, p0}, Landroid/util/MathUtils;->min(FF)F

    move-result p0

    return p0
.end method

.method public final clampFrequency(Landroid/os/VibratorInfo;F)F
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object p0

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0
.end method
