.class public final Lcom/android/server/vibrator/PrimitiveDelayAdapter;
.super Ljava/lang/Object;
.source "PrimitiveDelayAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I
    .locals 4

    .line 99
    invoke-virtual {p1, p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-int p0, v0

    .line 105
    instance-of v0, p1, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/vibrator/PrimitiveSegment;

    .line 107
    invoke-virtual {p1}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p1

    sub-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public static calculatePause(Landroid/os/vibrator/PrimitiveSegment;I)I
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    return p0
.end method

.method public static toPrimitiveWithPause(Landroid/os/vibrator/PrimitiveSegment;I)Landroid/os/vibrator/PrimitiveSegment;
    .locals 3

    .line 113
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-object v0
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 6

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_5

    .line 51
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    if-ne v1, p3, :cond_0

    move v2, v0

    .line 57
    :cond_0
    instance-of v4, v3, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrimitiveSegment;

    .line 58
    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    invoke-static {v4, v2}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculatePause(Landroid/os/vibrator/PrimitiveSegment;I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 66
    invoke-static {v4, v2}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->toPrimitiveWithPause(Landroid/os/vibrator/PrimitiveSegment;I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1, v4}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I

    move-result v2

    :goto_1
    neg-int v2, v2

    goto :goto_3

    .line 71
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-le p3, v1, :cond_3

    add-int/lit8 p3, p3, -0x1

    :cond_3
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    invoke-static {p1, v3}, Lcom/android/server/vibrator/PrimitiveDelayAdapter;->calculateEffectDuration(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)I

    move-result v2

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p3
.end method
