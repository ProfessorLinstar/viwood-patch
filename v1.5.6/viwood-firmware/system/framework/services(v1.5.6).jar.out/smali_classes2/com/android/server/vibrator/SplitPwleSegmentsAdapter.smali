.class public final Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;
.super Ljava/lang/Object;
.source "SplitPwleSegmentsAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static splitPwleSegment(Landroid/os/vibrator/PwleSegment;I)Ljava/util/List;
    .locals 20

    move/from16 v0, p1

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v7

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v3

    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v5

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    move v13, v2

    move v11, v5

    :goto_0
    if-ge v6, v0, :cond_0

    add-long/2addr v8, v3

    long-to-float v5, v8

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v14

    long-to-float v10, v14

    div-float/2addr v5, v10

    .line 91
    invoke-static {v2, v7, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v10

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v12

    .line 92
    invoke-static {v10, v12, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    .line 94
    new-instance v10, Landroid/os/vibrator/PwleSegment;

    long-to-int v5, v3

    move/from16 v17, v2

    move-wide/from16 v18, v3

    int-to-long v2, v5

    move-wide v15, v2

    invoke-direct/range {v10 .. v16}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 98
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v10}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v11

    .line 100
    invoke-virtual {v10}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v13

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    move-wide/from16 v3, v18

    goto :goto_0

    :cond_0
    move v4, v11

    move v6, v13

    .line 103
    new-instance v3, Landroid/os/vibrator/PwleSegment;

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v5

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v10

    sub-long/2addr v10, v8

    long-to-int v0, v10

    int-to-long v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 6

    const-wide/16 v0, 0x1000

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectDurationMillis()I

    move-result p0

    if-gtz p0, :cond_1

    :goto_0
    return p3

    .line 55
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    .line 57
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/vibrator/PwleSegment;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    check-cast v1, Landroid/os/vibrator/PwleSegment;

    .line 60
    invoke-virtual {v1}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v4

    long-to-int v2, v4

    add-int/2addr v2, p0

    sub-int/2addr v2, v3

    div-int/2addr v2, p0

    if-gt v2, v3, :cond_2

    goto :goto_2

    .line 64
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    invoke-static {v1, v2}, Lcom/android/server/vibrator/SplitPwleSegmentsAdapter;->splitPwleSegment(Landroid/os/vibrator/PwleSegment;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v2, v2, -0x1

    if-le p3, v0, :cond_3

    add-int/2addr p3, v2

    :cond_3
    add-int/2addr v0, v2

    add-int/2addr p1, v2

    :cond_4
    :goto_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_5
    return p3
.end method
