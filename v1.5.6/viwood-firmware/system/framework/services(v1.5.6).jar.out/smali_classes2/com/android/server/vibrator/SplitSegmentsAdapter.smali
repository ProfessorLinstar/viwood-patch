.class public final Lcom/android/server/vibrator/SplitSegmentsAdapter;
.super Ljava/lang/Object;
.source "SplitSegmentsAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v3

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v9

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    int-to-long v6, v1

    div-long/2addr v4, v6

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-wide/from16 v16, v6

    move v6, v0

    move v0, v8

    move-wide/from16 v7, v16

    move v13, v3

    :goto_0
    if-ge v0, v1, :cond_0

    add-long/2addr v7, v4

    long-to-float v10, v7

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v11

    long-to-float v11, v11

    div-float/2addr v10, v11

    .line 91
    invoke-static {v3, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v12

    invoke-static {v11, v12, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    .line 94
    new-instance v10, Landroid/os/vibrator/RampSegment;

    long-to-int v15, v4

    move v11, v6

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 98
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    .line 100
    invoke-virtual {v10}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v5, Landroid/os/vibrator/RampSegment;

    move-wide v0, v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v7

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v10, v3

    move v8, v13

    invoke-direct/range {v5 .. v10}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 103
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 6

    const-wide/16 v0, 0x400

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result p0

    if-gtz p0, :cond_1

    :goto_0
    return p3

    .line 53
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 55
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/RampSegment;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/RampSegment;

    .line 59
    invoke-virtual {v2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v4, p0

    sub-int/2addr v4, v3

    div-int/2addr v4, p0

    if-gt v4, v3, :cond_3

    goto :goto_2

    .line 63
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-static {p1, v2, v4}, Lcom/android/server/vibrator/SplitSegmentsAdapter;->splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v4, v4, -0x1

    if-le p3, v1, :cond_4

    add-int/2addr p3, v4

    :cond_4
    add-int/2addr v1, v4

    add-int/2addr v0, v4

    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_5
    return p3
.end method
